FLAGS=-lglfw -lGL
GXX=g++
TARGET=./target
SRC=./src

OBJS = \
${TARGET}/window.o \
${TARGET}/test.o 

all:	$(OBJS)
	

${TARGET}/%.o:	${SRC}/%.cpp
	${GXX} ${FLAGS} $< -o $@
	
clean:
	rm ${TARGET}/*.o
	echo "Everything is cleaned!"