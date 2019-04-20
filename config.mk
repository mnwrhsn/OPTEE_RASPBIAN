TEE_SDK_DIR=$(shell pwd)
TOOLCHAIN_32_PATH := $(TEE_SDK_DIR)/toolchains/aarch32/bin/arm-linux-gnueabihf-
TOOLCHAIN_64_PATH := $(TEE_SDK_DIR)/toolchains/aarch64/bin/aarch64-linux-gnu-


export CROSS_COMPILE := $(TOOLCHAIN_32_PATH)
export CROSS_COMPILE_AARCH64 := $(TOOLCHAIN_64_PATH)
