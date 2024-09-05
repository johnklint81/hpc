#include <stdio.h>

void printf_from_snd_argument(int, char*[]);

int
main(
  int argc,
  char *argv[]
  )
{
  printf("command line arguments: \n");
  printf_from_snd_argument(argc, argv);

 return 0;
}
void
printf_from_snd_argument(
  int argc,
  char *argv[]
)
{
  for (int ix = 0; ix < argc; ++ix ) {
    printf("%s\n", argv[ix]);
  }
}
