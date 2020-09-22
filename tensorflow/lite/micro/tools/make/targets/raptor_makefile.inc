# Settings for raptor mcu
ifeq ($(TARGET),$(filter $(TARGET), raptor))
  export PATH := $(MAKEFILE_DIR)/downloads/gcc_embedded/bin/:$(PATH)
  TARGET_ARCH := cortex-m0
  TARGET_TOOLCHAIN_PREFIX := arm-none-eabi-
  TARGET_TOOLCHAIN_ROOT := $(TENSORFLOW_ROOT)$(MAKEFILE_DIR)/downloads/gcc_embedded/bin/

  # Download the Raptor HAL and set this variable to find the header files:
  RAPTOR_SDK := $(MAKEFILE_DIR)/downloads/raptor

  # Startup Scripts
  STARTUP := $(RAPTOR_SDK)/sw/cm0_startup.s
  STARTUP_OBJECT := $(RAPTOR_SDK)/sw/start.o

  # Need a pointer to the GNU ARM toolchain for crtbegin.o for the fp functions
  # with the hard interfaces.
  GCC_ARM := $(MAKEFILE_DIR)/downloads/gcc_embedded/

  # Download dependencies
  $(eval $(call add_third_party_download,$(GCC_EMBEDDED_URL),$(GCC_EMBEDDED_MD5),gcc_embedded,))
  #$(eval $(call add_third_party_download,$(CMSIS_URL),$(CMSIS_MD5),cmsis,patch_cmsis))
  #$(eval $(call add_third_party_download,$(AM_SDK_URL),$(AM_SDK_MD5),$(AM_SDK_DEST),patch_am_sdk))


  # -DARM_MATH_CM4 \
  # -DPART_apollo3 \
  # -DAM_PACKAGE_BGA \
  # -DAM_PART_APOLLO3 
  PLATFORM_FLAGS = \
    -DGEMMLOWP_ALLOW_SLOW_SCALAR_FALLBACK \
    -DTF_LITE_STATIC_MEMORY \
    -DNDEBUG \
    -DTF_LITE_MCU_DEBUG_LOG \
    -D __FPU_PRESENT=1 \
    -fno-rtti \
    -fmessage-length=0 \
    -fno-exceptions \
    -fno-unwind-tables \
    -ffunction-sections \
    -fdata-sections \
    -funsigned-char \
    -MMD \
    -mcpu=cortex-m0 \
    -mfpu=auto \
    -mfloat-abi=soft \
    -std=gnu++11 \
    -Wvla \
    -Wall \
    -Wextra \
    -Wno-missing-field-initializers \
    -Wno-strict-aliasing \
    -Wno-type-limits \
    -Wno-unused-function \
    -Wno-unused-parameter \
    -fno-delete-null-pointer-checks \
    -fno-threadsafe-statics \
    -fomit-frame-pointer \
    -fno-use-cxa-atexit \
    -nostdlib \
    -ggdb \
    -Os

  CXXFLAGS += $(PLATFORM_FLAGS)
  CCFLAGS += $(PLATFORM_FLAGS)

  LDFLAGS += \
    -marm -mcpu=cortex-m0 -mfpu=auto -mfloat-abi=soft \
    -nostartfiles -static \
    -Wl,--gc-sections -Wl,--entry,Reset_Handler \
    -Wl,--start-group -lm -lc -lgcc -Wl,--end-group \
    -fno-exceptions \
    -nostdlib --specs=nano.specs -t -lstdc++ -lc -lnosys -lm \
    -Wl,-T,$(TENSORFLOW_ROOT)$(MAKEFILE_DIR)/targets/raptor/sections.ld,$(STARTUP_OBJECT)\
    -Wl,-Map=$(TENSORFLOW_ROOT)$(MAKEFILE_DIR)/gen/$(TARGET).map,--cref
  
  BUILD_TYPE := micro
  
  MICROLITE_LIBS := \
    -lm
  
  INCLUDES += \
    -I$(GCC_ARM)arm-none-eabi/ \
    -I$(RAPTOR_SDK)/ \
    -I$(RAPTOR_SDK)/sw/ \

  MICROLITE_CC_SRCS += \
    $(wildcard $(RAPTOR_SDK)/sw/*.c) \
    $(wildcard $(RAPTOR_SDK)/sw/*.cc) \
    $(wildcard $(RAPTOR_SDK)/*.c)

  
  EXCLUDED_SRCS := 
  MICROLITE_CC_SRCS := $(filter-out $(EXCLUDED_SRCS), $(MICROLITE_CC_SRCS))


  #MICRO_SPEECH_TEST_SRCS += \
  #  $(AP3_MICRO_DIR)/_main.c

  TEST_SCRIPT := tensorflow/lite/micro/testing/test_apollo3evb_binary.sh
  # These are tests that don't currently work on raptor. TODO
  EXCLUDED_TESTS := \
    tensorflow/lite/micro/micro_interpreter_test.cc \
    tensorflow/lite/micro/simple_tensor_allocator_test.cc
  MICROLITE_TEST_SRCS := $(filter-out $(EXCLUDED_TESTS), $(MICROLITE_TEST_SRCS))

  #LINKSTARTUP = $(TARGET_TOOLCHAIN_PREFIX)-as $(PLATFORM_FLAGS) -o $(STARTUP_OBJECT) $(STARTUP)
  #$(call LINKSTARTUP,)

endif
