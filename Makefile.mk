#Makefile
CC=gcc

gui: gui.c
	$(CC) gui.c -o gui `pkg-config --cflags --libs gtk+-3.0`
