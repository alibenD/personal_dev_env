#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2017 All rights reserved.
# @name: connect_agv.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-11-20 10:30:10
# @last_modified_date: 2017-11-20 11:02:35
# @description: Connect All AGVs once with xterm using ssh
#---xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

AGV1=172.0.0.61
AGV2=172.0.0.62
AGV3=172.0.0.63
AGV4=172.0.0.64
AGV5=172.0.0.65
AGV6=172.0.0.66
AGV7=172.0.0.67

#---Shell Command
echo "Connect all AGVs."

xterm -geometry 80x20+0+0 -e "ssh agv1@$AGV1" &
xterm -geometry 80x20+0+300 -e "ssh agv2@$AGV2" &
xterm -geometry 80x20+0+600 -e "ssh agv3@$AGV3" &
xterm -geometry 80x20+484+0 -e "ssh agv4@$AGV4" &
xterm -geometry 80x20+484+300 -e "ssh agv5@$AGV5" &
xterm -geometry 80x20+484+600 -e "ssh agv6@$AGV6" &
xterm -geometry 80x20+968+0 -e "ssh agv7@$AGV7"
