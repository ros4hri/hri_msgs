hri_msgs
========

**Note: this branch only contains ROS 1 support. For ROS 2, check the `humble-devel` branch.**

This repository contains a set of ROS messages (ie, interfaces) of importance
for human-robot interaction applications.

They are directly related to the ROS REP-155.

Installation
------------

This is a standard catkin ROS package.

It can be installed via `catkin make` or manually, by running the following set
of commands:

```
$ cd ros_ws/src
$ git clone https://github.com/ros4hri/hri_msgs.git
$ cd hri_msgs
$ mkdir build && cd build
$ cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/ros/noetic .. && make && make install
```

(of course, replace the `INSTALL_PREFIX` by your desired prefix)
