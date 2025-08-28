To install:
1. source your ROS2 environment, e.g. `source /opt/ros/foxy/setup.sh`
2. Navigate to workspace root:
```
cd ros2_ws
```

3. Clean any previous builds (optional but recommended)
```
rm -rf build/waveye_msgs install/waveye_msgs
```

4. Build package:
```
colcon build --packages-select waveye_msgs --symlink-install
```

5. source the workspace
```
source install/setup.bash
```

6. verify installation:
```
# Check if messages are available
ros2 interface list | grep waveye_msgs

# Show message definition
ros2 interface show waveye_msgs/msg/TrackedObject
ros2 interface show waveye_msgs/msg/TrackedObjectList

For easier debugging, can add
```
alias build_ros='cd ~/waveye/mantis/ros2_ws && pyenv activate ros2-env && rm -rf build/waveye_msgs install/waveye_msgs && source /opt/ros/foxy/setup.bash && colcon build --packages-select waveye_msgs --symlink-install && source install/setup.bash && cd -'
```
