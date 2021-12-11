#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2021 All rights reserved.
# @file: asm.bash
# @author: aliben.develop@gmail.com
# @created_date: 2021-12-11 17:46:25
# @last_modified_date: 2021-12-11 17:47:28
# @brief: Generate a template for new asm file
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
cat << EOF
;---Automatically Generated from template 'bash' wrote by @aliben---
; @Copyright (C) $CREATED_YEAR All rights reserved.
; @file: ${1##*/}
; @author: ${DEVELOPER_EMAIL}
; @created_date: $CREATED_TIME
; @last_modified_date: NO_LAST_MODIFIED_DATE
; @brief: TODO
;---***********************************************---

EOF
