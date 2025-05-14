# FreEM-SemiD-norm 

**FreEM-SemiD-norm** (French Early Modern Semi-Diplomatic Normalisation) refers both to:

- a **normalisation model** (or *normalizer*), and 
- the **normalised corpus** used to develop it — a dataset of Middle French texts normalised according to semi-diplomatic guidelines.

## How to cite our work

- Our corpus: [coming soon]
- Our model: [coming soon]
- Our paper: [coming soon]

## License

This work is licensed under a Creative Commons Attribution 4.0 International Licence ([CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)).

## Contact

For questions or contributions, please contact Sonia Solfrini at Sonia.Solfrini@unige.ch or open an issue on this repository.

## Dataset

Our corpus is available in the [`dataset`](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/dataset) folder. It is organized as follows:

- **`corpus-to-process/`**  
  Contains each text in plain `.txt` format (a file with the original text and a file with the normalised version), along with a script to convert and merge the `.txt` files into `.tsv` format.

- **`corpus/`**  
  Contains each text in `.tsv` format. Each TSV file contains two columns: One column for the original lines of text and one column for the normalised lines.

- **`split/`**  
  Contains the dataset split into training, validation, and test sets. See the scripts section below for details on how the split was generated.

- **`data/`**  
  Contains the split corpus in source–target file format:  
  - `train.src` / `train.trg`  
  - `dev.src` / `dev.trg`  
  - `test.src` / `test.trg`  

A detailed overview of the corpus content, including text titles and metadata, is available in [`table.csv`](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/table.csv).

## Scripts

See the folder [scripts](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/scripts) for our scripts and a README.md with the steps we followed to train and test our model.

## Results

See the folder [results](https://github.com/soniasol/FreEM-SemiD-norm/tree/main/results) for our results.
