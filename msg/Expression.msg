# Represents a human facial expression, either in a categorical way, or
# using the valence/arousal model of emotions


# Eckman model of emotions
uint8 NEUTRAL=0
uint8 happy=1
uint8 sad=2
uint8 anger=3
uint8 SURPRISE=4
uint8 DISGUST=5
uint8 FEAR=6

uint8 expression

# Valence/Arousal model of emotions
float32 valence # from -1.0 to +1.0
float32 arousal # from -1.0 to +1.0
