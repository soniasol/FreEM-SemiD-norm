# Steps to train the normalisation model

## 1. Generate a Metadata Table
Create a metadata table in CSV format (`table.csv`) that lists all texts and their associated metadata.  
Make sure one of the columns contains the filename of each text (e.g., `CRRPV16_Chansons_nouvelles.tsv`).

## 2. Build the Corpus
Collect and process the texts to build the corpus. Each processed text is stored in a `.tsv` file containing two columns:
- the original lines of text
- the corresponding normalised lines

If using a **90-10 split ratio**, the data is divided as follows:
- **Training + Validation**: 14 texts (1,341 pages / 35,450 lines)
- **Test**: 1 text (`CRRPV11_Moralite.tsv`) — 96 pages / 2,485 lines

## 3. Create the Data Split
Use the provided scripts to divide the corpus into training, validation, and test sets.

The final split can be found in the `data/` directory in the following format:
- `train.src` / `train.trg`
- `dev.src` / `dev.trg`
- `test.src` / `test.trg`

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

## 4. Train and Evaluate the Models

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
    - `train_models_fairseq_M.sh`
    - `train_models_fairseq_S.sh`
    - `train_models_fairseq_XS.sh`

**Tests**
- `submission_script_test_model.sh`
  - `test_models.py`
