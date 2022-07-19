# Specify the target of the robot's gaze as a 3D point. A desired 'style'
# policy can be specified to control how the gaze motion should be executed
# (for instance, sudden movement, slow shift, etc.)

# default policy: both eyes and head joints (eg neck) are used, the resulting
# 'style' is a smooth combination of both
int8 DEFAULT = 0

# eyes-only policy: only the eyes (if available) should move
int8 EYES_ONLY = 1

# head-only policy: only the head joints (typically, the neck) should move
int8 HEAD_ONLY = 2

int8 style

geometry_msgs/PointStamped target
