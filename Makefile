# Main Makefile

# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -Wall -g -I./src

SRC = src

# Targets
all: add_me

# Main program target
add_me: $(SRC)/add_me.o $(SRC)/mymain.o
	$(CXX) $(CXXFLAGS) -o add_me $(SRC)/add_me.o $(SRC)/mymain.o

# Object files
add_me.o: src/add_me.cpp
	$(CXX) $(CXXFLAGS) -c src/add_me.cpp

mymain.o: src/mymain.cpp
	$(CXX) $(CXXFLAGS) -c src/mymain.cpp

# Clean up generated files
clean:
	rm -rf src\*.o add_me
