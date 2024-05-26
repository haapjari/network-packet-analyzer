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
debug:
	$(CXX) $(DEBUG) src/main.cpp
	gdb a.out
.PHONY: run

compile:
	$(CXX) $(FLAGS) -c  src/main.cpp
.PHONY: compile

run: compile
	$(CXX) $(FLAGS) -o main main.o
	./main
.PHONY: run

clean:
	rm -rf main main.o
.PHONY: clean
