# CMakeList.txt : Top-level CMake project file, do global configuration
# and include sub-projects here.
#
cmake_minimum_required (VERSION 3.8)

project ("ActionsDemo" C)

# Include sub-projects.

add_executable(ActionsDemo hello.c)

find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK REQUIRED gtk+-3.0)

target_link_libraries(ActionsDemo PRIVATE ${GTK_LIBRARIES})

# Add other flags to the compiler
target_compile_definitions(ActionsDemo PRIVATE  ${GTK_CFLAGS_OTHER})


# Setup CMake to use GTK+, tell the compiler where to look for headers
# and to the linker where to look for libraries
target_include_directories(ActionsDemo PRIVATE ${GTK_INCLUDE_DIR})
target_link_directories(ActionsDemo PRIVATE ${GTK_LIBRARY_DIR})
