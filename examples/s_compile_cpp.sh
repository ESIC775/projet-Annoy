#!/bin/bash

for cpp in $(find . -type f -name "*.cpp"); do
    echo "compiling ${cpp}..."
    c++ -Wall "${cpp}" -o $(basename "${cpp}" .cpp) -mavx2 -O2 -DANNOYLIB_MULTITHREADED_BUILD -std=c++14 -pthread
    echo "Done"
done