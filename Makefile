# Used Compiler
CXX=g++

# Compiler Flags 
# 	-Wall Enables Compiler Warning Messagse 
# 	-Wextra for Additional Warnings
# 	-02 Optimizes Code
# 	-pedantic-errors Enforces C++ Language Standards.
# 	-Werror (Warnings as Errors)

FLAGS=-std=c++23 -O2 -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion -Werror -pedantic-errors
DEBUG=-std=c++23 -ggdb -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion -Werror -pedantic-errors

SRCS=src/main.cpp src/calculator.cpp
OBJS=$(notdir $(SRCS:.cpp=.o))

debug:
	$(CXX) $(DEBUG) $(SRCS)
	gdb a.out
.PHONY: run

compile:
	$(CXX) $(FLAGS) -c $(SRCS)
.PHONY: compile

run: compile
	$(CXX) $(FLAGS) -o main $(OBJS)
	./main
.PHONY: run

clean:
	rm -rf main $(OBJS)
.PHONY: clean

