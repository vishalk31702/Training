# compiler and flags
CXX = g++                  # c++ compiler we can use gdb as well
CXXFLAGS = -Wall -std=c++11  # compiler flags (warnings, C++11 standard) in details in task 2

# target executable
TARGET = final  #final is the name of output file of our program

# source files contains all the instructions/code
SRCS = main.cpp hello.cpp factorial.cpp

# object files (created from source files)
OBJS = $(SRCS:.cpp=.o)       # .cpp will be converted into .o(object file)

all: $(TARGET)

# rule to link object files into the final executable
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET)

# rule to compile .cpp files into .o (object) files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# clean up object files and executable
clean:
	rm -f $(OBJS) $(TARGET)

