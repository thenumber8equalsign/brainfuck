.PHONY: all clean _lib _build_dir

export CC := gcc

COMMON_FLAGS := -O2
# uncomment to include the assert() sanity checks
COMMON_FLAGS := $(COMMON_FLAGS) -DDEBUG

# uncomment to check for memory leaks
# after running the executable, check memory usage using preferred method
#COMMON_FLAGS := $(COMMON_FLAGS) -D TEST_MEMORY_LEAKS

export COMMON_FLAGS
export CFLAGS := $(COMMON_FLAGS) -std=c99

export INCLUDE := $(abspath ./include/)
export BUILD_DIR := $(abspath ./build/)
export RULES := $(abspath ./make_rule.mk)

EXECUTABLE := $(BUILD_DIR)/compiler

include $(RULES)

all: _build_dir _lib $(BUILD_DIR)/main.c.o
	$(CC) $(BUILD_DIR)/*.o -o $(EXECUTABLE)

clean:
	rm -r $(BUILD_DIR)

_lib:
	$(MAKE) -C libs/ all

_build_dir:
	@if (! [[ -d "$(BUILD_DIR)" ]]) && [[ -e "$(BUILD_DIR)" ]]; then \
		echo "$(BUILD_DIR) exist and is not a directory"; \
		exit 1; \
	elif (! [[ -e "$(BUILD_DIR)" ]]); then \
		mkdir -p $(BUILD_DIR); \
	fi
