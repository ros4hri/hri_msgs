# This contains the 3D position of a point of interest.
# header.frame_id identifies the TF frame (eg, 'map').
# header.stamp is the time of observation.
# c is a confidence level (between 0. and 1.) associated to that POI.
std_msgs/Header header
float32 x
float32 y
float32 z
float32 c
