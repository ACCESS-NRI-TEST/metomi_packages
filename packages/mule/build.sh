#!/bin/bash
set -ex

if [[ "${build_platform}" == "linux-64" ]]; then
    ${PYTHON} -m pip install -vv --no-deps --no-build-isolation ${SRC_DIR}/um_spiral_search
    ${PYTHON} -m pip install -vv --no-deps --no-build-isolation ${SRC_DIR}/um_packing
fi
${PYTHON} -m pip install -vv --no-deps --no-build-isolation ${SRC_DIR}/mule
if [[ "${build_platform}" == "linux-64" ]]; then
    ${PYTHON} -m pip install -vv --no-deps --no-build-isolation ${SRC_DIR}/um_ppibm
    ${PYTHON} -m pip install -vv --no-deps --no-build-isolation ${SRC_DIR}/um_utils
fi