/*
** EPITECH PROJECT, 2023
** test_chocolatine
** File description:
** criterion
*/

#include <criterion/criterion.h>

Test(test, this)
{
    int nb = 0;
    nb += 1;
    cr_assert_eq(nb, 1);
}
