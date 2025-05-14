#!/bin/env bash

DIRECTORY="/home/users/s/solfrini/git/normalisation_training"

fairseq-preprocess --destdir $DIRECTORY/data/data_norm_bin_500/ \
    -s src -t trg \
    --trainpref $DIRECTORY/data/train.sp500 \
    --validpref $DIRECTORY/data/dev.sp500 \
    --testpref $DIRECTORY/data/test.sp500 \
    --joined-dictionary

fairseq-preprocess --destdir $DIRECTORY/data/data_norm_bin_1000/ \
    -s src -t trg \
    --trainpref $DIRECTORY/data/train.sp1000 \
    --validpref $DIRECTORY/data/dev.sp1000 \
    --testpref $DIRECTORY/data/test.sp1000 \
    --joined-dictionary

fairseq-preprocess --destdir $DIRECTORY/data/data_norm_bin_2000/ \
    -s src -t trg \
    --trainpref $DIRECTORY/data/train.sp2000 \
    --validpref $DIRECTORY/data/dev.sp2000 \
    --testpref $DIRECTORY/data/test.sp2000 \
    --joined-dictionary

fairseq-preprocess --destdir $DIRECTORY/data/data_norm_bin_3000/ \
    -s src -t trg \
    --trainpref $DIRECTORY/data/train.sp3000 \
    --validpref $DIRECTORY/data/dev.sp3000 \
    --testpref $DIRECTORY/data/test.sp3000 \
    --joined-dictionary

fairseq-preprocess --destdir $DIRECTORY/data/data_norm_bin_4000/ \
    -s src -t trg \
    --trainpref $DIRECTORY/data/train.sp4000 \
    --validpref $DIRECTORY/data/dev.sp4000 \
    --testpref $DIRECTORY/data/test.sp4000 \
    --joined-dictionary