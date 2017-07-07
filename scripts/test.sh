#!/bin/bash
DATASET_DIR=/media/Disk/tfrecords/
EVAL_DIR=./logs/500_250_0.55/eval_0.8
CHECKPOINT_PATH=./logs/500_250_0.55/model.ckpt-204791
python eval_ssd_network.py \
    --eval_dir=${EVAL_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=cars_2017 \
    --dataset_split_name=test \
    --model_name=ssd_500_250_vgg \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --matching_threshold=0.8 \
    --wait_for_checkpoints=False \
    --batch_size=1 
