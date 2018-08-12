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

![alt text] [image1]


# FCN Architecture

![alt text] [image2]

Typical network architectures employed for object detection or classification use "Fully Connnected" Layers to learn class of objects. Fully Convolutional Network e


1. 1x1 Convolutions
2. Transposed Convolutions
3. Skip connections


## 1x1 Convolution

## Transposed convlution

![alt text] [image3]

## Skip connections


# Training

# Results

## Sample images

## Sample Video

