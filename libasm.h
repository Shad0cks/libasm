#include <unistd.h>
#include <stdio.h>
#include <errno.h>

int ft_strlen(char * str);
int ft_write(int fd, char* str, int len);
char * ft_strcpy(char * destination, const char * source);
int ft_strcmp(char * str1, char * str2);
ssize_t ft_read(int fd, void *buf, size_t count);
char * ft_strdup( const char * source );

