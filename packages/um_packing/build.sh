#!/bin/bash
pushd ${SRC_DIR}/um_packing
${PYTHON} -m pip install . -vv --no-deps
popd