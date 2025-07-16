# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sabejaou <sabejaou@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/04 15:56:34 by sabejaou          #+#    #+#              #
#    Updated: 2024/05/30 10:00:00 by sabejaou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = gnl.a

SRC_DIR = src
OBJ_DIR = obj
INC_DIR = includes

SRCS = $(SRC_DIR)/get_next_line.c \
	   $(SRC_DIR)/get_next_line_utils.c
SRCS_BONUS = $(SRC_DIR)/get_next_line_bonus.c \
	   $(SRC_DIR)/get_next_line_utils_bonus.c

OBJS = $(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)
OBJS_BONUS = $(SRCS_BONUS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror
INCLUDES = -I$(INC_DIR)

all: $(NAME)

$(NAME): $(OBJS)
	@echo "Création de la bibliothèque $(NAME)..."
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "Bibliothèque $(NAME) créée avec succès !"

bonus: $(OBJS_BONUS)
	@echo "Création de la bibliothèque $(NAME) (bonus)..."
	@ar rc $(NAME) $(OBJS_BONUS)
	@ranlib $(NAME)
	@echo "Bibliothèque $(NAME) (bonus) créée avec succès !"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	@mkdir -p $(dir $@)
	@echo "Compilation de $<..."
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

clean:
	@echo "Nettoyage des fichiers objets..."
	@rm -rf $(OBJ_DIR)
	@echo "Nettoyage terminé !"

fclean: clean
	@echo "Nettoyage complet..."
	@rm -f $(NAME)
	@echo "Nettoyage complet terminé !"

re: fclean all

.PHONY: all clean fclean re bonus 