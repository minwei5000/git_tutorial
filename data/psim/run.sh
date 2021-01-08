#!/bin/bash

source /AutowareArchitectureProposal/install/setup.bash

bash -c "/data/psim/engage.sh" &

ros2 launch autoware_launch planning_simulator.launch.xml map_path:=/data/psim vehicle_model:=lexus sensor_model:=aip_xx1