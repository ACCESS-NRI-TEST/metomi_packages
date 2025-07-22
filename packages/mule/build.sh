#!/bin/bash
pushd ${SRC_DIR}/mule
${PYTHON} -m pip install . -vv --no-deps
popd