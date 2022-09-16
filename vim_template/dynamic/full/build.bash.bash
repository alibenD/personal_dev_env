#!/bin/bash
#---Generated from template 'bash' wrote by @aliben---
# 
# @name: bashnew.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-21 17:42:35
# @last_modified_date: 2022-05-20 22:59:35
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

SHORT_ARG="tco:"
LONG_ARG="output:,toolchain:,build_type:,install_prefix:,clean::,install::"
ARGS=\`getopt -o \${SHORT_ARG} -a --long \${LONG_ARG} -- "$@"\`

BUILD_TYPE=RELEASE
BUILD_TESTS=OFF
OUTPUT_PATH=build
CLEAN_FLAG=FALSE
INSTALL_PREFIX=build
DO_INSTALL=FALSE

#eval set -- "\${ARGS}"

while [ -n "\$1" ]
do
  case "\$1" in
    -t)
      echo "Build Test";
      BUILD_TESTS=ON;
      ;;
    -o|--output)
      echo "Output: \$2"
      OUTPUT_PATH=\$2;
      shift 1
      ;;
    -c|--clean)
      echo "Clean"
      CLEAN_FLAG=ON;
      #exit 0
      ;;
    --build_type)
      echo "Build_type: \$2"
      BUILD_TYPE=\`echo \$2| tr "A-Z" "a-z"\`;
      shift 1
      ;;
    --install_prefix)
      echo "install prefix: \$2"
      if [[ "\$2" != "\${OUTPUT_PATH}" ]]; then
        INSTALL_PREFIX=\$2
      fi
      shift 1
      ;;
    --toolchain)
      echo "Toolchain: \$2"
      shift 1
      ;;
    --install)
      echo "project will be installed to \${INSTALL_PREFIX}"
      DO_INSTALL=ON;
      ;;
    --)
      echo "Default: $1"
      shift
      break
      ;;
  esac
  shift
done
#---Shell Command
if [[ "\${CLEAN_FLAG}" == "ON" ]]; then
  rm -rf build
  exit 0
fi

mkdir -p \${OUTPUT_PATH}/\$BUILD_TYPE
set -x
cmake -B \$OUTPUT_PATH/\$BUILD_TYPE -GNinja -DBUILD_SHARED_LIBS=YES -DCMAKE_BUILD_TYPE=\${BUILD_TYPE} -DBUILD_TESTS=\${BUILD_TESTS} -DCMAKE_INSTALL_PREFIX=\${INSTALL_PREFIX} -DBUILD_EXAMPLES=ON
ninja -C \$OUTPUT_PATH/\$BUILD_TYPE
if [[ "\${DO_INSTALL}" == "ON" ]]; then
  ninja -C \${OUTPUT_PATH}/\${BUILD_TYPE} install
fi

set +x
if [[ -L \${OUTPUT_PATH}/latest_build ]]; then
  rm \${OUTPUT_PATH}/latest_build
fi
ln -s \`realpath \${OUTPUT_PATH}\`/\${BUILD_TYPE} \`realpath \$OUTPUT_PATH\`/latest_build || exit

if [[ "\${BUILD_TESTS}" == "ON" ]]; then
  ninja -C \${OUTPUT_PATH}/\${BUILD_TYPE} test

  COVERAGE_FILE=coverage.info
  REPORT_FOLDER=\${OUTPUT_PATH}/\${BUILD_TYPE}/coverage_report
  lcov --rc lcov_branch_coverage=1 -c -d \${OUTPUT_PATH}/\${BUILD_TYPE} -o \${COVERAGE_FILE}_tmp
  lcov --rc lcov_branch_coverage=1  -e \${COVERAGE_FILE}_tmp "*src*" -o \${COVERAGE_FILE}
  genhtml --rc genhtml_branch_coverage=1 \${COVERAGE_FILE} -o \${REPORT_FOLDER}
  rm -rf \${COVERAGE_FILE}_tmp
  rm -rf \${COVERAGE_FILE}

  if [[ "\$OSTYPE" == "darwin"* ]]; then
    open ./\${REPORT_FOLDER}/index.html
  fi
fi
EOF
