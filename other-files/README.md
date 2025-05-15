## Other Files

The `other-files/` folder contains supporting resources used in training and evaluating the normalisation models:

- **Subword-tokenized versions** of the corpus for various vocabulary sizes (500, 1000, 2000, 3000, 4000 subwords):  
  - `train.sp{vocab}.src` / `train.sp{vocab}.trg`  
  - `dev.sp{vocab}.src` / `dev.sp{vocab}.trg`  
  - `test.sp{vocab}.src` / `test.sp{vocab}.trg`

- **BPE (Byte Pair Encoding) models and vocabularies** used for subword segmentation:  
  - `bpe_joint_{vocab}.model`  
  - `bpe_joint_{vocab}.vocab`

- **Intermediate and evaluation files**, including:  
  - Normalised test references (`test.{vocab}.norm.trg`)  
  - Temporary and output files from evaluation (`tmp_norm.*`, `*.output`)  
  - Final vocabulary reference (`vocabulary.src-trg`)
