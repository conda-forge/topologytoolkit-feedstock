#!/bin/bash

mkdir -p build
cd build

cmake .. \
    -Wno-dev \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH:PATH="${PREFIX}" \
    -DCMAKE_INSTALL_PREFIX:PATH="${PREFIX}" \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DPython3_FIND_STRATEGY=LOCATION \
    -DPython3_ROOT_DIR="${PREFIX}" \
    -DTTK_BUILD_VTK_WRAPPERS=ON \
    -DTTK_BUILD_VTK_PYTHON_MODULE=ON \
    -DTTK_BUILD_PARAVIEW_PLUGINS="${TTK_WITH_PARAVIEW}" \
    -DTTK_BUILD_STANDALONE_APPS=ON \
    -DTTK_ENABLE_CPU_OPTIMIZATION=OFF \
    -DTTK_ENABLE_KAMIKAZE=ON \
    -DTTK_ENABLE_MPI=OFF \
    -DTTK_ENABLE_OPENMP=ON

cmake --build . --target install

if [[ ${TTK_WITH_PARAVIEW} == "True" ]]; then
    ACTIVATE_DIR=${PREFIX}/etc/conda/activate.d
    DEACTIVATE_DIR=${PREFIX}/etc/conda/deactivate.d
    mkdir -p ${ACTIVATE_DIR}
    mkdir -p ${DEACTIVATE_DIR}
    cp ${RECIPE_DIR}/activate.sh ${ACTIVATE_DIR}/topologytoolkit-activate.sh
    cp ${RECIPE_DIR}/deactivate.sh ${DEACTIVATE_DIR}/topologytoolkit-deactivate.sh
fi
