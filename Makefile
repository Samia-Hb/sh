CFLAGS = -Wall -Wextra -Werror
CC = gcc
BONUS = checker.a
NAME = push_swap.a
AR = ar rcs
SRCS = main.c \
	push_swap.c \
	push_swap_utils.c \
	push_back.c \
	movements.c \
	movements_P2.c \
	check_arguments.c \
	regular_cases.c \
	movements_calculation.c \
	libft/ft_split.c \
	libft/ft_strcmp.c \
	libft/ft_strlen.c \
	libft/ft_atoi.c\
	libft/ft_putstring.c \
	ft_printf/ft_printf.c \
	ft_printf/ft_putchar.c \
	ft_printf/ft_putnbr_base.c \
	ft_printf/ft_putnbr_base_adr.c \
	ft_printf/ft_putnbr_signed.c \
	ft_printf/ft_putstr.c \
	ft_printf/ft_putnbr_unsigned.c

SRCS_BONUS =	bonus/get/get_next_line.c bonus/get/get_next_line_utils.c \
       			bonus/checker.c bonus/check_arg.c bonus/push_swap_utils_bonus.c \
       			bonus/ft_split.c bonus/ft_atoi.c \
       			bonus/movements_bonus_P2.c bonus/movements_bonus.c

OBJS = $(SRCS:.c=.o)

OBJB = $(SRCS_BONUS:.c=.o)

all: $(NAME) $(BONUS)

$(BONUS): $(OBJB)
	$(AR) $@ $(OBJB)

$(NAME): $(OBJS)
	$(AR) $@ $(OBJS)

clean:
	rm -f $(OBJS) $(OBJB)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

fclean: clean
	rm -f $(NAME) $(BONUS)

re: clean all

.PHONY: all clean fclean re%