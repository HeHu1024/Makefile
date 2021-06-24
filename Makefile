all: main.o func.o
	gcc -o app.out main.o func.o
main.o: main.c
	gcc -o main.o -c main.c
func.o: func.c
	gcc -o func.o -c func.c


clean:
	rm app.out *.o
