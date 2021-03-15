#!/bin/sh
# Copyright (c) Facebook, Inc. and its affiliates.
BATCH_SIZE=64
MODEL_SAVE_DIR=full_acl_runs/
DATA_NAME=elisa
DATA_LOC=finnish_data/
FINE_TUNE_MODEL=./bert-base-finnish-uncased-transformers-v1
TRAIN_MODE=nce
NUM_GPUS=8
# Model
# python codes/trainer.py --mode train --batch_size 64 --model_save_dir $MODEL_SAVE_DIR  --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --corrupt_type all_context
# python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR  --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --corrupt_type all
# python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR  --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --corrupt_type only_semantics
# python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR  --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --corrupt_type only_syntax
# InferSent Baseline
####python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --train_baseline infersent --corrupt_type all_context
# python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR  --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --train_baseline infersent --corrupt_type all
# python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR  --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --train_baseline infersent --corrupt_type only_semantics
# python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR  --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --train_baseline infersent --corrupt_type only_syntax
# BertNLI baseline
####python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --train_baseline bertnli --corrupt_type all_context
# python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR  --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --train_baseline bertnli --corrupt_type all
# python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR  --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --train_baseline bertnli --corrupt_type only_semantics
# python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR  --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --use_cluster --use_ddp --per_experiment_nb_gpus $NUM_GPUS --train_baseline bertnli --corrupt_type only_syntax
python codes/trainer.py --mode train --batch_size $BATCH_SIZE --model_save_dir $MODEL_SAVE_DIR --data_name $DATA_NAME --data_loc $DATA_LOC --fine_tune_model $FINE_TUNE_MODEL --learn_down True --downsample True --down_dim 300 --optim adam,lr=0.0001 --dropout 0.2 --decoder_hidden 200 --load_fine_tuned --train_mode $TRAIN_MODE --gpus 0 --corrupt_type all_context --bert_model bert-base-uncased
