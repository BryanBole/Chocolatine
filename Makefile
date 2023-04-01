##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## Makefile
##

SRC =    main.c \

OBJ = $(SRC:.c=.o)

CFLAGS    +=    -g3 -Wall -Wextra

NAME = mysh

all:    $(NAME)

$(NAME):    $(OBJ)
    gcc -o $(NAME) $(OBJ) -lcriterion --coverage

clean:
    rm -f $(OBJ)

fclean: clean
        rm -f *.a $(NAME)

re:    fclean all

.PHONY: all clean fclean re
