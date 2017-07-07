#!/bin/bash
DATASET_DIR=/media/Disk/tfrecords
EVAL_DIR=./logs/800_400_0.5/eval_0.8
CHECKPOINT_PATH=./logs/800_400_0.5/model.ckpt-231924
python eval_ssd_network.py \
    --eval_dir=${EVAL_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=cars_2017 \
    --dataset_split_name=test \
    --model_name=ssd_800_400_vgg \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --matching_threshold=0.8 \
    --nms_threshold=0.45 \
    --select_threshold=0.08 \
    --wait_for_checkpoints=False \
    --batch_size=1 \
