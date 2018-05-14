cmake_minimum_required(VERSION 2.8.3)
project(hri_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  actionlib_msgs
  geometry_msgs
  # add here the other types your message depends on
)

add_message_files(
    DIRECTORY msg
    FILES
    PixelCoordinate.msg
    FacialLandmarks.msg
    # list here the .msg files
)

add_action_files(
    DIRECTORY action
    FILES
    # list here the .action files
)

add_service_files(
    DIRECTORY srv
    FILES
    # list here the .srv files
)

generate_messages(
    DEPENDENCIES
    actionlib_msgs
    geometry_msgs
    # repeat here the dependencies
)

catkin_package(
    CATKIN_DEPENDS 
    actionlib_msgs
    geometry_msgs
    # repeat here the dependencies
)


