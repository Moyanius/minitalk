# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmoyano- <jmoyano-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/30 18:43:09 by jmoyano-          #+#    #+#              #
#    Updated: 2022/08/31 19:28:57 by jmoyano-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minitalk
CC = gcc
CFLAGS = -Werror -Wextra -Wall

SRCS = client.c \
		server.c
		
OBJS = $(SRCS:.c=.o)

$(NAME): $(OBJS)
	make -C ./Moyano_library
	make -C ./Printf
	${CC} ${CFLAGS} $(OBJS) -I ./Moyano_library -L ./Moyano_library -l ft -o ${NAME} 
	${CC} ${CFLAGS} $(OBJS) -I ./Printf -L ./Printf -l ft -o ${NAME} 

all: $(NAME)

clean:
	make clean -C ./Moyano_library
	make clean -C ./Printf

	rm -f $(OBJS)

fclean: clean
	make fclean -C ./Moyano_library
	make fclean -C ./Printf
	rm -f $(NAME)
	
re: fclean all

.PNONY: all clean fclean re