# Makefile for Assignment 1
CC=gcc
CFLAGS= -g -c -Wall `sdl-config --cflags`
LDFLAGS= `sdl-config --libs`
SOURCES=lpplay.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=lpplay

all: $(SOURCES) $(EXECUTABLE)
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)
.c.o:
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm *.o
	rm $(EXECUTABLE)
