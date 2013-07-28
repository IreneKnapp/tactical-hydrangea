CC=clang
CFLAGS=-g -O0
LIBRARIES=-lm $(pkg-config --libs libglfw)
OBJECTS=hydrangea.o
INCLUDES=hydrangea.h

default: all
all: hydrangea

clean:
	rm -f ${OBJECTS} hydrangea

hydrangea.o: hydrangea.c ${INCLUDES}
	${CC} ${CFLAGS} -c hydrangea.c -o hydrangea.o

.dummy: clean default all
