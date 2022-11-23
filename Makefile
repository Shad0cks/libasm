SRCS	=	ft_strlen.s \
				ft_write.s 	\
				ft_strcpy.s \
				ft_strcmp.s \
				ft_read.s   \
				ft_strdup.s \

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
	clang main.c -o test $(INCLUDE)
	@echo "+++++++ TEST ++++++++"
	@./test
	@rm -f test
	@rm -f $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f test

re: fclean all

%.o: %.s
	$(NASM) $(FLAGS) -o $(<:.s=.o)

