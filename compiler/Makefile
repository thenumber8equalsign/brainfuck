CC = gcc
CFLAGS = -O2

compiler:
	mkdir -p build
	$(CC) -c -I./include/ main.c -o build/main.o $(CFLAGS)
	$(CC) -c -I./include/ brainfuck.c -o build/brainfuck.o $(CFLAGS)
	$(CC) build/brainfuck.o build/main.o -o build/compiler
