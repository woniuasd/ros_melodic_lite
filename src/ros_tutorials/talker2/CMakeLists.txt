include_directories(${catkin_INCLUDE_DIRS})
add_executable(talker2 talker2.cpp)
target_link_libraries(talker2 ${catkin_LIBRARIES})
install(TARGETS talker2
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
