#!/bin/bash
echo ">>> Installing PX4 dependencies..."
bash Tools/setup/ubuntu.sh

echo ">>> Building PX4 with Gazebo..."
make px4_sitl_default gz_x500
