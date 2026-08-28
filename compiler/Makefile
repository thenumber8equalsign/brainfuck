export CC = gcc

COMMON_FLAGS := -O2
# uncomment to include the assert() sanity checks
#COMMON_FLAGS := $(COMMON_FLAGS) -D DEBUG

# uncomment to check for memory leaks
# after running the executable, check memory usage using preferred method
#COMMON_FLAGS := $(COMMON_FLAGS) -D TEST_MEMORY_LEAKS

export COMMON_FLAGS
export CFLAGS = $(COMMON_FLAGS)

export INCLUDE = $(abspath ./include/)
export BUILD_DIR = $(abspath ./build/)

all: lib compiler

compiler: lib build_dir
	$(CC) -c main.c -o $(BUILD_DIR)/main.o $(CFLAGS) -I $(INCLUDE)

	$(CC) $(BUILD_DIR)/*.o -o $(BUILD_DIR)/compiler

lib: build_dir
	make -C libs

clean:
	rm -r $(BUILD_DIR)

build_dir:
	mkdir -p $(BUILD_DIR)
