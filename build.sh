#! /bin/bash
rm -rf build_isolated devel_isolated install_isolated
./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Debug -DCATKIN_ENABLE_TESTING=OFF
