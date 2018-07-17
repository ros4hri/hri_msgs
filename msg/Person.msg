# Refer to https://caidin.brl.ac.uk/ROS4HRI/main/wikis/Human-representation for
# detailled documentation.

# This message contains mostly static data, intended to be updated at low frequency


# See https://caidin.brl.ac.uk/ROS4HRI/main/wikis/Human-representation for the semantics and interplay between the 3 identifiers
string face_id # unique ID identifying the face of the person. This ID might or might not be set, and is not permanent.
string body_id # unique ID identifying the skeleton of the person. This ID might or might not be set, and is not permanent.
string person_id # unique ID, that typically persists over interactions - for instance, internal face recognition ID. This ID might or might not be set.

time last_seen # the special value 0 means 'never seen'.

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
