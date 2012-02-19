CC = gcc

lastuptime: lastuptime.c
	$(CC) -Wall -Wextra -pedantic -Wshadow -o lastuptime lastuptime.c

clean :
	rm -rf lastuptime
