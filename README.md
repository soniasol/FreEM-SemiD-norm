# FreEM SemiD norm 

**FreEM SemiD norm** (French Early Modern Semi-Diplomatic Normalisation) refers both to:

- a **normalisation model**, and 
- the **normalised corpus** used to develop it — a dataset of Middle French texts, normalised according to semi-diplomatic guidelines.

## Funder

This research was conducted as part of the SETAF project, funded by the Swiss National Science Foundation (SNSF). Project number: [205056](https://data.snf.ch/grants/grant/205056).

- 🔗 [SETAF project GitHub](https://github.com/SETAFDH)  
- 🌐 [SETAF project website](https://www.unige.ch/setaf)

## How to cite our work

- Our paper:

Sonia Solfrini, Mylène Dejouy, Aurélia Marques Oliveira, Pierre-Olivier Beaulnes. « Normaliser le moyen français : du graphématique au semi-diplomatique », actes de CORIA-TALN-RJCRI-RECITAL 2025, juillet 2025, Marseille, France. [⟨hal-05137564⟩](https://hal.science/hal-05137564v1).

- Our corpus:

```bibtex
@misc{FreEM-SemiD-norm_dataset_2025,
  author       = {Solfrini, Sonia and
                  Dejouy, Mylène and
                  Marques Oliveira, Aurélia and
                  Beaulnes, Pierre-Olivier},
  title        = {{FreEM SemiD norm corpus}},
  month        = may,
  year         = 2025,
  howpublished = {\url{https://github.com/soniasol/FreEM-SemiD-norm}},
  note         = {Accessed Month Day, Year}
}
```

- Our model:

```bibtex
@misc{FreEM-SemiD-norm_model_2025,
  author       = {Solfrini, Sonia and
                  Gabay, Simon},
  title        = {{FreEM SemiD norm model}},
  month        = may,
  year         = 2025,
  publisher    = {Zenodo},
  note         = {{v.} 1.0.0},
  doi          = {10.5281/zenodo.15551750},
  url          = {https://doi.org/10.5281/zenodo.15551750},
}
```
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15551750.svg)](https://doi.org/10.5281/zenodo.15551750)

## License

- The **dataset** is licensed under the [Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.en).
- The **code and scripts** in this repository are released under the [MIT License](https://opensource.org/licenses/MIT).

## Contact

For questions or contributions, please contact Sonia Solfrini at Sonia.Solfrini@unige.ch.

## Dataset

Our corpus is available in the [`dataset`](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/dataset) folder. It is organized as follows:

- **`corpus-to-process/`**  
  Contains each text in plain `.txt` format: one file with the original text and one file with the normalised version. A script is included to convert and merge these files into `.tsv` format.

- **`corpus/`**  
  Contains each text in `.tsv` format. Each file includes two columns:  
  - the original lines of text  
  - the corresponding normalised lines

- **`split/`**  
  Contains the dataset divided into training, validation, and test sets. See the `scripts` section below for details on how the split was generated.

- **`data/`**  
  Contains the split corpus in source–target format: 
  - `train.src` / `train.trg`  
  - `dev.src` / `dev.trg`  
  - `test.src` / `test.trg`

A detailed overview of the corpus content, including text titles and metadata, is available in [`table.csv`](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/table.csv).

## Scripts

See the [scripts](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/scripts) folder for all scripts used in our experiments, along with a `README.md` that outlines the steps followed to train and evaluate the model.

## Other files

The [other-files](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/other-files) folder includes additional resources such as subword-tokenized files, BPE vocabularies/models, intermediate outputs, and evaluation results. A `README.md` in this folder explains further the structure and usage of these files, which support model training and evaluation with Fairseq.

## Results

Our results are available in the [results](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/results) folder.

We experimented with multiple LSTM-based model configurations (XS, S, M) and vocabulary sizes. The best results were obtained using the **"S" configuration** (2 encoder/decoder layers, 256 embedding dim, 512 hidden size) with a vocabulary of 1,000 subword units:

| Configuration | BLEU  | TER   | ChrF   |
|---------------|-------|-------|--------|
| **XS**        | 86.64 | 7.69  | 94.93  |
| **S**         | **87.08** | **7.35** | **95.02** |
| **M**         | 86.18 | 7.76  | 94.70  |


## Model

The best-performing trained model is available in the [Releases](https://github.com/soniasol/FreEM-SemiD-norm/releases/tag/v1.0.0) section of this repository and on Zenodo: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15551750.svg)](https://doi.org/10.5281/zenodo.15551750).
