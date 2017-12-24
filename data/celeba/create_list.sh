#!/bin/bash
input_image_dir=~/data/img_align_celeba
output_list_file=~/git/dcgan.caffe/data/celeba/train.txt

find ${input_image_dir} -type f -name "*.jpg" | awk '{print $0 " 0" }' > ${output_list_file}
tail ${output_list_file}
echo "${output_list_file} has been created."
 
