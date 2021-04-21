#!/bin/bash

sleep 3s

ros2 topic pub --qos-durability transient_local --qos-reliability reliable -1 /initialpose geometry_msgs/msg/PoseWithCovarianceStamped \
"{header: {stamp: {sec: 0, nanosec: 0}, frame_id: 'viewer'}, \
pose: {pose: {position: {x: 37.38, y: 0.18, z: 0.0 }, \
orientation: {x: 0.0, y: 0.0, z: -0.9714529302321818, w: 0.23723238468494914 } }, \
covariance: [0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.06853891945200942] } }"

