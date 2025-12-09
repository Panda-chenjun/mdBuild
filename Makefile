MDFILE = $(shell ls *.md -R)
OBJ = $(patsubst %.md, %.html, $(MDFILE))

all : $(OBJ)
	git pull
	git push

%.html : %.md
	pandoc $^ -o $@ --mathml