mkdir build
cd build

:: remove Boost version from paraview's cmake config
if "%TTK_WITH_PARAVIEW%"=="True" (
perl -i.orig -p0e "s/Boost.*EXACT/Boost/s" "%PREFIX%\Library\lib\cmake\paraview-5.8\vtk\VTK-vtk-module-find-packages.cmake"
)

set BUILD_CONFIG=Release

cmake .. -G "Ninja" ^
    -Wno-dev ^
    -DCMAKE_C_COMPILER="clang-cl.exe" ^
    -DCMAKE_CXX_COMPILER="clang-cl.exe" ^
    -DCMAKE_BUILD_TYPE=%BUILD_CONFIG% ^
    -DCMAKE_INSTALL_PREFIX:PATH="%PREFIX%" ^
    -DCMAKE_INSTALL_LIBDIR="Library/lib" ^
    -DCMAKE_INSTALL_BINDIR="Library/bin" ^
    -DCMAKE_INSTALL_INCLUDEDIR="Library/include" ^
    -DCMAKE_INSTALL_DATAROOTDIR="Library/share" ^
    -DCMAKE_INSTALL_DOCDIR="Library/share/doc" ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    -DLZMA_LIBRARY="%LIBRARY_PREFIX:\=/%/lib/liblzma.lib" ^
    -DPython3_FIND_STRATEGY=LOCATION ^
    -DPython3_ROOT_DIR="%LIBRARY_PREFIX%" ^
    -DTTK_BUILD_VTK_WRAPPERS=ON ^
    -DTTK_BUILD_VTK_PYTHON_MODULE=ON ^
    -DTTK_BUILD_PARAVIEW_PLUGINS="%TTK_WITH_PARAVIEW%" ^
    -DTTK_BUILD_STANDALONE_APPS=ON ^
    -DTTK_ENABLE_CPU_OPTIMIZATION=OFF ^
    -DTTK_ENABLE_KAMIKAZE=ON ^
    -DTTK_ENABLE_MPI=OFF ^
    -DTTK_ENABLE_OPENMP=ON
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1

if "%TTK_WITH_PARAVIEW%"=="True" (
set ACTIVATE_DIR=%PREFIX%\etc\conda\activate.d
set DEACTIVATE_DIR=%PREFIX%\etc\conda\deactivate.d
mkdir %ACTIVATE_DIR%
if errorlevel 1 exit 1
mkdir %DEACTIVATE_DIR%
if errorlevel 1 exit 1

copy %RECIPE_DIR%\activate.bat %ACTIVATE_DIR%\topologytoolkit-activate.bat
if errorlevel 1 exit 1

copy %RECIPE_DIR%\deactivate.bat %DEACTIVATE_DIR%\topologytoolkit-deactivate.bat
if errorlevel 1 exit 1

:: unix activation scripts for Windows Bash
copy %RECIPE_DIR%\activate.sh %ACTIVATE_DIR%\topologytoolkit-activate.sh
if errorlevel 1 exit 1

copy %RECIPE_DIR%\deactivate.sh %DEACTIVATE_DIR%\topologytoolkit-deactivate.sh
if errorlevel 1 exit 1
)
