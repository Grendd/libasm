NAME = libasm.a

FOLDER = srcs

SRCS_LIST = ft_strlen.s ft_strcmp.s \
			ft_read.s ft_write.s \
			ft_strcpy.s ft_strdup.s

SRCS = $(addprefix ${FOLDER}/, ${SRCS_LIST})

OBJS = $(SRCS:.s=.o)

GCC = gcc -Wall -Wextra -Werror

%.o: %.s
	nasm -f macho64 $<


all: ${NAME}

$(NAME): ${OBJS}
	ar rcs ${NAME} ${OBJS}

test: all
	 ${GCC} main.c ${NAME} && ./a.out
clean:
	rm -rf ${OBJS}

fclean: clean
	rm -rf ${NAME}

re: clean all
