#!/bin/bash
DATASET_DIR=/media/Disk/tfrecords
EVAL_DIR=./logs/500_250_0.8/valid
CHECKPOINT_PATH=./logs/500_250_0.8/
python eval_ssd_network.py \
    --eval_dir=${EVAL_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=cars_2017 \
    --dataset_split_name=train \
    --model_name=ssd_500_250_vgg \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --wait_for_checkpoints=False \
    --batch_size=1 \
    --max_num_batches=1000
