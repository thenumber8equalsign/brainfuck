export CC = gcc
export CFLAGS = -O2
export INCLUDE = $(abspath ./include/)
export BUILD_DIR = ./build/

all: lib compiler

compiler: lib
	$(CC) -c main.c -o $(BUILD_DIR)/main.o $(CFLAGS) -I $(INCLUDE)

	$(CC) $(BUILD_DIR)/*.o -o $(BUILD_DIR)/compiler

lib:
	mkdir -p $(BUILD_DIR)
	make -C libs
	mv ./libs/$(BUILD_DIR)/* $(BUILD_DIR)/

clean:
	make -C libs clean
	rm -r $(BUILD_DIR)
