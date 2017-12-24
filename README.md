# dcgan.caffe: A pure caffe-python implementation of [DC-GAN](https://github.com/soumith/dcgan.torch)
Forked from https://github.com/samson-wang/dcgan.caffe

## Dependency
You will need to compile the [deepsim-caffe-branch](https://github.com/dosovits/caffe-fr-chairs/tree/deepsim). And make sure your `PYTHONPATH` point to it.
The deepsim-caffe only support cudnn-4.0. Disable the cudnn engine and replace some convolution layers with the master branch, a latest cudnn and cuda will work fine.

cd ~/git
git clone https://github.com/dosovits/caffe-fr-chairs.git caffe-fr-chairs
git checkout remote/origin/deepsim
git branch
cd caffe-fr-chairs
mkdir build
cd build
cmake -DUSE_CUDNN=OFF ..    (To disable cudnn)
make all
sudo make install

## Use dcgan.caffe
(1) Download img_align_celeba.zip from http://mmlab.ie.cuhk.edu.hk/projects/CelebA.html under the link "Align&Cropped Images".
    Extract to ~/data/img_align_celeba

(2) Download or clone dcgan.caffe
    cd ~/git
    git clone https://github.com/joehuang74/dcgan.caffe.git dcgan.caffe

(3) Create training data list train.txt
    cd ~/git/dcgan.caffe/data/celeba
    ./create_list.sh
 
(4) Modify data.prototxt to meet your needs
    image_data_param {
    	source: "/home/j/git/dcgan.caffe/data/celeba/train.txt"
    	batch_size: 64
    	new_height: 64
    	new_width: 64
    }

(5) Train models
    cd ~/git/dcgan.caffe/examples/celeba
    ./train.sh 
  
(6) Generate images
    ./generate.sh


