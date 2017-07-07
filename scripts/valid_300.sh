#!/bin/bash
DATASET_DIR=/media/Disk/tfrecords
EVAL_DIR=./logs/300_avgpool/valid
CHECKPOINT_PATH=./logs/300_avgpool/
python eval_ssd_network.py \
    --eval_dir=${EVAL_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=cars_2017 \
    --dataset_split_name=test \
    --model_name=ssd_300_vgg \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --wait_for_checkpoints=True \
    --batch_size=1 \
    --max_num_batches=500
