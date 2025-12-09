MDFILE = $(shell find -name *.md)
OBJ = $(patsubst %.md, %.html, $(MDFILE))

all : $(OBJ)

%.html : %.md
	pandoc $^ -o $@ --mathml