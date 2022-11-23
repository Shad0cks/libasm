#include "libasm.h"
#include <string.h>
#include <stdlib.h>
int main (int argc, char *argv[])
{
  char str1[20] = "C programming\n";
  char str2[20];
  ft_write(1, "Salut a tous\n", 13);
  printf("size : %d\n", ft_strlen("Salut a tous\n"));
  printf("copy : %s", ft_strcpy(str2, str1));
  printf("cmp : %d\n", ft_strcmp(str1, "C programming\nt"));
  char * str3 =  ft_strdup(str1);
  printf("dup : %s\n", str3);
  free(str3);
  return 0;
}

