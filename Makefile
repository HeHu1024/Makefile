### use the make variable
CC = gcc
RM = rm


EXE = simple.exe
OBJS = main.o func.o


.PHONY: clean   #.PHONY define a target and the make will not do the target for file


$(EXE): $(OBJS)
	$(CC) -o $@ $^
main.o: main.c
	$(CC) -o $@ -c $^
func.o: func.c
	$(CC) -o $@ -c $^
clean:
	$(RM) -fr $(EXE) *.o
