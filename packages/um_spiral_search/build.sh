#!/bin/bash
pushd ${SRC_DIR}/um_spiral_search
${PYTHON} -m pip install . -vv --no-deps --ignore-installed
popd