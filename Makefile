# Makefile
CC ?= gcc
CFLAGS = -Wall -Wextra -Werror -pedantic -std=c99

OBJ = src/main.o src/utils.o
BIN = main

$(BIN): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

.PHONY: clean

clean:
	$(RM) $(OBJ) $(BIN)
