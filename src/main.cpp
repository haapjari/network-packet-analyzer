#include <cstdlib>
#include <iostream>
#include <thread>

#include <plog/Log.h>
#include <plog/Initializers/RollingFileInitializer.h>

#include "calculator.hpp"

void loopFunction1() {
    for (int i = 0; i < 5; ++i) {
        std::cout << "Loop 1 - Iteration " << i << std::endl;
    }
}

void loopFunction2() {
    for (int i = 0; i < 5; ++i) {
        std::cout << "Loop 2 - Iteration " << i << std::endl;
    }
}

int main() {
	// plog::init(plog::debug, "Logfile.txt"); // Step 2: initialize the logger

	// PLOGD << "main() called";
	
	// Calculator calc;

	std::thread t1(loopFunction1);
    std::thread t2(loopFunction2);

    // Wait for both threads to finish
    t1.join();
    t2.join();

	std::cout << sizeof(std::int64_t) << std::endl;

	// return EXIT_SUCCESS;
	return 0;
}
