# Makefile

# Specify the compiler
CC = gcc
# Compiler flags
CFLAGS = -Wall -g

# The target bulid
all: test

# Rule to bulid the main executable
test: test.o
	$(CC) $(CFLAGS) -o test test.o

# Rule to compile the C source file into a object file
test.o: test.c
	$(CC) $(CFLAGS) -c test.c

# Rule to clean up the bulid files
clean:
	rm -f test test.o
