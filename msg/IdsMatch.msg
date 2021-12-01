# This message encodes possible matches between transient IDs (face, body,
# voice) and permanent IDs (person), with their corresponding confidence level.
#
# For instance, a face recognition module might publish the following message
# to indicate that face 'a3eb4' has been recognised with 63% confidence as
# person 'b31ad':
#
# {face_id: 'a3eb4', 
#  face_match_confidence: 0.63, 
#  body_id: '', 
#  body_match_confidence: 0.0,
#  voice_id: '', 
#  voice_match_confidence: 0.0, 
#  person_id: 'b31ad'
# }

string face_id
float32 face_match_confidence

string body_id
float32 body_match_confidence

string voice_id
float32 voice_match_confidence

string person_id
