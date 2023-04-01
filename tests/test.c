/*
** EPITECH PROJECT, 2023
** test_chocolatine
** File description:
** criterion
*/

#include <criterion/criterion.h>

Test(test, this)
{
    int i = 0;
    i++;
    cr_assert_eq(i, 1);
}
