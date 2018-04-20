LIBS=-lsfml-graphics -lsfml-audio -lsfml-window -lsfml-system 

all: run

run:tree
	./tree


JointDSA.o: JointDSA.cpp
	g++ -std=c++11 -c "JointDSA.cpp" -o JointDSA.o 

BinaryTree.o: BinaryTree.cpp
	g++ -std=c++11 -c "BinaryTree.cpp" -o BinaryTree.o 

readFile.o: readFile.cpp
	g++ -std=c++11 -c "readFile.cpp" -o readFile.o

tree: JointDSA.o BinaryTree.o readFile.o
	@echo "** Building Binary tree"
	g++ -Wall -o space JointDSA.o readFile.o BinaryTree.o  $(LIBS) 

clean:
	@echo "** Removing object files and executable..."
	rm -f *.o

.PHONY: all clean
