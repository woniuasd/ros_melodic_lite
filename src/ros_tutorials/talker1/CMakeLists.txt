include_directories(${catkin_INCLUDE_DIRS})
add_executable(talker1 talker1.cpp)
target_link_libraries(talker1 ${catkin_LIBRARIES})
install(TARGETS talker1
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
