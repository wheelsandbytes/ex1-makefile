OBJS = main.o bar.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -c
LFLAGS = -Wall

main : $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o main

main.o : main.c bar.h
	$(CC) $(CFLAGS) main.c

bar.o : bar.c
	$(CC) $(CFLAGS) bar.c
