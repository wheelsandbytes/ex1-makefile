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

math_lib.o : math_lib.c
	$(CC) $(CFLAGS) math_lib.c

libmath.a : math_lib.o
	ar rc libmath.a math_lib.o

useLib.o : useLib.c
	$(CC) $(CFLAGS) useLib.c

prog : useLib.o libmath.a
	$(CC) $(LFLAGS) useLib.o -L. -lmath -o prog

clean:
	\rm *.o *~ main libmath.a
