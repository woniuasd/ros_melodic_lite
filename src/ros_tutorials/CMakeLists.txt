cmake_minimum_required(VERSION 3.0.2)
project(roscpp_tutorials)

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g")
else()
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O2")	
endif()
find_package(Boost REQUIRED COMPONENTS date_time thread)
find_package(catkin REQUIRED COMPONENTS message_generation rostime roscpp rosconsole roscpp_serialization)

include_directories(${catkin_INCLUDE_DIRS})
link_directories(${catkin_LIBRARY_DIRS})

generate_messages(DEPENDENCIES std_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs)

macro(rostutorial T)
  add_executable(${T} ${T}/${T}.cpp)
  target_link_libraries(${T} ${catkin_LIBRARIES} ${Boost_LIBRARIES})
  add_dependencies(${T} roscpp_tutorials_gencpp)
  install(TARGETS ${T}
    RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
endmacro()

foreach(dir
    listener
    talker1
    talker2
    )
  rostutorial(${dir})
endforeach()

add_executable(time_api_sleep time_api/sleep/sleep.cpp)
target_link_libraries(time_api_sleep ${catkin_LIBRARIES})
install(TARGETS time_api_sleep
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

install(FILES
  launch/talker_listener.launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)
