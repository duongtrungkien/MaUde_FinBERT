#!/bin/sh
# Copyright (c) Facebook, Inc. and its affiliates.
DATA_NAME=opensubtitles
DATA_LOC=elisa_data/
FINE_TUNE_MODEL=./bert-base-finnish-uncased-transformers-v1

python ./data.py --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --bert_model bert-base-uncased --agent seq2seq --mode train --models seq2seq
