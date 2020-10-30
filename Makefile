FLAGS=-lglfw -lGL
GXX=g++

OBJS = \
window.o \
test.o

all:	${OBJS}
	

%.o:	%.cpp
	${GXX} ${FLAGS} $< -o $@
	
clean:
	rm *.o
	echo "Everything is cleaned!"