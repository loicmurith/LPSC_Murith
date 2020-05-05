/*
 * main.c
 *
 *  Created on: 11 févr. 2019
 *      Author: Joachim Schmidt
 */

#include <stdio.h>
#include <stdint.h>
#include "xparameters.h"
#include "xgpio.h"

#define C_INTERRUPT_REG_PORT     0x00
#define C_INTERRUPT_REG_PORT_SET 0x04
#define C_INTERRUPT_REG_PORT_CLR 0x08
#define C_FLAG_COLOR1_REG_PORT   0x0C
#define C_FLAG_COLOR2_REG_PORT   0x10
#define C_FLAG_COLOR3_REG_PORT   0x14

int main(void)
{
	int status;
	uint32_t flag_color1;
	uint32_t flag_color1_a;

	// GPIO Controller
	XGpio gpio_inst;

	// Set the Leds on
	status = XGpio_Initialize(&gpio_inst, XPAR_AXI_GPIO_0_DEVICE_ID);
	if(status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// Set all outputs
	XGpio_SetDataDirection(&gpio_inst, 1, 0x00);

	// Set Leds value
	XGpio_DiscreteWrite(&gpio_inst, 1, 0xaa);

	flag_color1 = Xil_In32(XPAR_MANDELBROT_REG_BANK_BASEADDR + C_FLAG_COLOR1_REG_PORT);
	xil_printf("Flag color 1 : %d\r\n", flag_color1);
	Xil_Out32(XPAR_MANDELBROT_REG_BANK_BASEADDR + C_FLAG_COLOR1_REG_PORT, 0x000000ff);
	flag_color1_a = Xil_In32(XPAR_MANDELBROT_REG_BANK_BASEADDR + C_FLAG_COLOR1_REG_PORT);
	xil_printf("Flag color 1 a : %d\r\n", flag_color1_a);

	while(1){}

	return 0;
}
