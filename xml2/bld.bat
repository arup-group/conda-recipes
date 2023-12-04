set LIB=%LIBRARY_LIB%;.\lib;%LIB%
set LIBPATH=%LIBRARY_LIB%;.\lib;%LIBPATH%
set INCLUDE=%LIBRARY_INC%;%INCLUDE%
set INC=xml2-config --cflags

make --trace "xml2"
make "2csv"
copy "xml2" "2csv" %LIBRARY_BIN%