NAME   = libftprintf.a
CC     = cc
CFLAGS = -Wall -Wextra -Werror
AR     = ar rcs
RM     = rm -rf

SRCS   = $(wildcard srcs/*.c)

OBJS = $(SRCS:.c=.o)


%.o :%.c ft_printf.h
	$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re