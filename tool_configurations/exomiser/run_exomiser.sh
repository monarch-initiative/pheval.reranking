INPUT_DIR=~/PythonProject/exomiser-llm-bench/tool_configurations/exomiser
TESTDATA_DIR=~/PythonProject/malco/supplemental_data/
OUTPUT_DIR=/Users/jtr4v/PythonProject/exomiser-llm-bench/tool_configurations/exomiser/EXOMISER_PHENOTYPE_ONLY_2024_08_24

mkdir -p "${OUTPUT_DIR%/}"/exomiser-13.3.0-2109

pheval run --input-dir "$INPUT_DIR" --runner exomiserphevalrunner --testdata-dir "$TESTDATA_DIR" --output-dir "${OUTPUT_DIR%/}"/exomiser-13.3.0-2109 --version 13.3.0
