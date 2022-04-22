# 精简版ros
删除无关包，尽量做到精简，用于ros源码分析
## 依赖库安装

* apt-get install vim cmake make gcc g++
* apt-get install python python-pip
* pip install   empy --user
* pip install   catkin_pkg --user
* apt-get install libboost1.62-all-dev
* pip install pyyaml --user
* pip install rospkg --user
* pip install defusedxml --user
* pip install netifaces --user
* apt-get install libtinyxml2-dev
* install console_bridge

  ```
  git clong git@github.com:ros/console_bridge.git
  mkdir -p console_bridge/build && cd console_bridge/build
  cmake .. && make -j8
  make install
  ```
