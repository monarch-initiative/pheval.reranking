INPUT_DIR=/Users/yaseminbridges/full_test_pheval_run/configurations/exomiser-13.3.0/2309/
TESTDATA_DIR=/Users/yaseminbridges/Documents/GitHub/exomiser-llm-bench/corpora/LIRICAL
OUTPUT_DIR=/Users/yaseminbridges/Documents/GitHub/exomiser-llm-bench/tool_configurations/exomiser

mkdir -p $OUTPUT_DIR/exomiser-13.3.0-2109

pheval run --input-dir $INPUT_DIR --runner exomiserphevalrunner --testdata-dir $TESTDATA_DIR --output-dir $OUTPUT_DIR/exomiser-13.3.0-2109 --version 13.3.0