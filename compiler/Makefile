export CC = gcc
export CXX = g++

export COMMON_FLAGS = -O0
export CFLAGS = $(COMMON_FLAGS)
export CXXFLAGS = $(COMMON_FLAGS)

export INCLUDE = $(abspath ./include/)
export BUILD_DIR = $(abspath ./build/)

all: lib compiler

compiler: lib build_dir
	$(CXX) -c main.cpp -o $(BUILD_DIR)/main.o $(CFLAGS) -I $(INCLUDE)

	$(CXX) $(BUILD_DIR)/*.o -o $(BUILD_DIR)/compiler

lib: build_dir
	make -C libs

clean:
	make -C libs clean
	rm -r $(BUILD_DIR)

build_dir:
	mkdir -p $(BUILD_DIR)
