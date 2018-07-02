#pragma once

#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_exti.h"


static void
led_init() {
	LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);

	//setting all leds from display

        LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);


        LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_4, LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_5, LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_6, LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_7, LL_GPIO_MODE_OUTPUT);
}


uint32_t display_digits[10] = {0b01111110, 0b00001100, 0b10110110, 0b10011110, 0b11001100, 0b11011010, 0b11111010, 0b00001110, 0b11111110, 0b11011110}; //last bit is PA0, than PA1...
uint32_t display_symbols[2] = {0b11000110, 0b01110010}; //symbols degrees
uint32_t display_portC[4] = {0b11110111, 0b11111011, 0b1111101, 0b11111110};//active pin

int display_positionNumber;
int display_tick_latency, display_tick_delay, display_tick_pulsetion;
int display_mode = 1;

static void
led_time(int NeedTemperature, int CurrentTemperature) {
	display_tick_latency++;
	if (display_tick_latency == 1) {
		if (display_mode)
		{
			LL_GPIO_WriteOutputPort(GPIOC, display_portC[display_positionNumber]);
			if (display_positionNumber == 0) LL_GPIO_WriteOutputPort(GPIOA, display_symbols[1]);
			if (display_positionNumber == 1) LL_GPIO_WriteOutputPort(GPIOA, display_symbols[0]);
			if (display_positionNumber == 2) LL_GPIO_WriteOutputPort(GPIOA, display_digits[CurrentTemperature%10]);
			if (display_positionNumber == 3) LL_GPIO_WriteOutputPort(GPIOA, display_digits[CurrentTemperature/10%10]);
		}
		else
		{
			if (display_tick_pulsetion <= 125)
			{	
				LL_GPIO_WriteOutputPort(GPIOC, display_portC[display_positionNumber]);
				if (display_positionNumber == 0) LL_GPIO_WriteOutputPort(GPIOA, display_symbols[1]);
				if (display_positionNumber == 1) LL_GPIO_WriteOutputPort(GPIOA, display_symbols[0]);
				if (display_positionNumber == 2) LL_GPIO_WriteOutputPort(GPIOA, display_digits[NeedTemperature%10]);
				if (display_positionNumber == 3) LL_GPIO_WriteOutputPort(GPIOA, display_digits[NeedTemperature/10%10]);
			}
			if (display_tick_pulsetion > 125)
			{
				LL_GPIO_WriteOutputPort(GPIOC, 0b11111111);
				if (display_tick_pulsetion == 200) display_tick_pulsetion = 0;
			}
			display_tick_delay++;
			display_tick_pulsetion++;
			if (display_tick_delay == 5000) { display_mode = 1; display_tick_delay = 0; }
		}
		
		display_positionNumber++;
		if (display_positionNumber == 4) display_positionNumber = 0;
		display_tick_latency = 0;
	}
}

static int
led_button(int NeedTemperature, int CurrentTemperature, int TypeButton) {
	if (TypeButton == 1)
	{
		if (display_mode == 1)
		{
			NeedTemperature = CurrentTemperature;
			display_mode = 0;
		}
		else
		{
			display_tick_delay = 0;
			if (NeedTemperature < 40) NeedTemperature++;
		}
		
	}
	else
	{
		if (display_mode == 1)
		{
			NeedTemperature = CurrentTemperature;
			display_mode = 0;
		}
		else
		{
			display_tick_delay = 0;
			if (NeedTemperature > 10) NeedTemperature--;
		}
	}
	return NeedTemperature;
}
