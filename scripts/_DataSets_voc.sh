DATASET_DIR='./VOC2012/'
OUTPUT_DIR='./tfrecords'
python tf_convert_data.py \
    --dataset_name=cars \
    --dataset_dir=${DATASET_DIR} \
    --output_name=voc_2007_train \
    --output_dir=${OUTPUT_DIR}
