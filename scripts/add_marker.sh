#!/bin/sh
xterm  -e  " cd ../..; source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch" & 
sleep 5
xterm  -e  " cd ../..; source devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch" & 
sleep 5
xterm  -e  " cd ../..; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" & 
sleep 5
xterm  -e  " cd ../..; source devel/setup.bash; rosrun add_markers add_markers"
