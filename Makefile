NAME		= libftprintf.a
LIBFT		= Libft
LIBFT_LIB	= libft.a

SRCS		= ./ft_printf.c ./ft_printf_utils.c ./ft_printf_utils2.c ./ft_printf_utils3.c ./ft_printf_utils4.c ./ft_printf_utils5.c
OBJS		= $(SRCS:.c=.o)
RM			= rm -f
LIBC		= ar rc
CC			= gcc
CFLAGS		= -Wall -Wextra -Werror

$(NAME) : $(OBJS)
	make all -C $(LIBFT)/
	cp $(LIBFT)/$(LIBFT_LIB) $(NAME)
	$(LIBC) $(NAME) $(OBJS)

all : $(NAME)

fclean : clean
	$(RM) $(NAME)
	make fclean -C $(LIBFT)

clean :
	$(RM) $(OBJS)
	make clean -C $(LIBFT)

re : fclean all
