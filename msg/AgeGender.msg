# this message discribes the age and gender of each person detected

uint8 age
float32 age_confidence

uint8 UNDEFINED=0
uint8 FEMALE=1
uint8 MALE=2
uint8 gender # one of UNDEFINED, FEMALE, MALE
float32 gender_confidence 
FaceROIStamped[] roi   # region of interest for a person's face
