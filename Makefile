CC ?= gcc
CFLAGS = -Wall -Wextra -Werror -pedantic -std=c99

OBJ = main.o
BIN = main

$(BIN): $(OBJ)

.PHONY: clean

clean:
	$(RM) $(OBJ) $(BIN)
