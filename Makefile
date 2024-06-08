# Makefile for odd.exe

CC = gcc
CFLAGS = -Wall -Wextra -std=c99

SRC = odd.c
OBJ = odd.o
EXEC = odd.exe

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJ) $(EXEC)

