target:
	$(CC) -c brainfuck.c -o $(BUILD_DIR)/brainfuck.o $(CFLAGS) -I $(INCLUDE)
	$(CC) -c compiler.c -o $(BUILD_DIR)/compiler.o $(CFLAGS) -I $(INCLUDE)
	$(CC) -c arrays.c -o $(BUILD_DIR)/arrays.o $(CFLAGS) -I $(INCLUDE)
	$(CC) -c helpers.c -o $(BUILD_DIR)/helpers.o $(CFLAGS) -I $(INCLUDE)
	$(CC) -c brainfuck_opt.c -o $(BUILD_DIR)/brainfuck_opt.o $(CFLAGS) \
		-I $(INCLUDE)
	$(CC) -c brainfuck_strip.c -o $(BUILD_DIR)/brainfuck_strip.o $(CFLAGS) \
		-I $(INCLUDE)
	make -C optimizers
