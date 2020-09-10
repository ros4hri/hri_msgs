# Refer to https://caidin.brl.ac.uk/ROS4HRI/main/wikis/Human-representation for
# detailled documentation.

# This message contains mostly static data, intended to be updated at low frequency


# See https://caidin.brl.ac.uk/ROS4HRI/main/wikis/Human-representation for the
# semantics and interplay between the 3 identifiers

# unique ID identifying the face of the person. This ID might or might not be
# set, and is not permanent.
string face_id

# unique ID identifying the skeleton of the person. This ID might or might not
# be set, and is not permanent.
string body_id

# unique ID, that typically persists over interactions - for instance, internal
# face recognition ID. This ID might or might not be set.
string person_id

# basic emotion for each person 
Emotion[] emotions

#age and gender 
AgeGender[] agegenders

# yaw, roll and pitch of each person detected
HeadPose[] headposes

time last_seen # the special value 0 means 'never seen'.

# This value encodes the confidence the robot has abouti knowing the person's location.
# - location_known_confidence = 0 means that the robot has no knowledge of the
#   person's location at all
# - location_known_confidence = 1 means that the robot currently sees the
# person - 0 < location_known_confidence < 1 means that the robot has some,
# more or less reliable, knowledge of the human location. This value would
# typically start at one just after a human has last been seen, and decrease
# over time (until the person is seen again, in which case it would jump back
# to 1)
#
# Important notes:
# - this confidence value should not be confused with a location
#   uncertainty (typically represented with a covariance matrix) about the exact
#   physical location of the person.  Instead, location_known_confidence
#   represents whether or not the robot has a valid estimate of the person's
#   location.
# - if person_id is not set (ie, the person is not yet recognised), location_known_confidence = 0.
#   In that case, one may still rely on the TF frames 'face_<face_id>' and/or 'body_<body_id>'
#   to get an estimate of where the human is located.
# - if location_known_confidence > 0, a TF frame named 'person_<person_id>' must exist.
# - if location_known_confidence < 1, the TF frame 'person_<person_id>' is
#   expected to be the last known location of the person
float32 location_known_confidence

string name

# demographics
uint8 age
float32 age_confidence

uint8 UNDEFINED=0
uint8 FEMALE=1
uint8 MALE=2
uint8 gender # one of UNDEFINED, FEMALE, MALE
float32 gender_confidence 

string native_language # use IETF language codes like EN_gb. No value set means unknown language.
