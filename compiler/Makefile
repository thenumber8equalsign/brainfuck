export CC = gcc

export COMMON_FLAGS = -O2
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
	make -C libs clean
	rm -r $(BUILD_DIR)

build_dir:
	mkdir -p $(BUILD_DIR)
