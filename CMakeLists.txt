cmake_minimum_required(VERSION 3.0.0)
project(hri_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  sensor_msgs
  audio_common_msgs
)

add_message_files(
    DIRECTORY msg
    FILES
    AudioDataIdStamped.msg
    AudioFeatures.msg
    BodyPosture.msg
    BoolIdStamped.msg
    EngagementLevel.msg
    Expression.msg
    FacialActionUnits.msg
    FacialLandmarks.msg
    Float32IdStamped.msg
    Gaze.msg
    Gesture.msg
    Group.msg
    IdHeader.msg
    IdsList.msg
    IdsMatch.msg
    ImageIdStamped.msg
    JointStateIdStamped.msg
    LiveSpeech.msg
    NormalizedPointOfInterest2D.msg
    NormalizedPointOfInterest2DStamped.msg
    NormalizedRegionOfInterest2D.msg
    Skeleton2D.msg
    SoftBiometrics.msg
    StringIdStamped.msg
    # list here the .msg files
)


generate_messages(
    DEPENDENCIES
    sensor_msgs
    audio_common_msgs
)

catkin_package(
    CATKIN_DEPENDS 
    sensor_msgs
)


