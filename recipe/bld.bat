mkdir build
cd build

set BUILD_CONFIG=Release

cmake .. -G "Ninja" ^
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
    -DTTK_ENABLE_OPENMP=OFF ^
    -DGRAPHVIZ_INCLUDE_DIR="%LIBRARY_PREFIX%/include/graphviz" ^
    -DGRAPHVIZ_CDT_LIBRARY="%LIBRARY_PREFIX%/lib/graphviz/cdt.lib" ^
    -DGRAPHVIZ_GVC_LIBRARY="%LIBRARY_PREFIX%/lib/graphviz/gvc.lib" ^
    -DGRAPHVIZ_CGRAPH_LIBRARY="%LIBRARY_PREFIX%/lib/graphviz/cgraph.lib" ^
    -DGRAPHVIZ_PATHPLAN_LIBRARY="%LIBRARY_PREFIX%/lib/graphviz/Pathplan.lib"
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1
