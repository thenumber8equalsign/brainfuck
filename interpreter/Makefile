.PHONY: all stack nostack _build_dir
CC = gcc
BUILD_DIR = $(abspath ./build/)

all: _build_dir stack nostack

stack:
	$(CC) -O3 -std=c99 stack.c -o $(BUILD_DIR)/stack

nostack:
	$(CC) -O3 no_stack.c -o $(BUILD_DIR)/no_stack

_build_dir:
	mkdir $(BUILD_DIR)
