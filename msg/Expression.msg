# Represents a human facial expression, either in a categorical way, or
# using the valence/arousal model of emotions


# Eckman model of emotions
uint8 NEUTRAL=0
uint8 HAPPY=1
uint8 SAD=2
uint8 ANGER=3
uint8 SURPRISE=4
uint8 DISGUST=5
uint8 FEAR=6

uint8 expression                     # The expression for the detected face in roi

# Valence/Arousal model of emotions
float32 valence # from -1.0 to +1.0
float32 arousal # from -1.0 to +1.0
