#!/bin/bash

# Set build directory
BUILD_DIR="out"

# Remove old build directory 
rm -rf $BUILD_DIR/*

# Run CMake
cmake -S . -B $BUILD_DIR

# Set path to the generated CMake files
cd $BUILD_DIR

# Compile using make
make -j$(nproc)  # Uses all available cores for faster compilation

# Run the executable
./LicheeRV  # executable name
