# Installation of OntoGPT plugin for PhEval

```bash
git clone https://github.com/yaseminbridges/pheval.ontogpt.git
cd pheval.ontogpt
poetry shell
poetry install
```

# Setting up your API KEY
You will need to have an OpenAI API key for ChatGPT to run the OntoGPT plugin.

To set your API key:

```bash
pip install oaklib
runoak set-apikey -e openai <your openai api key>
```

# Setting up for the `pheval run` command

Input directory structure as follows:

```tree
.
├── config.yaml
├── constrained_list.txt # optional if running the constrained list experiments
└── template.jinja2
```

Please note to run all the GPT model experiments, you will need to have 36 different input directories with the `config.yaml` set up accordingly and the template you wish to use, We recommend naming the input directories clearly so the configuration and request for the run is easily decipherable.

To demonstrate this, here's a brief example:

```tree
.
├── GPT-3.5-disease_HiPhive
│   ├── config.yaml
│   └── HiPhive_disease_request_template.jinja2
├── GPT-3.5-disease_HiPhive_constrained
│   ├── config.yaml
│   ├── disease_list.txt
│   └── HiPhive_disease_request_template_with_constrained_list.jinja2
├── GPT-3.5-disease_complex
│   ├── config.yaml
│   └── complex_disease_request_template.jinja2
├── GPT-3.5-disease_complex_constrained
│   ├── config.yaml
│   ├── disease_list.txt
│   └── complex_disease_request_template_with_constrained_list.jinja2
├── GPT-3.5-disease_simple
│   ├── config.yaml
│   └── simple_disease_request_template.jinja2
├── GPT-3.5-disease_simple_constrained
│   ├── config.yaml
│   ├── disease_list.txt
│   └── simple_disease_request_template_with_constrained_list.jinja2
├── GPT-3.5-gene_HiPhive
│   ├── config.yaml
│   └── HiPhive_gene_request_template.jinja2
├── GPT-3.5-gene_HiPhive_constrained
│   ├── config.yaml
│   ├── gene_list.txt
│   └── HiPhive_gene_request_template_with_constrained_list.jinja2
├── GPT-3.5-gene_complex
│   ├── config.yaml
│   └── complex_gene_request_template.jinja2
├── GPT-3.5-gene_complex_constrained
│   ├── config.yaml
│   ├── gene_list.txt
│   └── complex_gene_request_template_with_constrained_list.jinja2
├── GPT-3.5-gene_simple
│   ├── config.yaml
│   └── simple_gene_request_template.jinja2
└── GPT-3.5-gene_simple_constrained
    ├── config.yaml
    ├── gene_list.txt
    └── simple_gene_request_template_with_constrained_list.jinja2
```

# Run experiments

To run the experiments, place all the input directories under the same parent directory as shown in the example above.

Set the variables in the bash script:

1. `INPUT_DIR` -> provide the full path to the parent directory that contains all the input directories (configurations).
2. `TESTDATA_DIR` -> provide the full path to the corpus directory (`../../corpora/LIRICAL`).
3. `OUTPUT_DIR` -> provide the full path to the directory you wish to write the results.

Execute the bash script:

```bash
bash run_GPT_models.sh
```