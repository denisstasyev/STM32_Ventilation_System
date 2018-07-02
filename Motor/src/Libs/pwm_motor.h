#pragma once

#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_tim.h"

static LL_TIM_OC_InitTypeDef
pwm_motor_init(GPIO_TypeDef *GPIOx, uint32_t Pin, TIM_TypeDef *TIMx, uint32_t Periphs, uint32_t Channel, int type) {
	LL_TIM_OC_InitTypeDef motor_OC_s;
	if (type) { 
		LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
	}
	else {
		LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
	}
	LL_APB1_GRP1_EnableClock(Periphs);//Periphs = LL_APB1_GRP1_PERIPH_TIM3, Channel = LL_TIM_CHANNEL_CH4, TIMx = TIM3, Pin = 9, GPIOx = GPIOC

	LL_GPIO_SetPinMode(GPIOx, Pin, LL_GPIO_MODE_ALTERNATE);
	LL_GPIO_SetPinPull(GPIOx, Pin, LL_GPIO_PULL_DOWN);

	// Configure Time Base Unit
	const uint32_t PWM_FREQ = 100;
	const uint32_t TIM_CLOCK_FREQ = 10000;
	LL_TIM_InitTypeDef TIM_s;
	LL_TIM_StructInit(&TIM_s); //???
	TIM_s.ClockDivision = LL_TIM_CLOCKDIVISION_DIV1;
	TIM_s.Prescaler = __LL_TIM_CALC_PSC(SystemCoreClock, TIM_CLOCK_FREQ); //= SystemCoreClock / TIM_CLOCK_FREQ = 4800
	TIM_s.Autoreload = __LL_TIM_CALC_ARR(SystemCoreClock, TIM_s.Prescaler, PWM_FREQ); //= SystemCoreClock / (TIM_s.Prescaler * PWM_FREQ) = 48
	TIM_s.CounterMode = LL_TIM_COUNTERMODE_UP;
	LL_TIM_Init(TIMx, &TIM_s); ///////////

	//Configure Output Compare Unit
	//LL_TIM_OC_InitTypeDef OC_s;
	LL_TIM_OC_StructInit(&motor_OC_s);
	motor_OC_s.OCMode = LL_TIM_OCMODE_PWM1;
	motor_OC_s.OCState = LL_TIM_OCSTATE_ENABLE;
	motor_OC_s.OCPolarity = LL_TIM_OCPOLARITY_HIGH;
	motor_OC_s.CompareValue = 0;//( (LL_TIM_GetAutoReload(TIM3) + 1 ) / 2);
	LL_TIM_OC_Init(TIMx, Channel, &motor_OC_s);

	LL_TIM_EnableCounter(TIMx);


	return motor_OC_s;
}


static void
pwm_motor_set(LL_TIM_OC_InitTypeDef motor_OC_s, TIM_TypeDef *TIMx, uint32_t Channel, int Percentage) {
	motor_OC_s.CompareValue = ( (LL_TIM_GetAutoReload(TIM3) + 1) / 100 * Percentage);
	LL_TIM_OC_Init(TIM3, Channel, &motor_OC_s);
	LL_TIM_EnableCounter(TIM3);
}
