mkdir build
cd build

set BUILD_CONFIG=Release

cmake .. -G "Ninja" ^
    -Wno-dev ^
    -DCMAKE_BUILD_TYPE=%BUILD_CONFIG% ^
    -DCMAKE_INSTALL_PREFIX:PATH="%PREFIX%" ^
    -DCMAKE_INSTALL_LIBDIR="Library/lib" ^
    -DCMAKE_INSTALL_BINDIR="Library/bin" ^ 
    -DCMAKE_INSTALL_INCLUDEDIR="Library/include" ^
    -DCMAKE_INSTALL_DATAROOTDIR="Library/share" ^
    -DCMAKE_INSTALL_DOCDIR="Library/share/doc" ^
    -DPython3_FIND_STRATEGY=LOCATION ^
    -DPython3_ROOT_DIR="%LIBRARY_PREFIX%" ^
    -DTTK_BUILD_VTK_WRAPPERS=ON ^
    -DTTK_BUILD_VTK_PYTHON_MODULE=ON ^
    -DTTK_BUILD_PARAVIEW_PLUGINS=OFF ^
    -DTTK_BUILD_STANDALONE_APPS=ON ^
    -DTTK_ENABLE_CPU_OPTIMIZATION=OFF ^
    -DTTK_ENABLE_KAMIKAZE=ON ^
    -DTTK_ENABLE_MPI=OFF ^
    -DTTK_ENABLE_OPENMP=OFF
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1
