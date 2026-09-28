# Single tracked object with pose, velocity, shape and classification
# Modified from derived_object_msgs/Object

# Unique identifier for this tracked object
string id

# 6DOF pose (position and orientation) with covariance
geometry_msgs/PoseWithCovariance pose

# Velocities (linear and angular) with covariance
geometry_msgs/TwistWithCovariance twist

# Object shape (length, width, height)
float64[3] bbox_dimensions

# Classification using waveye nomenclature
string object_class

# Optional tracking confidence [0.0-1.0]
float64 confidence
