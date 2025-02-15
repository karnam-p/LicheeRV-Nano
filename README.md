# LicheeRV-Nano
Driver and application development for **LicheeRV-Nano** which has riscv-c906(64-IMACFD+RVV) and **ArmA53** (Low Power + ARMv8-A)

SDK structure is as follows:
.
├── apps                    <- Application program with source and include dir ->
├── boot                    <- Bootloader software: Baremetal / with OS (U-BOOT) ->
├── build.sh                <- Main Execution bash script to trigger CMake->
├── CMakeLists.tx           <- Root CMake Script->
├── docs                    <- Contains implementation related and reference documents->
├── drivers
│   └── licheerv            <- Main Driver files->
│   └── licheerv-dd         <- Device Driver files->
├── inc                     <- Include files to be used by Apps->
├── out                     <- Output folder to store compiled objects and final executable images->
├── OS                      <- OS related files->
├── regs                    <- Hardware register files->
├── script                  <- Helper scripts:  elf analyser / core dump analyser, etc->
├── test                    <- Sanity and functional test cases to test Apps and drivers->
└── tools                   <- Compiler specific files, etc ->

*This arch is bound to change, parallel to the development cycle*

To built the code with default configurations do the following.

'chmod +x build.sh'
'./build.sh'
