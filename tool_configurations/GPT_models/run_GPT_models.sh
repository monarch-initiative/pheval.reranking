INPUT_DIR=
TESTDATA_DIR=
OUTPUT_DIR=

for d in "$INPUT_DIR"/* ; do
    mkdir -p "${OUTPUT_DIR%/}"/"$(basename "$d")"
    pheval run --input-dir "$d" --runner ontogptphevalrunner --testdata-dir "$TESTDATA_DIR" --output-dir "${OUTPUT_DIR%/}"/"$(basename "$d")"
done