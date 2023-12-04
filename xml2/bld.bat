copy %RECIPE_DIR%\unistd.h %SRC_DIR% || exit 1

echo "xml2"
make "xml2"
echo "2csv"
make "2csv"

mkdir -p %PREFIX/Library/bin || exit 1
copy "xml2" "2csv" %PREFIX/Library/bin || exit 1