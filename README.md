# Self Contained TFLite Hello World Project for Raptor (efabless)

This repo explains the intimitading TensorFlow repo and demonstrates TFLite on raptor by making it blinking.


## How to Build

After cloning this repo and cd to it, run the following command:


```
make -f tensorflow/lite/micro/tools/make/Makefile TARGET=raptor hello_world_bin
```
Parameters:
- -f tensorflow/lite/micro/tools/make/Makefile: the path to the Makefile.
- TARGET: the target MCU, in this case raptor
- hello_world_bin: the project name (hello_world) + the build type, and in this case we want the binary (bin)


## Porting Any Platform to TFLite
The Tensorflow repo might seem intimitading when you are just starting to experiment with it. Therefore, I created this repo which is a simpler version of if while maintaining the original structure. </br>

When writing TFLite project for MCUs, it is essential that you understand the following directories in TF:
1. Start with the Hello World example and modify it as you want to make it fit your application purpose. It is found in the following path `tensorflow/lite/micro/examples/hello_world`
2. If you have (and most probably you will) platform specific implementations (such as ADC data collection, DAC, UART, etc.) needed in the application, place these implementations in a subdirectory with the platform name inside the hello_world folder. </br>
example: `hello_world/raptor/` contains the raptor version of output_handler.cc </br>
3. Provide your platform's implementation of the `tensorflow/lite/micro/<platform_name>/debug_log.cc`, here <platform_name> is raptor. This file provides a way to output debug information (for example using the UART).
4. Write a Makefile for your platform and put it in: `tensorflow/lite/micro/tools/make/targets/<platform_name>_makefile.inc`
For example, you will find raptor's Makefile in `tensorflow/lite/micro/tools/make/targets/raptor_makefile.inc`
5. Finally, build using the command:
```
make -f tensorflow/lite/micro/tools/make/Makefile TARGET=<platform_name> hello_world_bin
```