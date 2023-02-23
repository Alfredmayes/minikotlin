TARGET=minikotlin
all: ${TARGET}

${TARGET}: ${TARGET}_parser.o ${TARGET}_lexer.o main.o
	g++ -g -o $@ $^

code.o: code.cpp code.h
	g++ -std=c++11 -g -c -o $@ $<

main.o: main.cpp
	g++ -g -c -o $@ $<

${TARGET}.o: ${TARGET}_lexer.cpp
	g++ -g -o -c $@ $<

${TARGET}_lexer.cpp: ${TARGET}.l
	flex -o $@ $<

${TARGET}_parser.cpp: ${TARGET}.y
	bison --defines=tokens.h -o $@ $<

${TARGET}_parser.o: ${TARGET}_parser.cpp
	g++ -g -c -o $@ $<

clean:
	rm -f *.o
	rm -f ${TARGET}_lexer.cpp
	rm -f ${TARGET}_parser.cpp
	rm -f ${TARGET}