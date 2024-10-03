# Test Makefile

CXX = g++
CXXFLAGS = -Wall -pthread

# System Library Path
LIB_DIR = /usr/lib

GTEST_LIBS = -lgtest -lgtest_main

# Executable files
TEST_EXE = test_add_me

ADD_ME_OBJ = ../src/add_me.o

# Targets
all: test

# Test program compilation
test: test_add_me.cpp
	$(CXX) $(CXXFLAGS) -o $(TEST_EXE) test_add_me.cpp  $(ADD_ME_OBJ) $(GTEST_LIBS)

# Clean up generated files
clean:
	rm -rf *.o test_add_me
