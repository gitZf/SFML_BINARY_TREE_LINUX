# ### Makefile.mk Documentation
# EXE =space
# CC = g++ -g 
# LIBS=-lsfml-graphics -lsfml-audio -lsfml-window -lsfml-system 
# #DOXYGEN = doxygen
# PROGRAM = space
# CFLAGS =-std=c++14 -o $(EXE) 
# CFILES = SpaceInvaders.cpp #player.cpp lives.cpp enemyFly.cpp enemyBullets.cpp enemy.cpp bullets.cpp block.cpp
# HFILES = #player.h lives.h enemyFly.h enemyBullets.h enemy.h bullets.h block.h

# # working more advanced
# ALL:$(PROGRAM)

# #Rule for linking
# $(PROGRAM):$(CFILES) $(HFILES)
# 	$(CC) $(CFLAGS) *.cpp -o $(EXE)  $(LIBS) $(DEBUGFLAGS)
# 	$(DOXYGEN) Doxyfile

# DEBUG: DEBUGFLAGS = -g -O0
# DEBUG: ALL

# CLEAN:
# 	rm -f *.o
# .PHONY: all clean


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
