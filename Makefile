SRCS		= ft_isalpha.c		\
				ft_isdigit.c	\
				ft_isalnum.c	\
				ft_isascii.c	\
				ft_isprint.c	\
				ft_strlen.c		\
				ft_memset.c		\
				ft_bzero.c		\
				ft_memcpy.c		\
				ft_memmove.c	\
				ft_toupper.c	\
				ft_tolower.c	\
				ft_strchr.c		\
				ft_strrchr.c	\
				ft_atoi.c		\
				ft_memcmp.c		\
				ft_memchr.c		\
				ft_strdup.c		\
				ft_strnstr.c	\
				ft_calloc.c		\
				ft_strlcat.c	\
				ft_strlcpy.c	\
				ft_strncmp.c	\
				ft_substr.c		\
				ft_strjoin.c	\
				ft_strtrim.c	\
				ft_split.c		\
				ft_itoa.c		\
				ft_strmapi.c	\
				ft_striteri.c	\
				ft_putstr_fd.c	\
				ft_putchar_fd.c	\
				ft_putendl_fd.c	\
				ft_putnbr_fd.c
OBJS		= $(SRCS:.c=.o)

B_SRCS = ft_lstadd_front.c		\
			ft_lstlast.c		\
			ft_lstnew.c			\
			ft_lstsize.c		\
			ft_lstadd_back.c	\
			ft_lstiter.c		\
			ft_lstclear.c		\
			ft_lstdelone.c		\
			ft_lstmap.c
B_OBJS = $(B_SRCS:.c=.o)

CC			= gcc
CFLAGS 		= -Wall -Wextra -Werror
NAME		= libft.a

all: $(NAME)

re: fclean $(NAME)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)

.c.o:
	$(CC) -c $(CFLAGS) $<

bonus: $(OBJS) $(B_OBJS)
	ar -rcs $(NAME) $(B_OBJS) $(OBJS)

clean:
	rm -f $(OBJS) $(B_OBJS)

fclean: clean
	rm -f $(NAME)

.PHONY: clean fclean re all bonus
