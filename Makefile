CFLAGS = -I ./include
LIB    = ./libggfonts.so
LFLAGS = $(LIB) -lrt -lX11 -lGL -pthread -lm #-lXrandr

all: asteroids acpp lab1

asteroids: asteroids.cpp ppm.c log.c
	g++ $(CFLAGS) asteroids.cpp log.c -Wall -Wextra $(LFLAGS) -o asteroids

lab1: lab1.cpp ppm.c log.c
	g++ $(CFLAGS) lab1.cpp log.c -Wall -Wextra $(LFLAGS) -o lab1

acpp: asteroids.cpp ppm.c log.c
	g++ $(CFLAGS) asteroids.cpp log.c -Wall -Wextra $(LFLAGS) -o acpp

clean:
	rm -f asteroids acpp lab1
	rm -f *.o

