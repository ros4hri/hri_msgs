cmake_minimum_required(VERSION 3.0.0)
project(hri_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  sensor_msgs
)

add_message_files(
    DIRECTORY msg
    FILES
    AudioFeatures.msg
    BodyPosture.msg
    EngagementLevel.msg
    Expression.msg
    FacialActionUnits.msg
    FacialLandmarks.msg
    Gaze.msg
    Gesture.msg
    Group.msg
    IdsList.msg
    IdsMatch.msg
    LiveSpeech.msg
    LookAtWithStyle.msg
    PointOfInterest2D.msg
    Skeleton2D.msg
    SoftBiometrics.msg

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


