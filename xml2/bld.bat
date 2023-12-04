set INCLUDE=%LIBRARY_INC%;%LIBRARY_INC%\libxml2;%INCLUDE%
set LIBRARY_INC=%LIBRARY_INC%\libxml2;%LIBRARY_INC%

echo %LIBRARY_INC%

cl "xml2.c" /I %LIBRARY_INC%\libxml2
make /link lxml2 "2csv"
copy "xml2" "2csv" %LIBRARY_BIN%