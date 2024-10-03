#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Step 1: Build the main program
echo "Step 1: Starting the build process..."
make
echo "Step 1 complete: add_me.exe built."

# Step 2: Check if the add_me binary was created
if [ -f "add_me" ]; then
    echo "Step 2 complete: Successfully created add_me.exe."

    # Step 3: Change directory to test and build the test program
    cd test
    echo "Step 3: Changing directory to test and executing make..."
    make

    # Step 4: Check for errors during the build
    if [ $? -eq 0 ]; then
        echo "Step 4 complete: Successfully built the test program."

        # Step 5: Run the test binary and output results to XML
        echo "Step 5: Running test_add_me..."
        ./test_add_me --gtest_output=xml:test_add_me.xml

        echo "Step 5 complete: Tests executed successfully. Results saved to test_add_me.xml."
    else
        echo "Error: Failed to build the test program."
        exit -1
    fi
else
    echo "Error: add_me.exe was not created."
    exit -1
fi

# Final message
echo "Build and test process completed."
exit 0
