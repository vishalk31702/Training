#include <iostream>
#include "functions.h"
//include functions.h to declare the functions print_hello and factorial of this header file
using namespace std;

int main(){
   print_hello();
   cout << endl;
   cout << "The factorial of 5 is " << factorial(5) << endl;
   return 0;
}