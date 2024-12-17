NAME = libasm.a
SRC = ft_strlen.s ft_memset.s ft_strcpy.s hello_world.s
OBJ = $(SRC:.s=.o)
CC = gcc -no-pie
FLAGS = -f elf64 -g
RM = rm -f
MAIN = main.c
EXEC = test_program

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o: %.s
	nasm $(FLAGS) $< -o $@

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME) $(EXEC)

re: fclean all

test: $(NAME)
	$(CC) $(MAIN) $(NAME) -o $(EXEC)
	./$(EXEC)

.PHONY: all clean fclean re test
