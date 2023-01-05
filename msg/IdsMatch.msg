# This message encodes possible matches between transient IDs (face, body,
# voice) and permanent IDs (person), with their corresponding confidence level.
# Such messages should be published on the /humans/candidate_matches topic.
#
# confidence == 0.0 has the special meaning of: those two IDs are *not* associated.
# This can be use for instance if one of the ID (eg, a face id) is not valid anymore
# (face not tracked anymore)
#
# Note that setting only one of `id1` or `id2` is invalid. Likewise, `id1` and
# `id2` can not be equal.
#
# ## Examples
#
# For instance, a face recognition module might publish the following message
# to indicate that face 'a3eb4' has been recognised with 63% confidence as
# person 'b31ad':
#
# {id1: 'a3eb4', id1_type: FACE, id2: 'b31ad', id2_type: PERSON, confidence:
# 0.63, }
#
# Another example: a module that detect both faces and skeleton might publish a
# 100% confidence match between the two:
#
# {id1: 'ff424', id1_type: FACE, id2: '850d1', id2_type: BODY, confidence:
# 1.0, }
#

int8 UNSET=0
int8 PERSON=1
int8 FACE=2
int8 BODY=3
int8 VOICE=4

string id1
int8 id1_type
string id2
int8 id2_type

float32 confidence
