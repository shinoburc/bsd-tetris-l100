#	$Id: Makefile,v 1.1.1.2 2003/09/12 08:19:41 shinobu Exp $

BIN	= tetris
CC	= gcc
CFLAGS	= -g -O2 -Wall -W -Wstrict-prototypes -Wmissing-prototypes -Wpointer-arith -Wcast-align -Wcast-qual -Wwrite-strings -Iinclude -Iinclude/tetris
SRCS = input.c scores.c screen.c shapes.c tetris.c
OBJS = input.o scores.o screen.o shapes.o tetris.o
CLIBS = -lncurses

all: $(SRCS) $(BIN)

$(SRCS):
	$(CC) $(CFLAGS) -c $@

tetris: $(OBJS)
	$(CC) $(OBJS) $(CLIBS) -o $(BIN)

clean cleanup:
	rm -f *.o *.core $(BIN) *~
