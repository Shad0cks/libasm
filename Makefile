SRCS	=	ft_strlen.s \
			ft_write.s \

OBJS	= $(SRCS:.s=.o)

NAME	= libasm.a

NASM	= nasm

FLAGS	= -f macho64 $<

INCLUDE	= -L. -lasm

all:	$(NAME)

.PHONY:	clean fclean re

$(NAME):	$(OBJS)
	ar rcs $(NAME) $(OBJS)

run: all
	clang main.c -o run_test $(INCLUDE)
	@touch test && echo "Gaspacho's test" > test
	./run_test

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f test
	rm -f run_test

re: fclean all

%.o: %.s
	$(NASM) $(FLAGS) -o $(<:.s=.o)

