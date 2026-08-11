export CC = gcc
export CXX = g++

export COMMON_FLAGS = -O0
export CFLAGS = $(COMMON_FLAGS)
export CXXFLAGS = $(COMMON_FLAGS)

export INCLUDE = $(abspath ./include/)
export BUILD_DIR = ./build/

all: lib compiler

compiler: lib
	$(CXX) -c main.cpp -o $(BUILD_DIR)/main.o $(CFLAGS) -I $(INCLUDE)

	$(CXX) $(BUILD_DIR)/*.o -o $(BUILD_DIR)/compiler

lib:
	mkdir -p $(BUILD_DIR)
	make -C libs
	mv ./libs/$(BUILD_DIR)/* $(BUILD_DIR)/

clean:
	make -C libs clean
	rm -r $(BUILD_DIR)
