# CMakeList.txt : Top-level CMake project file, do global configuration
# and include sub-projects here.
#
cmake_minimum_required (VERSION 3.8)

project ("ActionsDemo")

# Include sub-projects.

find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK REQUIRED gtk+-3.0)

target_link_libraries(ActionsDemo PRIVATE ${GTK+_LIBRARIES})

# Add other flags to the compiler
target_compile_definitions(ActionsDemo PRIVATE ${GTK+_CFLAGS_OTHER})


# Setup CMake to use GTK+, tell the compiler where to look for headers
# and to the linker where to look for libraries
target_include_directories(ActionsDemo PRIVATE ${GTK+_INCLUDE_DIRS})
target_link_directories(ActionsDemo PRIVATE ${GTK+_LIBRARY_DIRS})
