cmake_minimum_required(VERSION 2.8.3)
project(python_bindings_tutorial)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  roscpp_serialization
  std_msgs
)

## Both Boost.python and Python libs are required.
find_package(Boost REQUIRED COMPONENTS python)
find_package(PythonLibs 2.7 REQUIRED)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
catkin_python_setup()

###################################
## catkin specific configuration ##
###################################
catkin_package(
        INCLUDE_DIRS include
        LIBRARIES add_two_ints _add_two_ints_wrapper_cpp
        CATKIN_DEPENDS roscpp
        #  DEPENDS system_lib
)

###########
## Build ##
###########

# include Boost and Python.
include_directories(
        include
        ${catkin_INCLUDE_DIRS}
        ${Boost_INCLUDE_DIRS}
        ${PYTHON_INCLUDE_DIRS}
        )

## Declare a cpp library
add_library(add_two_ints src/add_two_ints.cpp)
add_library(_add_two_ints_wrapper_cpp src/add_two_ints_wrapper.cpp)

## Specify libraries to link a library or executable target against
target_link_libraries(add_two_ints ${catkin_LIBRARIES})
target_link_libraries(_add_two_ints_wrapper_cpp add_two_ints ${catkin_LIBRARIES} ${Boost_LIBRARIES})

# Don't prepend wrapper library name with lib and add to Python libs.
set_target_properties(_add_two_ints_wrapper_cpp PROPERTIES
        PREFIX ""
        LIBRARY_OUTPUT_DIRECTORY ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_PYTHON_DESTINATION}
)