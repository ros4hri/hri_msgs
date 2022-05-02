# This message encodes possible matches between transient IDs (face, body,
# voice) and permanent IDs (person), with their corresponding confidence level.
# Such messages should be published on the /humans/candidate_matches topic.
#
# For instance, a face recognition module might publish the following message
# to indicate that face 'a3eb4' has been recognised with 63% confidence as
# person 'b31ad':
#
# {face_id: 'a3eb4', 
#  body_id: '', 
#  voice_id: '', 
#  person_id: 'b31ad'
#  confidence: 0.63, 
# }
#
# Another example: a module that detect both faces and skeleton might publish
# a 100% confidence match between the two:
#
# {face_id: 'ff424', 
#  body_id: '850d1', 
#  voice_id: '', 
#  person_id: ''
#  confidence: 1.0, 
# }

string face_id
string body_id
string voice_id
string person_id

float32 confidence
