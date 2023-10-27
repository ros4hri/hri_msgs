cmake_minimum_required(VERSION 3.8)
project(hri_msgs)

# Default to C++17
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(sensor_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/AudioFeatures.msg"
  "msg/BodyPosture.msg"
  "msg/EngagementLevel.msg"
  "msg/Expression.msg"
  "msg/FacialActionUnits.msg"
  "msg/FacialLandmarks.msg"
  "msg/Gaze.msg"
  "msg/Gesture.msg"
  "msg/Group.msg"
  "msg/IdsList.msg"
  "msg/IdsMatch.msg"
  "msg/LiveSpeech.msg"
  "msg/NormalizedPointOfInterest2D.msg"
  "msg/NormalizedPointOfInterest2DStamped.msg"
  "msg/NormalizedRegionOfInterest2D.msg"
  "msg/Skeleton2D.msg"
  "msg/SoftBiometrics.msg"
  DEPENDENCIES std_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
