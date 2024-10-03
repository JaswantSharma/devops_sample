#include <iostream>
#include "add_me.h"

// Main function for the application
int main() {
    int a = 5, b = 3;
    std::cout << "The sum of " << a << " and " << b << " is " << add_me(a, b) << std::endl;
    return 0;
}
