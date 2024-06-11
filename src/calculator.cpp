#include "calculator.h"
#include <iostream>

Calculator::Calculator() {
    std::cout << "Calculator object created.\n";
}

Calculator::~Calculator() {
    std::cout << "Calculator object destroyed.\n";
}

int Calculator::add(int a, int b) {
    return a + b;
}

