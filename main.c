#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern size_t ft_strlen(const char *str);
extern void *ft_memset(void *b, int c, size_t len);
extern void *ft_strcpy(char *dest, const char *src);
extern void hello_world();

void memset_test()
{
    char str2[] = "Hello, World!";
    ft_memset(str2, 'a', 5);
    printf("ft_memset: %s\n", str2);
    char str3[] = "Hello, World!";
    memset(str3, 'a', 5);
    printf("memset: %s\n\n", str3);
}

void strcpy_test()
{
    char src[] = "Hello, World!";
    char dest[20];
    ft_strcpy(dest, src);
    printf("ft_strcpy: %s\n", dest);
    char src2[] = "Hello, World!";
    char dest2[20];
    strcpy(dest2, src2);
    printf("strcpy: %s\n\n", dest2);
}

void strlen_test(void)
{
    char str[] = "Hello, World!";
    printf("ft_strlen: %zu\n", ft_strlen(str));
    printf("strlen: %zu\n\n", strlen(str));
}

int main()
{
    // hello_world();
    // strlen_test();

    // memset_test();

    strcpy_test();
    return 0;
}