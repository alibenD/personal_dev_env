#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: x_docker.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-04-12 13:31:47
# @last_modified_date: 2018-04-12 14:13:40
# @description: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
set -x
open -a XQuartz
export ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip
