copy %RECIPE_DIR%\unistd.h %SRC_DIR% || exit 1

mkdir build
cd build
cmake -G "NMake Makefiles" ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -D CMAKE_BUILD_TYPE=Release ^
      %SRC_DIR%
if errorlevel 1 exit 1

nmake xml2 || exit 1
nmake 2csv || exit 1

mkdir -p %PREFIX/Library/bin || exit 1
copy "xml2" "2csv" %PREFIX/Library/bin || exit 1