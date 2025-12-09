MDFILE = $(shell find -name *.md)
OBJ = $(patsubst %.md, %.html, $(MDFILE))

all : $(OBJ)
	git commit -a
	git pull
	git push

%.html : %.md
	pandoc $^ -o $@ --mathml