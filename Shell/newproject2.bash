#!/bin/bash
set -x
SCRIPT_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 && pwd -P )"
python3 $SCRIPT_DIR/newproject.py "$@"
set +x
