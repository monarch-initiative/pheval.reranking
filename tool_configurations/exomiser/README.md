# Installation of Exomiser plugin for PhEval

```bash
git clone https://github.com/monarch-initiative/pheval.exomiser.git
cd pheval.exomiser
poetry shell
poetry install
```

# Setting up for the `pheval run` command

Download 2406 Exomiser data:
following [this](https://github.com/exomiser/Exomiser/discussions/562) discussion

```bash
wget https://g-879a9f.f5dc97.75bc.dn.glob.us/data/2406_phenotype.zip
wget https://g-879a9f.f5dc97.75bc.dn.glob.us/data/2406_hg19.zip
 
unzip 2406_phenotype.zip
unzip 2406_hg19.zip 
```

Download Exomiser v14 (needed to run correctly with the above data)

```bash
wget https://github.com/exomiser/Exomiser/releases/download/14.0.1/exomiser-cli-14.0.1-distribution.zip
unzip exomiser-cli-14.0.1-distribution.zip
```

Input directory structure as follows:

```tree
.
├── 2206_hg19
├── 2206_phenotype
├── application.properties
├── config.yaml
└── exomiser-cli-14.0.1/ 
    ├── CHANGELOG.md
    ├── LICENCE.txt
    ├── README.md
    ├── application.properties
    ├── examples
    └── exomiser-cli-14.0.1/exomiser-cli-14.0.1.jar
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
