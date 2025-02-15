cmake_minimum_required(VERSION 3.28.3)

project(LicheeRV DESCRIPTION "SDK for Sipeed LicheeRV Board")

# Collect all header directories
file(GLOB_RECURSE HEADER_FILES "regs/*.h" "inc/*.h" "drivers/**/*.h" "apps/inc/*.h")
set(HEADER_DIRS "")
foreach(header ${HEADER_FILES})
    get_filename_component(dir ${header} DIRECTORY)
    list(APPEND HEADER_DIRS ${dir})
endforeach()
list(REMOVE_DUPLICATES HEADER_DIRS)

#logging
message(STATUS "Collected header directories: ${HEADER_DIRS}")


# Collect all C files recursively
file(GLOB_RECURSE SOURCES "boot/*.c" "drivers/**/*.c" "apps/**/*.c")
#logging
message(STATUS "Collected source files: ${SOURCES}")


add_executable(${PROJECT_NAME} ${SOURCES})
target_include_directories(${PROJECT_NAME} PUBLIC ${HEADER_DIRS})
message(STATUS "DONE!")

