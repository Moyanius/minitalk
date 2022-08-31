/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jmoyano- <jmoyano-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/30 18:59:21 by jmoyano-          #+#    #+#             */
/*   Updated: 2022/08/31 19:41:10 by jmoyano-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINITALK_H
# define MINITALK_H
# define COLOR_GREEN  "\033[0;32m"
# define COLOR_RED  "\033[0;31m"
# define COLOR_BLUE  "\033[0;34m"
# define COLOR_END  "\033[0m"
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <signal.h>
#include "Printf/ft_printf.h"
#include "Moyano_library/libft.h"






void	confirm(int signal);
int		ft_atoi(const char *str);


#endif