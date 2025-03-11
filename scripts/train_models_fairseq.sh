#!/bin/env bash

DIRECTORY="/home/users/s/solfrini/git/normalisation_training"

mkdir -p $DIRECTORY/models/lstm_dict1000_3l_embed384

# Train a model using fairseq - 1000 words vocab
fairseq-train \
    $DIRECTORY/data/data_norm_bin_1000 \
    --save-dir $DIRECTORY/models/lstm_dict1000_3l_embed384 \
    --save-interval 1 --patience 12 \
    --arch lstm \
    --encoder-layers 3 --decoder-layers 3 \
    --encoder-embed-dim 384 --decoder-embed-dim 384 --decoder-out-embed-dim 384 \
    --encoder-hidden-size 768 --encoder-bidirectional --decoder-hidden-size 768 \
    --dropout 0.3 \
    --criterion cross_entropy --optimizer adam --adam-betas '(0.9, 0.98)' \
    --lr 0.001 --lr-scheduler inverse_sqrt \
    --warmup-updates 4000 \
    --share-all-embeddings \
    --max-tokens 3000 \
    --batch-size-valid 64

# Train a model using fairseq - 2000 words vocab
fairseq-train \
    $DIRECTORY/data/data_norm_bin_2000 \
    --save-dir $DIRECTORY/models/lstm_dict2000_3l_embed384 \
    --save-interval 1 --patience 12 \
    --arch lstm \
    --encoder-layers 3 --decoder-layers 3 \
    --encoder-embed-dim 384 --decoder-embed-dim 384 --decoder-out-embed-dim 384 \
    --encoder-hidden-size 768 --encoder-bidirectional --decoder-hidden-size 768 \
    --dropout 0.3 \
    --criterion cross_entropy --optimizer adam --adam-betas '(0.9, 0.98)' \
    --lr 0.001 --lr-scheduler inverse_sqrt \
    --warmup-updates 4000 \
    --share-all-embeddings \
    --max-tokens 3000 \
    --batch-size-valid 64

# Train a model using fairseq - 3000 words vocab
fairseq-train \
    $DIRECTORY/data/data_norm_bin_3000 \
    --save-dir $DIRECTORY/models/lstm_dict3000_3l_embed384 \
    --save-interval 1 --patience 12 \
    --arch lstm \
    --encoder-layers 3 --decoder-layers 3 \
    --encoder-embed-dim 384 --decoder-embed-dim 384 --decoder-out-embed-dim 384 \
    --encoder-hidden-size 768 --encoder-bidirectional --decoder-hidden-size 768 \
    --dropout 0.3 \
    --criterion cross_entropy --optimizer adam --adam-betas '(0.9, 0.98)' \
    --lr 0.001 --lr-scheduler inverse_sqrt \
    --warmup-updates 4000 \
    --share-all-embeddings \
    --max-tokens 3000 \
    --batch-size-valid 64

# Train a model using fairseq - 4000 words vocab
fairseq-train \
    $DIRECTORY/data/data_norm_bin_4000 \
    --save-dir $DIRECTORY/models/lstm_dict4000_3l_embed384 \
    --save-interval 1 --patience 12 \
    --arch lstm \
    --encoder-layers 3 --decoder-layers 3 \
    --encoder-embed-dim 384 --decoder-embed-dim 384 --decoder-out-embed-dim 384 \
    --encoder-hidden-size 768 --encoder-bidirectional --decoder-hidden-size 768 \
    --dropout 0.3 \
    --criterion cross_entropy --optimizer adam --adam-betas '(0.9, 0.98)' \
    --lr 0.001 --lr-scheduler inverse_sqrt \
    --warmup-updates 4000 \
    --share-all-embeddings \
    --max-tokens 3000 \
    --batch-size-valid 64