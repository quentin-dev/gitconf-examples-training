CC ?= gcc
CFLAGS = -Wall -Wextra -Werror -pedantic -std=c99

OBJ = src/main.o src/utils.o
BIN = main

DOXYFILE = doc/Doxyfile
DOCDIR = doc/html

$(BIN): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

.PHONY: doc
doc: $(DOXYFILE)
	doxygen $^


.PHONY: clean
clean:
	$(RM) -r  $(OBJ) $(BIN) $(DOCDIR)
