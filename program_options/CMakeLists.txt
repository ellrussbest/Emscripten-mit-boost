project(boost)
cmake_minimum_required(VERSION 3.5.1)


# add_definitions(-std=c++11 -O3)


## CREATE A LIBRARY USING THE SOURCE FILES
# add_library(
#   boosttest 
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/cmdline.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/config_file.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/convert.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/options_description.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/parsers.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/positional_options.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/split.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/utf8_codecvt_facet.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/value_semantic.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/variables_map.cpp
#   ${CMAKE_SOURCE_DIR}/boost_1_81_0/libs/program_options/src/winmain.cpp

# )

# file(GLOB SOURCES src/*.cpp)
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/public")
# add_executable(${PROJECT_NAME} ${SOURCES})

## CREATE YOUR EXECUTABLE FILE HERE
add_executable(
  boost
  main.cpp
)


include_directories(
  ${CMAKE_SOURCE_DIR}/boost_1_81_0/
)


target_link_libraries(boost PRIVATE boosttest)


target_link_directories(
  boost 
  PRIVATE 
  ${CMAKE_SOURCE_DIR}/lib/
)

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

