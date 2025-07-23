#!/bin/bash
set -ex

if [[ "${build_platform}" == "linux-64" ]]; then
    $PYTHON -m pip install -vv --no-deps --no-build-isolation ./um_spiral_search
fi