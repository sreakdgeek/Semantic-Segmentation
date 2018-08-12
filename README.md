# Semantic-Segmentation

Semantic segmentation is a process of recognizing meaningful segments in a given image such as identifying objects such as road, vehicles, pedestrians at a great granularity. 
This project implements a Deep Neural Network that does a pixel-wise classification of road vs non-road. Such a classification may help an Autonomous vehicle identify the drivable
portion of the road or an ADAS system identify where the obstacle is and predict possibility of collision. 

Typically, object detection using techniques such as Single Shot Detector (SSD), R-CNN or YOLO algorithm are used to identify objects in the traffic scene. One limitation of these
techniques is that bounding boxes drawn around the objects may not be tight and may lead to inaccurate localization of the object. Semantic Segmentation performed through technique called
"Fully Convolutional Networks" (FCN) enable pixel-level classification of objects.


[//]: # (Image References) 
[image1]: ./images/1_fcn.png
[image2]: ./images/2_encoder_decoder.png
[image3]: ./images/3_Transposed_Convolution.png
[image4]: ./images/um_000001.png
[image5]: ./images/um_000002.png
[image6]: ./images/um_000003.png
[image7]: ./images/um_000004.png
[image8]: ./images/um_000005.png
[image9]: ./images/uu_000095.png
[image10]: ./images/uu_000096.png
[image11]: ./images/uu_000097.png

![alt text][image1]


# Fully Convolutional Networks (FCN) Architecture

![alt text][image2]

Typical network architectures employed for object detection or classification use "Fully Connnected" (FC) Layers to learn class of objects. FC Layers do not preserve spatial 
information which is very important for object localization. Fully Convolutional Networks preserve the spatial information and can work on images of any arbitrary size. FCN
consists of mainly two components - an encoder part, which learns the features from the images, a decoder part - which upsamples the learned features into an image of
original size with learned segments. FCNs ahieve this throuh below three components:

1. 1x1 Convolutions
2. Transposed Convolutions
3. Skip connections


## 1x1 Convolution

A 1x1 convolution replaces FC layer an converts input into a 4-D output tensor preserving the spatial information. 1x1 convolution is an element-wise multiplication followed by
summation and a non-linear activation such as RELU applied depth-wise.

## Transposed convlution

Transposed convolutions help in upsampling previous layer's output to a higher dimension. Typically, upsampling is done using techniques such as Nearest neighbor interpolation or
bilinear interpolation, however these technqiues do not inolve any learning. Transpose convolutions help in uspsampling in an optimal way. In semantic segmentation task, features
learned through encoder network are restored to original image dimension while learning class of every pixel in the original image.

![alt text][image3]

## Skip connections

When encoding the features, information is lost. Skip connections help restore lost information. Skip connections work by combining output of one layer with the output of another
subsequent layer using element-wise addition.

FCN uses cross-entropy loss at pixel level as loss function to optimize the parameters of the network.

# Training

FCN for this task was trained using Kitti data set using VGG-16 as an encoder network. 
Below were the hyper parameters of the network:

1. Number of epochs - 65
2. Learning rate - 1e-3
3. Batch size - 4
4. Adam optimizer

# Results

## Sample images

Performance of the network on the test images seem to be pretty decent as evident from the below sample images:

![alt text][image4]
![alt text][image5]
![alt text][image6]
![alt text][image7]
![alt text][image8]
![alt text][image9]
![alt text][image10]
![alt text][image11]

## Sample Video

Below is inference on a sample video snippet on Indian road conditions. Networks seems to have done poorly on this video as Indian road conditions are much
more complex and image features of Indian roads vary in terms of color, texture, etc and training data does not contain sufficient samples of such images.
With more training and data and complex network such as U-net would be helpful to generalize better.

https://github.com/sreakdgeek/Semantic-Segmentation/blob/master/semantic_output_new2.avi

# References

https://people.eecs.berkeley.edu/~jonlong/long_shelhamer_fcn.pdf

https://towardsdatascience.com/up-sampling-with-transposed-convolution-9ae4f2df52d0

http://deeplearning.net/software/theano/tutorial/conv_arithmetic.html#transposed-convolution-arithmetic
