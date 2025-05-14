# Steps to train our normalisation model

## 1. Generate a Metadata Table
- Create a CSV file (`table.csv`) listing all texts and their associated metadata.
- Ensure that one column contains the filename of each text (e.g., `CRRPV16_Chansons_nouvelles.tsv`).

## 2. Build the Corpus
- Collect and process all texts to create the corpus (15 texts).
  - if split ratio 90-10:
    - train+dev (90-10): 14 texts, 1.341 pages, 35.450 lines;
    - test (`CRRPV11_Moralite.tsv`): one text, 96 pages, 2.485 lines.
- Each processed text is stored in a TSV file (`.tsv`).
- Each TSV file contains two columns:
  - One column for the original lines of text.
  - One column for the normalized lines.

## 3. Create the Data Split
- Use the scripts to divide the corpus into appropriate training, validation, and test sets.
- In "data" you'll find the final split in the following format :
  - train.src and train.trg
  - dev.src and dev.trg
  - test.src and test.trg

**Split Ratio 90-10**

- Train: 90% (18 lines per 20)
- Dev: 10% (2 lines per 20)
- Test: `CRRPV11_Moralite.tsv`

Every 10 lines contain 9 "train" and 1 "dev" for a consistent 90-10 split.

```
subcorpora = {
    "1-standard": [
        "train", "train", "train", "train", "train",  # First 5 lines: 5 to train
        "train", "train", "train", "dev", "train",    # Next 5 lines: 4 to train, 1 to dev
        "train", "train", "train", "train", "train",  # Next 5 lines: 5 to train
        "train", "train", "train", "dev", "train"     # Last 5 lines: 4 to train, 1 to dev
    ]
}
```

## 4. Training

Train multiple models with the scripts listed below.

Our `environment.yml` file allows to create (and recreate) a Conda environment, ensuring that all dependencies are properly installed. Additionally, it helps prevent version conflicts and errors that may arise from automatic library updates.

## Scripts

**Split**
- `split_ss.py`
- `split_to_src_trg.py`

**Training**
- `submission_script_training.sh`
  - `prep_data.py`
  - `preprocess_fairseq.sh`
  - `train_models_fairseq.sh`

**Test models**
- `submission_script_test_model.sh`
  - `test_models.py`

## Outputs

See [outputs](https://github.com/soniasol/Normalisation-16thCentury-French/tree/main/outputs) for results.
