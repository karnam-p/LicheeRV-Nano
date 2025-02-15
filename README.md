# LicheeRV-Nano

This repository contains driver and application development for the **LicheeRV-Nano**, featuring:
- **RISC-V C906 (64-IMACFD+RVV)**
- **ARM Cortex-A53 (Low Power + ARMv8-A)**

## SDK Structure
```
.
├── apps        <- Application programs with source and include directories
├── boot        <- Bootloader software: Baremetal / with OS (U-Boot)
├── build.sh    <- Main execution bash script to trigger CMake
├── CMakeLists.txt <- Root CMake script
├── docs        <- Implementation-related and reference documents
├── drivers
│   ├── licheerv    <- Main driver files
│   ├── licheerv-dd <- Device driver files
├── inc         <- Include files used by applications
├── out         <- Output folder for compiled objects and final executable images
├── OS          <- OS-related files
├── regs        <- Hardware register files
├── script      <- Helper scripts (e.g., ELF analyzer, core dump analyzer, etc.)
├── test        <- Sanity and functional test cases for applications and drivers
└── tools       <- Compiler-specific files, etc.
```
*This architecture is subject to change in parallel with the development cycle.*

## Building the Code
To build the code with the default configurations, execute the following commands:
```sh
chmod +x build.sh
./build.sh
```

