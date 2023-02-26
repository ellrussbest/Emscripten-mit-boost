project(boost)
cmake_minimum_required(VERSION 3.5.1)


# add_definitions(-std=c++11 -O3)

# add_library(
#   boosttest 
#   # main.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/regex/src/regex.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/regex/src/posix_api.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/regex/src/regex_debug.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/regex/src/static_mutex.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/regex/src/wide_posix_api.cpp
# )

# file(GLOB SOURCES src/*.cpp)
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/public")
# add_executable(${PROJECT_NAME} ${SOURCES})

add_executable(
  boost
  main.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/regex/src/regex.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/regex/src/posix_api.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/regex/src/regex_debug.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/regex/src/static_mutex.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/regex/src/wide_posix_api.cpp
)


# SET(CMAKE_EXECUTABLE_SUFFIX ".html")
include_directories(
  ${CMAKE_SOURCE_DIR}/boost_1_81_0/
  # ${CMAKE_SOURCE_DIR}/include/
)

# target_link_directories(boosttest PRIVATE ${CMAKE_SOURCE_DIR}/boost_1_81_0/stage/lib)

target_link_libraries(boost PRIVATE boosttest 
# boost_regex
)
# target_link_libraries(boosttest boost_regex)
target_link_directories(
  boost 
  PRIVATE 

  # {CMAKE_SOURCE_DIR}/boost_1_81_0/stage/lib/
  ${CMAKE_SOURCE_DIR}/lib/
)
# SET(CMAKE_EXECUTABLE_SUFFIX ".html")

set(CMAKE_EXECUTABLE_SUFFIX ".html")
set_target_properties(boost PROPERTIES LINK_FLAGS "-s WASM=0 -s EXPORTED_FUNCTIONS='[_main]'")



# if(JS_ONLY)
# 	message(STATUS "Setting compilation target to native JavaScript")
# 	set(CMAKE_EXECUTABLE_SUFFIX ".html")
# 	set_target_properties(boos PROPERTIES LINK_FLAGS "-s WASM=0 -s EXPORTED_FUNCTIONS='[_main]'")
# else(JS_ONLY)
# 	message(STATUS "Setting compilation target to WASM")
# 	set(CMAKE_EXECUTABLE_SUFFIX ".wasm.js")
# 	set_target_properties(boost PROPERTIES LINK_FLAGS "-s WASM=1 -s EXPORTED_FUNCTIONS='[_main]'")
# endif(JS_ONLY)

