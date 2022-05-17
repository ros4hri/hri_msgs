# This message encodes possible matches between transient IDs (face, body,
# voice) and permanent IDs (person), with their corresponding confidence level.
# Such messages should be published on the /humans/candidate_matches topic.
#
# confidence == 0.0 has the special meaning of: those two IDs are *not* matched.
# This can be use for instance if one of the ID (eg, a face_id) is not valid anymore
# (face not tracked anymore)
#
# if only *one* of `face_id`, `body_id` or `voice_id` is set, and `person_id`
# is *not* set, then:
#  - an 'anonymous' person is created, whose ID will match the face/body/voice ID
#  - that person's `/anonymous` subtopic will publish the value 'true'
#  - the confidence value is ignored
#
# Note that setting more that 2 IDs out of `face_id`, `body_id`, `voice_id`,
# `person_id` is invalid.  Likewise, `person_id` can *not* be the only field
# set.
#
# ## Examples
#
# For instance, a face recognition module might publish the following message
# to indicate that face 'a3eb4' has been recognised with 63% confidence as
# person 'b31ad':
#
# {face_id: 'a3eb4', body_id: '', voice_id: '', person_id: 'b31ad' confidence:
# 0.63, }
#
# Another example: a module that detect both faces and skeleton might publish a
# 100% confidence match between the two:
#
# {face_id: 'ff424', body_id: '850d1', voice_id: '', person_id: '' confidence:
# 1.0, }
#
# Example of an 'anonymous' face: a face _detector_ (ie, not performing face
# recognition) can publish the following message to inform the system that an
# (so far anonymous) person has been detected:
#
# {face_id: 'ff424', body_id: '', voice_id: '', person_id: '' confidence: 0.0, }
#

string face_id
string body_id
string voice_id
string person_id

float32 confidence
