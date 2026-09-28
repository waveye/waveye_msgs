# Single tracked object with pose, velocity, shape and classification
# Modified from derived_object_msgs/Object

# Unique identifier for this tracked object
string id

# 6DOF pose (position and orientation) with covariance
geometry_msgs/PoseWithCovariance pose

# 6DOF pose (position and orientation) with covariance in the radar-local frame,
# i.e. the radar's TF frame (child of header.frame_id). Unlike `pose`, the orientation
# is a full 3D rotation (not yaw-only) when the radar is mounted with pitch or roll.
# Equal to `pose` for fused multi-radar output.
geometry_msgs/PoseWithCovariance pose_local

# Velocities (linear and angular) with covariance
geometry_msgs/TwistWithCovariance twist

# Object shape (length, width, height)
float64[3] bbox_dimensions

# Classification using waveye nomenclature
string object_class

# Optional tracking confidence [0.0-1.0]
float64 confidence
