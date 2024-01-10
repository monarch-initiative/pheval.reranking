INPUT_DIR=
TESTDATA_DIR=
OUTPUT_DIR=

mkdir -p "${OUTPUT_DIR%/}"/exomiser-13.3.0-2109

pheval run --input-dir "$INPUT_DIR" --runner exomiserphevalrunner --testdata-dir "$TESTDATA_DIR" --output-dir "${OUTPUT_DIR%/}"/exomiser-13.3.0-2109 --version 13.3.0