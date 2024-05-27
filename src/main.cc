#include <cstdlib>
#include <iostream>

#include <plog/Log.h>
#include <plog/Initializers/RollingFileInitializer.h>

#include "calculator.h"


int main() {
	// Initialize the Logger
	plog::init(plog::debug, "Logfile.txt"); // Step 2: initialize the logger

	PLOGD << "main() called";
	
	Calculator calc;

	std::cout << "The sum of 3 and 4 is " << calc.add(3, 4) << ".\n";
	return EXIT_SUCCESS;
}
