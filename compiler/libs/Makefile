target:
	mkdir -p $(BUILD_DIR)
	$(CXX) -c brainfuck.cpp -o $(BUILD_DIR)/brainfuck.o $(CXXFLAGS) -I $(INCLUDE)
	$(CC) -c compiler.c -o $(BUILD_DIR)/compiler.o $(CFLAGS) -I $(INCLUDE)
	$(CC) -c arrays.c -o $(BUILD_DIR)/arrays.o $(CFLAGS) -I $(INCLUDE)

clean:
	rm -r $(BUILD_DIR)
