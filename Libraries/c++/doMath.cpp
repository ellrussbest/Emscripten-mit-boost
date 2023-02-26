#include <time.h>
#include <iostream>

#include "mathtest.h" //static library

using namespace std;

int main()
{
    // needed to crate a random nuber
    time_t t;
    srand((unsigned)time(&t));
    int rNuma = rand();
    int rNumb = rand();

    int answer;

    answer = addNumbers(rNuma, rNumb);
    cout << rNuma << " + " << rNumb << " " << answer << endl;

    answer = subNumbers(rNuma, rNumb);
    cout << rNuma << " - " << rNumb << " " << answer << endl;

    return 0;
}