TESTDATA_DIR=
RESULTS_DIR=

touch runs.txt

for d in "${RESULTS_DIR%/}"/* ; do
    echo -e "${TESTDATA_DIR%/}/phenopackets\t$d" >> runs.txt
done

pheval-utils benchmark-comparison --run-data runs.txt --output-prefix Exomiser_vs_LLM_models --disease-analysis --gene-analysis