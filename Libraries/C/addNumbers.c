int addNumbers (int x, int y) {
    return x + y;
}

/**
 * gcc -c addNumbers.c subNumbers.c
 * 
 * ar cr libmath.lib addNumbers.o subNumbers.o
 * 
 * ar t libmath.lib
*/