mkdir build
cd build

set BUILD_CONFIG=Release

cmake .. -G "NMake Makefiles" ^
    -Wno-dev ^
    -DCMAKE_BUILD_TYPE=%BUILD_CONFIG% ^
    -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
    -DTTK_BUILD_VTK_WRAPPERS=ON ^
    -DTTK_BUILD_VTK_PYTHON_MODULE=ON ^
    -DTTK_BUILD_PARAVIEW_PLUGINS=OFF ^
    -DTTK_BUILD_STANDALONE_APPS=OFF ^
    -DTTK_ENABLE_CPU_OPTIMIZATION=OFF ^
    -DTTK_ENABLE_KAMIKAZE=OFF ^
    -DTTK_ENABLE_MPI=OFF ^
    -DTTK_ENABLE_OPENMP=OFF
if errorlevel 1 exit 1

cmake --build . --target install --config Release
if errorlevel 1 exit 1
