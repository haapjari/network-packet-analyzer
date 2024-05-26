#include <cstdlib>
#include <iostream>

class Calculator {
public:
	Calculator() {
		std::cout << "Calculator object created.\n";
	}

	~Calculator() {
		std::cout << "Calculator object destroyed.\n";
	}

	int add(int a, int b) {
		return a + b;
	}
};

int main() {
	Calculator calc;
	std::cout << "The sum of 3 and 4 is " << calc.add(3, 4) << ".\n";
	return EXIT_SUCCESS;
}
