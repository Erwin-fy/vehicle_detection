DATASET_DIR=/media/SecondDisk/CARS2017/test/
OUTPUT_DIR=/media/SecondDisk/tfrecords
python tf_convert_data.py \
    --dataset_name=cars \
    --dataset_dir=${DATASET_DIR} \
    --output_name=car_2017_test \
    --output_dir=${OUTPUT_DIR} \
    --shuffling=False
