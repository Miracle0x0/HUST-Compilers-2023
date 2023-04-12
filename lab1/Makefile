vpath %.hh include

objects := main.o helloworld.o
CXX := g++
CXXFLAGS := -I ./include/

helloworld: $(objects)
	$(CXX) -o helloworld $(objects) $(CXXFLAGS)

main.o: helloworld.hh
helloworld.o: helloworld.hh
