SRCS	= ft_atoi.c ft_isalpha.c ft_itoa.c ft_memmove.c   ft_strdup.c ft_strlcpy.c ft_putnbr_fd.c ft_strnstr.c ft_tolower.c ft_bzero.c ft_isascii.c ft_memchr.c ft_memset.c ft_putstr_fd.c ft_striteri.c ft_strlen.c ft_strrchr.c ft_toupper.c ft_calloc.c ft_isdigit.c ft_memcmp.c ft_putchar_fd.c ft_split.c ft_strjoin.c ft_strmapi.c ft_strtrim.c ft_isalnum.c ft_isprint.c ft_memcpy.c ft_putendl_fd.c ft_strchr.c ft_strlcat.c ft_strncmp.c ft_substr.c

SRCSBONUS	= ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c ft_lstiter.c ft_lstlast.c ft_lstnew.c ft_lstsize.c ft_lstmap.c

OBJS	= ${SRCS:.c=.o}

OBJSBONUS	= ${SRCSBONUS:.c=.o}

CC	= gcc

RM	= rm -f

CFLAGS    = -Wall -Wextra -Werror

NAME    = libft.a

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

all: ${NAME}

${NAME}:    ${OBJS}
	ar rc ${NAME} ${OBJS}
	ranlib ${NAME}

clean:
	${RM} ${OBJS} ${OBJSBONUS}

fclean:	clean
	${RM} ${NAME}

re:	fclean all

bonus:	all ${OBJSBONUS}
	ar rc ${NAME} ${OBJSBONUS}
	ranlib ${NAME}

.PHONY:	clean fclean all re bonus