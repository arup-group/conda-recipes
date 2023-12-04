set LIB=%LIBRARY_LIB%;.\lib;%LIB%
set LIBPATH=%LIBRARY_LIB%;.\lib;%LIBPATH%
set INCLUDE=%LIBRARY_INC%;%INCLUDE%

FOR /F "tokens=*" %%g IN ('xml2-config --cflags') do (SET TMP_INCL=%%g)
FOR /F "tokens=*" %%g IN ('xml2-config --libs') do (SET TMP_LIBS=%%g)
make %TMP_INCL% %TMP_LIBS% all
copy "xml2" "2csv" %LIBRARY_BIN%