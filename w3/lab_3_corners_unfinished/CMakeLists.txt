cmake_minimum_required( VERSION 3.5.1 )

project(lab_3_corners)

# Compiler flags
if (MSVC)
  set(compiler_options /W4)
  add_definitions(/D_USE_MATH_DEFINES)
else ()
  set(compiler_options -Wall -Wextra -Wpedantic)
endif (MSVC)

# Add libraries.
find_package(OpenCV 3.3.1 REQUIRED)
find_package(Eigen3 REQUIRED)

add_executable(${PROJECT_NAME}
  main.cpp
  circle.h
  circle.cpp
  circle_estimator.h
  circle_estimator.cpp
  corner_detector.h
  corner_detector.cpp
  filters.h
  filters.cpp
  lab_3.h
  lab_3.cpp)

target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS} Eigen3::Eigen)
target_compile_options(${PROJECT_NAME} PRIVATE ${compiler_options})
set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD_REQUIRED ON CXX_STANDARD 11)
