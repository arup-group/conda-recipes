set INCLUDE=%LIBRARY_INC%;%LIBRARY_INC%\libxml2;%INCLUDE%
set LIBRARY_INC=%LIBRARY_INC%\libxml2;%LIBRARY_INC%

echo %LIBRARY_INC%

make -lxml2 "xml2"
make -lxml2 "2csv"
copy "xml2" "2csv" %LIBRARY_BIN%