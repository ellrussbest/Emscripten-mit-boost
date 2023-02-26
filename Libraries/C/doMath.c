#include <time.h>
#include <stdio.h>
#include <stdlib.h>

#include "mathtest.h" //static library

int main () {
    // needed to crate a random nuber
    time_t t;
    srand((unsigned) time(&t));
    int rNuma = rand();
    int rNumb = rand();

    int answer;

    answer = addNumbers(rNuma, rNumb);
    printf("%d + %d = %d\n", rNuma, rNumb, answer);

    answer = subNumbers(rNuma, rNumb);
    printf("%d - %d = %d\n", rNuma, rNumb, answer);

    return 0;
}

/**
 * gcc doMath.c -l libmath -o doMath -I include -L lib
*/