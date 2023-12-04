set LIB=%LIBRARY_LIB%;.\lib;%LIB%
set LIBPATH=%LIBRARY_LIB%;.\lib;%LIBPATH%
set INCLUDE=%LIBRARY_INC%;%INCLUDE%
set INC=xml2-config --cflags

echo xml2-config --cflags
make --trace all
copy "xml2" "2csv" %LIBRARY_BIN%