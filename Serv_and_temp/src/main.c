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


uint32_t temperature_current;
uint32_t temperature_need;
Elem2 percentage;

LL_TIM_OC_InitTypeDef motor_pwm1;
LL_TIM_OC_InitTypeDef motor_pwm2;
LL_TIM_OC_InitTypeDef serv_pwm1;
LL_TIM_OC_InitTypeDef serv_pwm2;

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

static void
exti_init(void) {
        /*
         * Setting PIN B0
         */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);
        LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_0, LL_GPIO_PULL_DOWN); //если питаем снаружи +5в к кнопке, то подтяжка к земле

	/*
         * Setting PIN B1
         */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB); ////
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_1, LL_GPIO_MODE_INPUT);
        LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_1, LL_GPIO_PULL_DOWN);

        /*
         * Setting EXTI0
         */
        LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);
        LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTB, LL_SYSCFG_EXTI_LINE0);
        LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);
        LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);

	/*
         * Setting EXTI1
         */
        LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTB, LL_SYSCFG_EXTI_LINE1);
        LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_1);
        LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_1);

        /*
         * Setting interrupts
         */
        NVIC_EnableIRQ(EXTI0_1_IRQn);
        NVIC_SetPriority(EXTI0_1_IRQn, 0);

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
int tick2;
int pr;
int type = 0;
void
SysTick_Handler(void) {
	led_time(temperature_need, temperature_current);
	if (tick == 100) {
		percentage = logic_serv(temperature_need, temperature_current);
		pwm_serv_set(serv_pwm1, TIM3, LL_TIM_CHANNEL_CH2, percentage.perc1);
		pwm_serv_set(serv_pwm2, TIM3, LL_TIM_CHANNEL_CH3, percentage.perc2);
		tick = 0;
	}
	tick++;
	/*if (tick2 == 100) {
		if (type == 0) { pwm_serv_set(serv_pwm1, TIM3, LL_TIM_CHANNEL_CH4, perc++); }
		else pwm_serv_set(serv_pwm1, TIM3, LL_TIM_CHANNEL_CH4, perc--);
		tick2=0;
	}
	if (perc == 101) type=1;
	if (perc == -1) type=0;
	tick2++;*/
}

/*
 * Button interrupt handler
 */
void EXTI0_1_IRQHandler(void) {
	if (LL_EXTI_IsActiveFlag_0_31(LL_EXTI_LINE_0))
	{
		temperature_need = led_button(temperature_need, temperature_current, 1);
		LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
	}
	if (LL_EXTI_IsActiveFlag_0_31(LL_EXTI_LINE_1))
	{
		temperature_need = led_button(temperature_need, temperature_current, 0);
		LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
	}
	
}



int
main(void) {
	temperature_current = 26;
        rcc_init();
        exti_init();
	led_init();
	
	/* 
	 * For settings motors: 1 - for cold; 2 - for heat
	*/
	//motor_pwm1 = pwm_motor_init(GPIOC, LL_GPIO_PIN_7, TIM3, LL_APB1_GRP1_PERIPH_TIM3, LL_TIM_CHANNEL_CH2);
	//motor_pwm2 = pwm_motor_init(GPIOC, LL_GPIO_PIN_8, TIM3, LL_APB1_GRP1_PERIPH_TIM3, LL_TIM_CHANNEL_CH3);


	/* 
	 * For settings servs: 1 - for cold; 2 - for heat
	*/
	serv_pwm1 = pwm_serv_init(GPIOC, LL_GPIO_PIN_7, TIM3, LL_APB1_GRP1_PERIPH_TIM3, LL_TIM_CHANNEL_CH2);//C7->A8
	serv_pwm2 = pwm_serv_init(GPIOC, LL_GPIO_PIN_8, TIM3, LL_APB1_GRP1_PERIPH_TIM3, LL_TIM_CHANNEL_CH3);

        /*
         * Setting USER LED PC8 and PC9
         */
        //LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
        //LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
        //LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);

        while (1)

        return 0;
}
