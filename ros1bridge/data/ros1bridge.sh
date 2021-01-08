#!/bin/bash

export IP=`ifconfig eth0 | grep 'inet ' | awk '{ print $2 }'`
export ROS_MASTER_URI=http://${IP}:11311/
export ROS_IP=${IP}

bash -c "source /ros1_workspace/install/setup.bash && roscore" &

sleep 3s

source /ros1_bridge/install/setup.bash
rosparam load /data/topics.yaml
ros2 run ros1_bridge parameter_bridge
