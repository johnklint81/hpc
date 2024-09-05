#include <stdio.h>

int
main(
    int argc,
    char *argv[]
    )
{
    int a;

    for (a = 0; a < 5; ++a) {
        if (a == 2)
            continue;
        printf("%i\n", a);
    }
    printf("%i\n", a);
    
    return 0;
}
