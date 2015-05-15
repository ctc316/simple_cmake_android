#start msg
cmake_minimum_required(VERSION 2.8)
message(\n=======\ \ Compile\ CMakeLists\ by\ CMake-${CMAKE_VERSION} \ \ =======\n)


# config
set(project_name test_cmake_android)
set(VERSION 0.0)
project(${project_name}-VERSION) 

message(Configure\ Project:\ ${PROJECT_NAME})
message(CMAKE_SOURCE_DIR:\ ${CMAKE_SOURCE_DIR})

file(GLOB_RECURSE source_files "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c")
add_library(test_cross ${source_files})


# optional
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99")


#end msg
message(\n====================================================\n)
