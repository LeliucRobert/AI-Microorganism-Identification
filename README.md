

**A.I - MICROORGANISM IDENTIFICATION**
                                                                                                           
                                                                                                           
**ION LUCA HIGHSCHOOL**

**SUPERVISORS:**

  **PROFESOR BARCĂU MIRELA**

**AUTHORS:**

  **LUPU SEBASTIAN-RADU**
  
  **LELIUC ROBERT-CONSTANTIN**

**2021**

# Tardigrade Detection using Machine Learning

## Introduction

Artificial intelligence (AI) is the capability of a system to correctly interpret external data, learn from it, and use what it has learned to achieve specific goals and tasks through flexible adaptation.

The history of AI, as we understand it today — a technology that "thinks" like a human — began in the second half of the last century. With the invention of the digital computer in the 1940s, the idea of constructing an artificial, electronic mind took shape. From 1949 to 1960, Arthur Samuel worked intensively on developing AI, from simple pattern recognition to learning from experience. Contrary to popular belief, AI is not limited to IT or the tech industry but is widely used in fields like medicine, business, education, and manufacturing. An AI system can learn through two main methods: Machine Learning and Deep Learning. For example, Machine Learning focuses on building systems that can learn or improve performance based on the data they process, while Deep Learning refers to more profound learning methods based on neural networks.

We chose to develop a Machine Learning AI capable of identifying any type of tardigrade.

Machine learning methods eliminate the need for programming a machine for every action from a list of possibilities. Instead, they set reactions based on the intelligence of the machine.

Currently, machine learning methods are becoming more sophisticated, integrated into complex medical applications, such as diagnosing depression based on speech patterns or identifying individuals with suicidal tendencies.

Since this type of AI is capable of learning from a vast amount of data, the most crucial step was gathering data. We managed to create an AI capable of identifying tardigrades. We chose this recognition project because data collection was more straightforward, given that tardigrades are microorganisms that live in extreme environments and can be found almost anywhere. We collected samples from the surroundings of our high school. We soaked these samples in water for a few hours and examined them under a microscope, where we could identify tardigrades. We took many pictures, both with and without tardigrades, to train the program effectively. The AI needs to be trained with a lot of data but must stop at a certain point to avoid confusion.

## 1. Theoretical Basis

### 1.1 Haar Method

Unlike most AI systems, we used a mathematical method called Haar, which does not rely on artificial neural networks.

In 2001, Paul Viola and Michael Jones proposed an object detection method for digital images. It is one of the first methods capable of detecting objects efficiently and in real time. Initially invented for face detection, it can also detect other objects, such as cars or airplanes, and in our case, tardigrades.

An essential step is training the program with positive data that contains the object and negative data, preferably in large volumes and at a 50% ratio. The data used to train the program must first be reviewed and classified. After preparing the data, the program will attempt to extract common features that it will later use to identify objects. For example, in facial recognition, the program might detect differences in light intensity between the nose and the eyes. After processing, several features are identified, and then through training over several generations, these features are classified based on their frequency. With each generation, the program improves. After the learning phase, thresholds for each classifier are recorded in an XML metadata file, which will be used during the detection phase.

### 1.2 OpenCV Library

OpenCV is an open-source library used for visual detection. Initially written in C++, it was later adapted for C, C#, Python, and Java. This library can be used for facial recognition, gesture recognition, object tracking, and motion estimation. OpenCV began as a research initiative by Intel in 1999. The first beta version was released in 2001, with the final version coming in 2006. The name "OpenCV" comes from "open" referring to its open-source nature, and "CV" which stands for "computer vision." OpenCV runs on several desktop operating systems, including Windows, Linux, macOS, FreeBSD, NetBSD, OpenBSD, and on mobile systems like Android, iOS, Maemo, and BlackBerry 10.

### 1.3 Cascade Architecture

This is an essential step in data recognition and is part of the Viola-Jones method. The initial image is divided into sub-grids, and in each stage of this function, a "strong" classifier is used for detection. On average, only 0.01% of sub-grids are positive. Each sub-grid has an identical evaluation time. In each stage, a new classifier is chosen to eliminate false positives.

### 1.4 AdaBoost

AdaBoost is an AI technique used in the cascade architecture to combine multiple weak classifiers into a strong one. One key aspect is that Viola and Jones used AdaBoost not only to train the classifier but also to select a significantly smaller number of initially defined features to be used in the final stages.

## 2. Training the Program

### 2.1 Data Processing and Identification

After collecting the raw data, we classified it into positive and negative datasets, using around 600 images. For each positive image, we manually analyzed and enclosed the object(s) in a rectangle containing all its pixels, recording the number and position of objects. This process was crucial to teaching the program to identify a tardigrade and later enclose it in a rectangle automatically.

### 2.2 Training the Program

Using a script with a `.bat` extension, we trained the program to identify tardigrades using the provided data, around 400 positive images. We concluded that the optimal number of generations is 20; beyond that, the error margin increases due to the limited dataset. A lower number of generations did not provide enough time for the program to refine all the data.

## 3. Applications

### 3.1 Program Overview

The program consists of four subprograms and three scripts. Two subprograms are used to create data from saved images, and the other two are for data captured from the camera. The three scripts are used for training the program — in our case, teaching it to identify tardigrades.

### 3.2 Subprograms

#### 3.2.1 Data Processing from Gallery

By pressing the `q` key, the program deletes all images from the positive and negative folders. Then, the subprogram processes all images from the gallery, classifying them into positive and negative categories. If a tardigrade is identified in an image, pressing `p` saves it to the positive folder; otherwise, pressing `n` saves it to the negative folder. Negative images do not require further processing, while positive images must be manually enclosed in rectangles, with their coordinates stored for later use.

#### 3.2.2 Data Identification from Gallery

#### 3.2.3 Data Processing from the Camera

#### 3.2.4 Live Data Identification

### 3.3 Scripts

#### 3.3.1 Annotating Positives

This script is essential in processing positive data. It allows the user to enclose tardigrades or other objects in rectangles and store the data for future use.

#### 3.3.2 Assigning Positives to an XML File

The program requires an XML file to function. We used this script to automate the process of converting positive data into an XML file.

#### 3.3.3 Training the Program

This script was created to train the program with positive data. After running the script, two parameters must be provided: the desired number of generations and the number of positive images.

### 3.4 Program Flexibility

The most remarkable feature of this program is its adaptability. If you wish to teach the program to identify other objects like cars, airplanes, or other microorganisms (as we initially intended but couldn’t due to time constraints), you only need to process images of the desired object and follow the same steps. The program will be able to recognize both tardigrades and other objects.

