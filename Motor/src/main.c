#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_tim.h"

#include "Libs/logic.h"
#include "Libs/leds.h"
#include "Libs/pwm_motor.h"
#include "Libs/pwm_serv.h"


/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */


elemRoom buf[3];
Elem2 percentage;

LL_TIM_OC_InitTypeDef motor_pwm1;
LL_TIM_OC_InitTypeDef motor_pwm2;


static void
rcc_init() {
        /* Set FLASH latency */
        LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

        /* Enable HSI and wait for activation*/
        LL_RCC_HSI_Enable();
        while (LL_RCC_HSI_IsReady() != 1);

        /* Main PLL configuration and activation */
        LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                    LL_RCC_PLL_MUL_12);

        LL_RCC_PLL_Enable();
        while (LL_RCC_PLL_IsReady() != 1);

        /* Sysclk activation on the main PLL */
        LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
        LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
        while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

        /* Set APB1 prescaler */
        LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

        /* Set systick to 1ms */
        SysTick_Config(48000000/1000);

        /* Update CMSIS variable (which can be updated also
         * through SystemCoreClockUpdate function) */
        SystemCoreClock = 48000000;
}


void
NMI_Handler(void) {
}

void
HardFault_Handler(void) {
        while (1);
}

void
SVC_Handler(void) {
}

void
PendSV_Handler(void) {
}

int perc;
int tick;

void
SysTick_Handler(void) {
	if (tick == 100) {
		percentage = logic_motor(buf, 3);
		pwm_motor_set(motor_pwm1, TIM2, LL_TIM_CHANNEL_CH2, percentage.perc1);
		pwm_motor_set(motor_pwm2, TIM3, LL_TIM_CHANNEL_CH3, percentage.perc2);
		tick = 0;
	}
	tick++;
}





int
main(void) {
        rcc_init();
	
	/* 
	 * For settings motors: 1 - for cold; 2 - for heat
	*/
	//motor_pwm1 = pwm_motor_init(GPIOC, LL_GPIO_PIN_7, TIM3, LL_APB1_GRP1_PERIPH_TIM3, LL_TIM_CHANNEL_CH2);
	//motor_pwm2 = pwm_motor_init(GPIOC, LL_GPIO_PIN_8, TIM3, LL_APB1_GRP1_PERIPH_TIM3, LL_TIM_CHANNEL_CH3);


	/* 
	 * For settings servs: 1 - for cold; 2 - for heat
	*/
	//motor_pwm1 = pwm_motor_init(GPIOB, LL_GPIO_PIN_3, TIM2, LL_APB1_GRP1_PERIPH_TIM2, LL_TIM_CHANNEL_CH2, 0);//C7->A8
	motor_pwm1 = pwm_motor_init(GPIOC, LL_GPIO_PIN_7, TIM3, LL_APB1_GRP1_PERIPH_TIM3, LL_TIM_CHANNEL_CH2, 1);
	motor_pwm2 = pwm_motor_init(GPIOC, LL_GPIO_PIN_8, TIM3, LL_APB1_GRP1_PERIPH_TIM3, LL_TIM_CHANNEL_CH3, 1);

	buf[0].currentTemp = 26; buf[0].needTemp = 34; 
	buf[1].currentTemp = 26; buf[1].needTemp = 18; 
	buf[2].currentTemp = 26; buf[2].needTemp = 26; 
        /*
         * Setting USER LED PC8 and PC9
         */
        //LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
        //LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
        //LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);

        while (1)

        return 0;
}
