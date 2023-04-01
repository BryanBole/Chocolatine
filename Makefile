##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## Makefile
##

SRC := $(shell find . -name "*.c")

OBJ := $(patsubst %.c,%.o,$(SRC))

NAME = mysh

CFLAGS	=	-W -Wall -Wextra -I./include -L./include -g -g3

${NAME}: ${OBJ}
    gcc ${OBJ} -o ${NAME} ${CFLAGS}

all: ${NAME}

clean:
	rm -f ${OBJ}

fclean: clean
	rm -f ${NAME}
	rm -f *.o

re: fclean all

run_tests:
    gcc -o $(NAME) criterion.c -lcriterion --coverage
    ./$(NAME)

.PHONY: all clean fclean re
