# FreEM SemiD norm 

**FreEM SemiD norm** (French Early Modern Semi-Diplomatic Normalisation) refers both to:

- a **normalisation model** (or *normalizer*), and 
- the **normalised corpus** used to develop it — a dataset of Middle French texts normalised according to semi-diplomatic guidelines.

## How to cite our work

- Our corpus: [coming soon]
- Our model: [coming soon]
- Our paper: [coming soon]

## License

This work is licensed under a Creative Commons Attribution 4.0 International Licence ([CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)).

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

See the [scripts](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/scripts) folder for all scripts used in this project, along with a `README.md` that outlines the steps followed to train and evaluate the model.

## Results

Our results are available in the [results](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/results) folder.
