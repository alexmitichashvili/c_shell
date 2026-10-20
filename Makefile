CC      = gcc
CFLAGS  = -Wall -Wextra -std=c11 -g
TARGET  = cshell

all: $(TARGET)

$(TARGET): main.c
	$(CC) $(CFLAGS) -o $@ $^

test: $(TARGET)
	bash tests/run_tests.sh

clean:
	rm -f $(TARGET)

.PHONY: all test clean
