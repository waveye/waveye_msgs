# List of tracked objects with header for timestamp and frame info

# Standard header with timestamp and coordinate frame
std_msgs/Header header

# Number of valid objects in this message
uint32 num_objects

# Array of tracked objects
waveye_msgs/TrackedObject[] objects

# Optional: tracking method/sensor source
string tracking_source
