# Install PhEval

If you haven't already got PhEval installed, it will need to be installed for the analysis:

```bash
git clone https://github.com/monarch-initiative/pheval.git
cd pheval
poetry shell
poetry install
```

# Running the analysis

To run the benchmarking analysis on the Exomiser vs. LLM experiments execute the bash script located in this directory after setting the variables:

1. `TESTDATA_DIR` -> Set this to the full path to the testdata directory (`../corpora/LIRICAL`)
2. `RESULTS_DIR` -> Set this to the full path to where all the results from the experiments can be found, the directory may look something like so:

```tree
.
├── exomiser-13.3.0-2109
│   ├── pheval_disease_results
│   ├── pheval_gene_results
│   └── raw_results
├── GPT-3.5-disease_HiPhive
│   ├── pheval_disease_results
│   ├── pheval_gene_results
│   └── raw_results
├── GPT-3.5-disease_complex
│   ├── pheval_disease_results
│   ├── pheval_gene_results
│   └── raw_results
├── GPT-3.5-disease_simple
│   ├── pheval_disease_results
│   ├── pheval_gene_results
│   └── raw_results
├── GPT-3.5-gene_HiPhive
│   ├── pheval_disease_results
│   ├── pheval_gene_results
│   └── raw_results
├── GPT-3.5-gene_complex
│   ├── pheval_disease_results
│   ├── pheval_gene_results
│   └── raw_results
└── GPT-3.5-gene_simple
   ├── pheval_disease_results
   ├── pheval_gene_results
   └── raw_results

```

## Execute the bash script

```bash
bash run_benchmark.sh
```