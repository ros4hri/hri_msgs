# Copyright (c) 2024 PAL Robotics S.L. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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

find_package(ament_cmake_auto REQUIRED)
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
  "msg/PointOfInterest3D.msg"
  "msg/PointOfInterest3DStamped.msg"
  "msg/Skeleton2D.msg"
  "msg/SoftBiometrics.msg"
  DEPENDENCIES std_msgs
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  ament_auto_find_test_dependencies()
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package(USE_SCOPED_HEADER_INSTALL_DIR)
