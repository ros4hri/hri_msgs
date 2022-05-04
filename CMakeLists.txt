cmake_minimum_required(VERSION 3.0.0)
project(hri_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  sensor_msgs
)

add_message_files(
    DIRECTORY msg
    FILES
    SoftBiometrics.msg
    BodyPosture.msg
    Gesture.msg
    Expression.msg
    EngagementLevel.msg
    FacialActionUnits.msg
    FacialLandmarks.msg
    Gaze.msg
    Group.msg
    Skeleton2D.msg
    PointOfInterest2D.msg
    IdsList.msg
    IdsMatch.msg

    # list here the .msg files
)


generate_messages(
    DEPENDENCIES
    sensor_msgs
)

catkin_package(
    CATKIN_DEPENDS 
    sensor_msgs
)


