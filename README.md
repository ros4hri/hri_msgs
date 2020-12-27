hri_msgs
========

[![Build Status](https://travis-ci.com/ros4hri/hri_msgs.svg?branch=master)](https://travis-ci.com/ros4hri/hri_msgs)

This repository contains a set of ROS messages (ie, interfaces) of importance
for human-robot interaction applications.

The higher-level definitions and rationale can be found in [the ros4hri sister
repository](https://github.com/ros4hri/ros4hri).

Installation
------------

This is a standard ROS package, It can be installed by running the following set of
commands:

```
$ cd ~/src
$ git clone https://git.brl.ac.uk/ROS4HRI/hri_msgs.git
$ cd hri_msgs
$ mkdir build && cd build
$ cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=~/dev .. && make && make install
```

(of course, replace the `INSTALL_PREFIX` by your desired prefix)
