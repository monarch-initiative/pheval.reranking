# Installation of Exomiser plugin for PhEval

```bash
git clone https://github.com/monarch-initiative/pheval.exomiser.git
cd pheval.exomiser
poetry shell
poetry install
```

# Setting up for the `pheval run` command

Download 2109 Exomiser data:

```bash
wget https://g-879a9f.f5dc97.75bc.dn.glob.us/data/2109_phenotype.zip
wget https://g-879a9f.f5dc97.75bc.dn.glob.us/data/2109_hg19.zip
```

Download Exomiser v13.3.0:

```bash
wget https://github.com/exomiser/Exomiser/releases/download/13.3.0/exomiser-cli-13.3.0-distribution.zip
unzip exomiser-cli-13.3.0-distribution.zip
```

Input directory structure as follows:

```tree
.
├── 2109_hg19
├── 2109_phenotype
├── application.properties
├── config.yaml
└── exomiser-cli-13.3.0
    ├── CHANGELOG.md
    ├── LICENCE.txt
    ├── README.md
    ├── application.properties
    ├── examples
    └── exomiser-cli-13.3.0.jar
```

# Run Exomiser experiment

Set the variables in the bash script:

1. `INPUT_DIR` -> provide the full path to the parent directory that contains all the input directories (configurations).
2. `TESTDATA_DIR` -> provide the full path to the corpus directory (`../../corpora/LIRICAL`).
3. `OUTPUT_DIR` -> provide the full path to the directory you wish to write the results.

Execute the bash script:

```bash
bash run_exomiser.sh
```