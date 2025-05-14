#!/bin/env bash

DIRECTORY="/home/users/s/solfrini/git/normalisation_training"

#mkdir -p $DIRECTORY/models/lstm_dict1000_1l_embed128

# Train a model using fairseq - 500 words vocab
fairseq-train \
    $DIRECTORY/data/data_norm_bin_500 \
    --save-dir $DIRECTORY/models/lstm_dict500_1l_embed128 \
    --save-interval 1 --patience 12 \
    --arch lstm \
    --encoder-layers 1 --decoder-layers 1 \
    --encoder-embed-dim 128 --decoder-embed-dim 128 --decoder-out-embed-dim 128 \
    --encoder-hidden-size 256 --encoder-bidirectional --decoder-hidden-size 256 \
    --dropout 0.3 \
    --criterion cross_entropy --optimizer adam --adam-betas '(0.9, 0.98)' \
    --lr 0.001 --lr-scheduler inverse_sqrt \
    --warmup-updates 4000 \
    --share-all-embeddings \
    --max-tokens 3000 \
    --batch-size-valid 64

# Train a model using fairseq - 1000 words vocab
fairseq-train \
    $DIRECTORY/data/data_norm_bin_1000 \
    --save-dir $DIRECTORY/models/lstm_dict1000_1l_embed128 \
    --save-interval 1 --patience 12 \
    --arch lstm \
    --encoder-layers 1 --decoder-layers 1 \
    --encoder-embed-dim 128 --decoder-embed-dim 128 --decoder-out-embed-dim 128 \
    --encoder-hidden-size 256 --encoder-bidirectional --decoder-hidden-size 256 \
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
    --save-dir $DIRECTORY/models/lstm_dict2000_1l_embed128 \
    --save-interval 1 --patience 12 \
    --arch lstm \
    --encoder-layers 1 --decoder-layers 1 \
    --encoder-embed-dim 128 --decoder-embed-dim 128 --decoder-out-embed-dim 128 \
    --encoder-hidden-size 256 --encoder-bidirectional --decoder-hidden-size 256 \
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
    --save-dir $DIRECTORY/models/lstm_dict3000_1l_embed128 \
    --save-interval 1 --patience 12 \
    --arch lstm \
    --encoder-layers 1 --decoder-layers 1 \
    --encoder-embed-dim 128 --decoder-embed-dim 128 --decoder-out-embed-dim 128 \
    --encoder-hidden-size 256 --encoder-bidirectional --decoder-hidden-size 256 \
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
    --save-dir $DIRECTORY/models/lstm_dict4000_1l_embed128 \
    --save-interval 1 --patience 12 \
    --arch lstm \
    --encoder-layers 1 --decoder-layers 1 \
    --encoder-embed-dim 128 --decoder-embed-dim 128 --decoder-out-embed-dim 128 \
    --encoder-hidden-size 256 --encoder-bidirectional --decoder-hidden-size 256 \
    --dropout 0.3 \
    --criterion cross_entropy --optimizer adam --adam-betas '(0.9, 0.98)' \
    --lr 0.001 --lr-scheduler inverse_sqrt \
    --warmup-updates 4000 \
    --share-all-embeddings \
    --max-tokens 3000 \
    --batch-size-valid 64