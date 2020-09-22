/* Copyright 2019 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#include "tensorflow/lite/micro/examples/hello_world/output_handler.h"
//#include "tensorflow/lite/micro/tools/make/downloads/raptor/raptor.h"
//#include "raptor.h"

// Raptor begin
// base addrs
#ifndef NULL
    #define NULL 0
#endif
#define INVALID_ADDR NULL

#define     APB_BASE_ADDR_0             0x0fa00000
#define     CLK_CTRL_BASE_ADDR_0        0x13880000
#define     I2C_BASE_ADDR_0             0x40100000
#define     UART_BASE_ADDR_0            0x40200000
#define     UART_BASE_ADDR_1            0x40300000
#define     APB_SPI_BASE_ADDR_0         0x40400000
#define     PWM_BASE_ADDR_0             0x40500000
#define     PWM_BASE_ADDR_1             0x40600000
#define     ADC_BASE_ADDR_0             0x40700000
#define     ADC_BASE_ADDR_1             0x40800000
#define     DAC_BASE_ADDR_0             0x40900000
#define     COMPARATOR_BASE_ADDR_0      0x40a00000
#define     AHB_SPI_BASE_ADDR_1         0x70000000
#define     AHB_GPIO_BASE_ADDR_0        0x80000000

#define     APB_GPIO_BASE_ADDR_0		INVALID_ADDR

#define     TIMER_BASE_ADDR_0      		INVALID_ADDR

#define     BG_BASE_ADDR_0				INVALID_ADDR

#define     DBGIO_BASE_ADDR_0           0x24000000


// gpioregs
#ifndef GPIO_REGS_H
#define GPIO_REGS_H

#include <stdint.h>
#include "base_addr.h"

#define     GPIO_DATA_REG           0x00000000
#define     GPIO_DIR_REG            0x00000004

#if APB_GPIO_BASE_ADDR_0 != INVALID_ADDR
    #define GPIO_BASE_ADDR APB_GPIO_BASE_ADDR_0
#else
    #define GPIO_BASE_ADDR AHB_GPIO_BASE_ADDR_0
#endif

#endif

#define reg_gpio_data (*(volatile uint32_t*) (GPIO_BASE_ADDR + GPIO_DATA_REG))
#define reg_gpio_dir (*(volatile uint32_t*) (GPIO_BASE_ADDR + GPIO_DIR_REG))

// gpio_drv.c

void gpio_write(unsigned int data){
//    *GPIO_DATA = data;
    reg_gpio_data = data;
}

// Raptor end

void HandleOutput(tflite::ErrorReporter* error_reporter, float x_value,
                  float y_value) {
    // Log the current X and Y values
    TF_LITE_REPORT_ERROR(error_reporter, "x_value: %f, y_value: %f\n",
                       static_cast<double>(x_value),
                       static_cast<double>(y_value));

    int j, x;

    reg_gpio_dir = 0x0000;
    reg_gpio_data = 0x000f;

    for (j = 0; j < 70000; j++);

    x = 0x0000;
    gpio_write(x);
    for (int j = 0; j < 70000; j++);

    x = 0x0001;
    gpio_write(x);
    for (int j = 0; j < 70000; j++);

    x = 0x0002;
    gpio_write(x);
    for (int j = 0; j < 70000; j++);

    x = 0x0004;
    gpio_write(x);
    for (int j = 0; j < 70000; j++);

    x = 0x0008;
    gpio_write(x);
    for (int j = 0; j < 70000; j++);

    x = 0x0004;
    gpio_write(x);
    for (int j = 0; j < 70000; j++);

    x = 0x0002;
    gpio_write(x);
    for (int j = 0; j < 70000; j++);

    x = 0x0001;
    gpio_write(x);
    for (int j = 0; j < 70000; j++);

    for (j = 0; j < 100000; j++);

    // Turn off
    x = 0;
    gpio_write(x);
    for (int j = 0; j < 70000; j++);
}
