#!/bin/bash
input_image_dir=~/data/n5_tunnel_extracted_images_v1
output_list_file=~/git/dcgan.caffe/data/vehicle_v1/train.txt

rm -f ${output_list_file}
for grabcut_image_dir in `find ${input_image_dir} -type d -name "*_grabcut"`
do
	echo "Processing ${grabcut_image_dir}"
	find "${grabcut_image_dir}" -type f -name "*.jpg" | awk '{print $0 " 0" }' >> ${output_list_file}
done
tail ${output_list_file}
echo "${output_list_file} has been created."
 
