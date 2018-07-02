#pragma once

#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_tim.h"

typedef struct {
	int currentTemp;
	int needTemp;

} elemRoom;

typedef struct {
	int perc1;
	int perc2;
} Elem2;

static Elem2 
logic_serv(int NeedTemperature, int CurrentTemperature) {
	Elem2 values;
	if (CurrentTemperature - NeedTemperature == 0) { values.perc1 = 0; values.perc2 = 0; }
	if (CurrentTemperature - NeedTemperature > 0 && CurrentTemperature - NeedTemperature <= 5) { values.perc1 = 10; values.perc2 = 0; }
	if (CurrentTemperature - NeedTemperature > 5 && CurrentTemperature - NeedTemperature <= 10) { values.perc1 = 30; values.perc2 = 0; } 
	if (CurrentTemperature - NeedTemperature > 10) { values.perc1 = 50; values.perc2 = 0; }
	if (NeedTemperature - CurrentTemperature > 0 && NeedTemperature - CurrentTemperature <= 5) { values.perc1 = 0; values.perc2 = 10; }
	if (NeedTemperature - CurrentTemperature > 5 && NeedTemperature - CurrentTemperature <= 10) { values.perc1 = 0; values.perc2 = 30; }
	if (NeedTemperature - CurrentTemperature > 10) { values.perc1 = 0; values.perc2 = 50; }
	return values;
}

static Elem2
logic_motor(elemRoom* buf, int size) {
	Elem2 values;
	int delta, summ1, summ2; 
	int i;
	for (i = 0; i < size; i++)
	{
		delta = (*buf).currentTemp - (*buf).needTemp;
		if (delta > 0) summ1+=delta;
		if (delta < 0) summ2-=delta;
		buf++;
	}
	double middle1 = summ1 * 1.0 / size;
	double middle2 = summ2 * 1.0 / size;
	//middle1 = 0; middle2 = 0;
	values.perc1 = 0; values.perc2 = 0;
	if (middle1 > 0 && middle1 <= 2) { values.perc1 = 30; }
	if (middle1 > 2 && middle1 <= 5) { values.perc1 = 50; }
	if (middle1 > 5 && middle1 <= 8) { values.perc1 = 70; }
	if (middle1 > 8) { values.perc1 = 90; }
	if (middle2 > 0 && middle2 <= 2) { values.perc2 = 30; }
	if (middle2 > 2 && middle2 <= 5) { values.perc2 = 50; }
	if (middle2 > 5 && middle2 <= 8) { values.perc2 = 70; }
	if (middle2 > 8) { values.perc2 = 90; }
	
	return values;
}
