#!/bin/bash
#---Generated from template 'bash' wrote by @aliben---
# 
# @name: bashnew.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-21 17:42:35
# @last_modified_date: 2019-08-19 16:47:58
# @brief: Generate a template for new bash file
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`


#---Shell Command
cat << EOF
#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) $CREATED_YEAR All rights reserved.
# @file: ${1##*/}
# @author: ${DEVELOPER_EMAIL}
# @created_date: $CREATED_TIME
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=\`date '+%Y-%m-%d %H:%M:%S'\`
CREATED_YEAR=\`date '+%Y'\`
CLEAN=\$1
#---Shell Command
if [[ ! -d "build" ]]; then
  mkdir -p build
fi
if [[ "\${CLEAN}" == "clean" ]]; then
  rm -rf bin/*
  rm -rf build/*
  rm -rf lib/*
fi

if [[ "\${CLEAN}" == "debug" ]]; then
  BUILD_TYPE=DEBUG
else
  BUILD_TYPE=RELEASE
fi

if [ ! -L ./bin/log ]; then
  ln -s \`pwd\`/log ./bin/log
fi

set -x
cd build
cmake .. -DCMAKE_BUILD_TYPE=\${BUILD_TYPE}
make -j7
set +x

if [[ "\${CLEAN}" == "debug" ]]; then
  cd ..
  ./run_test.sh

  COVERAGE_FILE=coverage.info
  REPORT_FOLDER=coverage_report
  lcov --rc lcov_branch_coverage=1 -c -d build -o \${COVERAGE_FILE}_tmp
  lcov --rc lcov_branch_coverage=1  -e \${COVERAGE_FILE}_tmp "*src*" -o \${COVERAGE_FILE}
  genhtml --rc genhtml_branch_coverage=1 \${COVERAGE_FILE} -o \${REPORT_FOLDER}
  rm -rf \${COVERAGE_FILE}_tmp
  rm -rf \${COVERAGE_FILE}

  if [[ "\$OSTYPE" == "darwin"* ]]; then
    open ./\${REPORT_FOLDER}/index.html
  fi
fi
EOF
