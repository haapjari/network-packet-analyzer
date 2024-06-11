# ============================================================================
# COMPILER CONFIGURATION
# ============================================================================
COMPILER=g++
FILE_SUFFIX=cpp

# ============================================================================
# LIBRARIES AND PATHS
# ============================================================================

PLOG_PATH=-I/home/haspe/Development/cpp-lib/plog-master/include

# ============================================================================
# COMPILER FLAGS
# ============================================================================

FLAGS=-std=c++23 -O2 -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion -Werror -pedantic-errors $(PLOG_PATH)
DEBUG=-std=c++23 -ggdb -O2 -Wall -Wextra -Wconversion -Wsign-conversion $(PLOG_PATH)
EXT_FLAGS=-std=c++23 -O2 -Wall -Wextra -Wconversion -Wsign-conversion $(PLOG_PATH)

# ============================================================================
# SOURCE FILES AND OBJECTS
# ============================================================================

SOURCE_FILES=$(wildcard src/*.cpp)
OBJECT_FILES=$(notdir $(SOURCE_FILES:.$(FILE_SUFFIX)=.o))

# ============================================================================
# PHONY TARGETS
# ============================================================================

.PHONY: compile run clean debug generate_commands

# ============================================================================
# COMPILATION RULES
# ============================================================================

main.o: src/main.cpp
	$(COMPILER) $(EXT_FLAGS) -c $< -o $@

calculator.o: src/calculator.cpp
	$(COMPILER) $(FLAGS) -c $< -o $@

# ============================================================================
# HIGH-LEVEL BUILD TARGETS
# ============================================================================

compile: main.o calculator.o

run: compile
	$(COMPILER) $(FLAGS) -o main $(OBJECT_FILES)
	./main

clean:
	rm -rf main $(OBJECT_FILES)

debug:
	$(COMPILER) $(DEBUG) $(SOURCE_FILES)
	gdb a.out

# ============================================================================
# AUXILIARY TOOLS
# ============================================================================

generate_commands:
	bear -- make compile

