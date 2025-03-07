
# Table of Contents

1.  [best links](#org27f0359)
2.  [tasks](#org296397e)
    1.  [video enhancement technologies](#org3d8e6f9)
    2.  [vca - Video content analysis](#org5eeb0b0)
3.  [metrics](#org739fa9f)
4.  [Anisotropy image](#org8735e3c)
5.  [Computer vision](#orgd87bedb)
    1.  [Steps of image processing:](#org7c11288)
    2.  [CV LIBRARIES](#org1eeeaef)
    3.  [image CV<sub>8U</sub>, CV<sub>32F</sub>](#org944c9d2)
        1.  [convert](#org088570e)
    4.  [Color models](#orgf464341)
        1.  [CIE XYZ color space](#org03a507e)
        2.  [RGB](#org52cb3b5)
        3.  [HSV](#org71cbef5)
    5.  [OpenCV techs](#org81f96d9)
        1.  [Histogram Equalization](#orgca3dc11)
        2.  [image segmentation](#org020cdb5)
        3.  [extract features](#orgfd1f806)
        4.  [Discrete Fourier Transform, ряд Фурье](#org444b351)
    6.  [Основные преобразования 2 di](#orgaa616d4)
        1.  [linear transformation (Linear map) - линейный оператор](#orgc4cc1c2)
    7.  [feature detection](#orgdd3d862)
    8.  [Optical Character Recognition](#org621bf60)
    9.  [datasets](#org92092f4)
    10. [USECASES](#org9968a17)
        1.  [rotate](#orgfd98071)
        2.  [boxes with check mark (check box) or with text](#org55f5315)
    11. [links](#org23cb2fa)
6.  [OpenCV](#org55b0fdf)
    1.  [basic](#org17566d7)
        1.  [DPI](#org7eabaa1)
    2.  [Basic Operations](#org59f2aa1)
    3.  [imread](#org347d1b0)
    4.  [resize() and interpolation](#orgf270653)
    5.  [help libs](#org4ba7ab6)
    6.  [install](#org41a52cb)
    7.  [load save](#orgf66b158)
    8.  [display](#org9da9596)
    9.  [Histogram](#orgef964e1)
    10. [Normalize](#org23b07ff)
    11. [Contours](#org8a0d272)
        1.  [working with contours](#org0d4e1d4)
        2.  [get example of contour](#org3cdbd68)
    12. [Blur](#org4ab4b61)
    13. [Eroding and Dilating](#orgfcc6cf7)
    14. [Features](#orgc709283)
        1.  [algos:](#org5072c9a)
        2.  [matches](#org6482355)
        3.  [DMatch](#orgc6f680f)
    15. [Filtering](#orgc423cb7)
    16. [Sobel Derivatives](#org6adf7a4)
    17. [Colors](#orgf41d9f2)
        1.  [channels](#orgabbf19f)
        2.  [histogram](#org91c00ad)
    18. [template matching](#org03ab808)
    19. [Hough Line Transform](#org3bc4903)
    20. [Contrast and brightness](#org9436d6f)
    21. [Image Recognition and Object Detection](#org8ec218c)
    22. [Generalized Hough Transform - object detection](#org5e2c12f)
    23. [Cascade of Classifiers - object detection](#org650143d)
        1.  [train](#org580d26b)
    24. [DNN - object detection](#orgbfe0847)
    25. [image alignment or Homography](#org0087a1a)
        1.  [AKAZA](#org464eed0)
        2.  [findHomography](#orgd022733)
    26. [Morphological Transformations](#org0674416)
    27. [Deep Neural Network module (dnn)](#org08c1831)
    28. [USECASES](#org6ecd473)
        1.  [resize with black are keep ratio](#org6635074)
        2.  [subimage](#orgab3afbe)
        3.  [scale to target height](#org0e7b30b)
        4.  [colours](#org75a8c70)
        5.  [most common colour](#org9d2cb76)
        6.  [max x min y](#org489d46f)
        7.  [Images blending-adding](#org87f1ff0)
        8.  [filter contours](#orgcf1fab6)
        9.  [tables](#org4189604)
        10. [rotate with PIL and Hough Lines](#org22d45b0)
        11. [PIL convert](#orgddf519d)
        12. [rotate](#org746179b)
        13. [resize, shift-translate, shrinking with warpAffine](#orga341492)
        14. [Lines](#org73c802a)
        15. [minAreaRect](#org891162b)
        16. [detect shape of contour](#org1195c01)
        17. [detect objects by shape (link)](#orgb00b166)
        18. [image to batch](#orge150dbf)
        19. [cut part of image](#org6b9ff3d)
    29. [troubleshooting](#orgdc7e12e)
7.  [MMCV](#orgfee642a)
8.  [Abby](#org89eadb2)
9.  [2022 A Guide to Image and Video based Small Object Detection using Deep Learning : Case Study of Maritime](#orgb3e98b1)
    1.  [video based](#org0278e8f)
10. [Transformers architecure](#org8868a83)
11. [techniques: augmentation, super-resolution, &#x2026;](#org0940a95)
12. [Rusnarbank<sub>OPENCV</sub>](#org07df06f)
    1.  [Redis](#org4e370c9)
    2.  [client](#org575baf6)
    3.  [dependences](#orge1b0231)
    4.  [tesseract](#orgc64e70f)
    5.  [Return JSON](#orgd17bb3e)
13. [passport](#orgbf3cf0b)
    1.  [error](#orgfdca03f)
    2.  [Расчет контрольной суммы](#org93eb543)
    3.  [passport serial number](#org0cc77f6)
    4.  [string metric for measuring the difference between two sequences](#org9cdcd99)
14. [captcha](#org85cb378)
    1.  [captcha image](#org8fb5f02)
    2.  [audio capcha](#org263e08c)
        1.  [split audio file by worlds(librosa)](#org85def83)
    3.  [reCAPTCHA google](#org1ce3e2b)
    4.  [links](#orgf3fa572)
15. [optical label](#orgbc8ab68)
    1.  [opencv](#org20f62f4)
    2.  [qrcode](#org5a02c41)
    3.  [segno](#orgb2a2903)
16. [OCR ICR](#org99a9919)
    1.  [terms](#orgd1ba9d1)
    2.  [Components:](#orgde4cb0e)
    3.  [optical character recognition (OCR)](#org86d8bd8)
    4.  [intelligent character recognition (ICR)](#orga0a8c8e)
    5.  [Forms processing](#org3c2b5f8)
    6.  [typical scheme](#org5c0868f)
17. [подпись  signature (*ˈsɪɡnətʃər*;) handwritten](#org49e5d0d)
    1.  [soft](#orgd22c364)
18. [12 лучших репозиториев GitHub по компьютерному зрению](#org5dc41db)
19. [VR](#orge74f7ad)
20. [Система управления видеонаблюдением](#org26be9ce)
21. [Tools](#org9f47f1d)
22. [barcode reader from command line](#org612f54b)
23. [Neural Network Models](#org20e8dbd)
24. [NEXT LEVEL](#orge238b14)

-**- mode: Org; fill-column: 110; coding: utf-8; -**-

<https://stackoverflow.com/questions/40192541/how-to-detect-the-bounds-of-a-passport-page-with-opencv>

TODO Уменьшение яркости и повышение контрастности для устранения фоновых артефактов.
<https://ru.stackoverflow.com/questions/377281/%D0%A0%D0%B0%D1%81%D0%BF%D0%BE%D0%B7%D0%BD%D0%B0%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%B0-%D0%BD%D0%B0-%D0%BE%D1%82%D1%81%D0%BA%D0%B0%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%BE%D0%BC-%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%D0%B5>


<a id="org27f0359"></a>

# best links

bible <https://docs.opencv.org/>

<https://huggingface.co/learn/computer-vision-course/unit0/welcome/welcome>


<a id="org296397e"></a>

# tasks


<a id="org3d8e6f9"></a>

## video enhancement technologies

-   video denoising
-   image stabilization
-   unsharp masking
-   super-resolution


<a id="org5eeb0b0"></a>

## vca - Video content analysis

-   **Dynamic masking:** Blocking a part of the video signal based on the signal itself, for example because of
    privacy concerns.
-   **Flame and smoke detection:** IP cameras with intelligent video surveillance technology can be used to detect
    flame and smoke in 15–20 seconds or even less because of the built-in DSP chip. The chip processes algorithms
    that analyzes the videos captured for flame and smoke characteristics such as color chrominance, flickering
    ratio, shape, pattern and moving direction.
-   **Egomotion estimation:** Egomotion estimation is used to determine the location of a camera by analyzing its
    output signal.
-   **Motion detection:** Motion detection is used to determine the presence of relevant motion in the observed
    scene.
-   **Shape recognition:** Shape recognition is used to recognize shapes in the input video, for example circles
    or squares. This functionality is typically used in more advanced functionalities such as object detection.
-   **Object detection:** Object detection is used to determine the presence of a type of object or entity, for
    example a person or car. Other examples include fire and smoke detection.
    -   **Small Object Detection (SOD):** Transformer architecture used.

-   **Recognition:** Face recognition and Automatic Number Plate Recognition are used to recognize, and therefore
    possibly identify, persons or cars.
-   **Style detection:** Style detection is used in settings where the video signal has been produced, for example
    for television broadcast. Style detection detects the style of the production process.[9]
-   **Tamper detection:** Tamper detection is used to determine whether the camera or output signal is tampered
    with.
-   **Video tracking:** Video tracking is used to determine the location of persons or objects in the video
    signal, possibly with regard to an external reference grid.
-   **Video error level analysis:** Video scene content tamper analysis using free software. Video Error level
    analysis (VELA)
-   **Object co-segmentation:** Joint object discovery, classification and segmentation of targets in one or
    multiple related video sequences


<a id="org739fa9f"></a>

# metrics

-   mean Average Precision (mAP)
-   Frames Per Second (FPS)
-   number of parameters


<a id="org8735e3c"></a>

# Anisotropy image

Anisotropy (ænɪˈsɒtrəpi) - different properties in different directions

-   structure tensor -  matrix derived from the gradient of a function.
    -   tensor - algebraic object that describes a **multilinear** relationship between sets of algebraic objects related to a **vector space**
        -   Multilinear map - function of several variables that is **linear** separately in each variable. f:V1xV2.. -> W
            -   for each i, if all of the variables but Ui are held constant, then f(U1,U2..) is linear function of Ui.
    -   Gradient - of a scalar-valued differentiable function f of several variables is the vector field (or
        vector-valued function) ∇f (nabla) whose value at a point p is the vector whose components are the \*partial
        derivatives of f at p.
        -   f:Rn -> R, its gradient ∇f:Rn -> Rn.
        -   at point p: ∇f(p) = [ df(p)/dx1, &#x2026; df(p)/dxn ]
        -   Partial derivative - of a function of several variables is its **derivative** with respect to one of those
            variables, with the others held constant. df/dx

Scale space - for handling image structures at different scales - Gaussian derivative operators, can be used
  as a basis for expressing a large class of visual operations


<a id="orgd87bedb"></a>

# Computer vision

Computer vision - high-level understanding from digital images or videos

-   Digital image processing - to process digital images through an algorithm.


<a id="org7c11288"></a>

## Steps of image processing:

1.  image smoothed by a Gaussian kernel in a scale-space representation
2.  threshold or canny edge detection filters
3.  features extracting
4.  path around the feature - feature descriptor or feature vector. - N-jets and local histograms
5.  specific algoriths


<a id="org1eeeaef"></a>

## CV LIBRARIES

-   OpenCV C C++ Python
-   Caffe C++ Python Matlab - быстрая на С++
-   Torch7
-   clarifai
-   Google Vision API


<a id="org944c9d2"></a>

## image CV<sub>8U</sub>, CV<sub>32F</sub>

usually numpy array of image data:

-   CV<sub>8U</sub>: 1-byte unsigned integer (unsigned char).
-   CV<sub>32S</sub>: 4-byte signed integer (int).
-   CV<sub>32F</sub>: 4-byte floating point (float).


<a id="org088570e"></a>

### convert

print(img.dtype)
>>> float32
img.astype(np.uint8)


<a id="orgf464341"></a>

## Color models


<a id="org03a507e"></a>

### CIE XYZ color space

Исторически сложилось, XYZ - эталонная цветовая модель организациии CIE (commission internationale
d'eclairage)— Международная комиссия по освещению) в 1931 году.

Иногда используют xyY представление XYZ. Если Y = const, можно изобразить все возможные монохроматические
цвета спектра, то они образуют собой незамкнутый контур, так называемый спектральный локус.

-   Y - светлота
-   x - X/(X+Y+Z)
-   y - Y/(X+Y+Z)

-   RGB - 24-bit - 8 bits, for red, green, and blue


<a id="org52cb3b5"></a>

### RGB

red, green, blue

-   tupically 24-bit RGB or 32-bit RGBA colors
-   8+8+8 (sRGB - 8 bits per channel)

RGBA32 or ARGB - with alpha channel

-   alpha channel - transparency


<a id="org71cbef5"></a>

### HSV

Сделан чтобыпроще понять человеку как сделать цвет и отдельно яркость

-   hue - тон - угол [0,360] - binary [0,255]
    -   0 - red
    -   60 yellow
    -   120 green
    -   180 blue
    -   240 dark blue
    -   300 purple
-   saturation - насыщенность - [0,1]  - binary [0,255]
-   value(brightness) - [0,1]  - binary [0,255]

center - neutral - black at bottom, white at top

hue:

-   NewValue = (((OldValue - OldMin) \* NewRange) / OldRange) + NewMin
-   (((120 - 0) \* 255)/360) + 0 = 85


<a id="org81f96d9"></a>

## OpenCV techs


<a id="orgca3dc11"></a>

### Histogram Equalization

<http://datahacker.rs/opencv-histogram-equalization/>
<https://ru.qaz.wiki/wiki/Histogram_equalization>

-   inrease contrast
-   Этот метод полезен для изображений с ярким или темным фоном и передним планом.
-   хорошо работает с высокой глубиной цвета
-   может увеличить контраст фонового шума и уменьшить полезный сигнал


<a id="org020cdb5"></a>

### TODO image segmentation

<http://datahacker.rs/007-opencv-projects-image-segmentation-with-watershed-algorithm/>


<a id="orgfd1f806"></a>

### TODO extract features

<http://datahacker.rs/004-opencv-projects-how-to-extract-features-from-the-image-in-python/>


<a id="org444b351"></a>

### Discrete Fourier Transform, ряд Фурье

<http://datahacker.rs/opencv-discrete-fourier-transform-part1/>
<http://datahacker.rs/opencv-discrete-fourier-transform-part2/>

-   time-domain analysis shows how a signal changes over time
-   frequency-domain analysis shows how the signal’s energy is distributed over a range of frequencies


<a id="orgaa616d4"></a>

## Основные преобразования 2 di

**Непрерывное отображение**

-   гомеоморфизмом - имеет непрерывное обратное

**Homography** - Проективное преобразование

-   прямые в прямые
-   Allow to manipulate n‐dim vectors in a n+1 dim space
-   2 degrees of freedom
-   homogeneous image coordinates = (x,y,1) - column
-   Converting from homogeneous image coordinates (x,y,1) = (x/w,y/w)
-   Transformation = (x,y,1) \* 3x3 matrix -> (x/w,y/w)

**affine transformation**

-   preserves:
    -   points
    -   straight lines
    -   planes
    -   parallelism
-   include: translation, scaling, homothety, similarity transformation, reflection, rotation, shear mapping,
    and compositions
-   affine transformation matrix - последняя строка [001]
-   projective transformation matrix


<a id="orgc4cc1c2"></a>

### linear transformation (Linear map) - линейный оператор

**rotation** point (x/y) 2 dim, θ - от x+ оси (one degree of freedom):

-   [ cos -sin ]  x = x\*cosθ - y\*sinθ
-   [ sin  cos ]  y = x\*sinθ + y\*cosθ

**Reflection**

**caling** by 2

-   [2 0]
-   [0 2]

horizontal **shear** mapping - Горизонтальный сдвиг

-   [1 m]
-   [0 1]

squeeze mapping

-   [k 0]
-   [0 1/k]

**projection** onto the y axis:

-   [0 0]
-   [0 1]


<a id="orgdd3d862"></a>

## feature detection

Types of image features:

-   **Edges:** Canny edge detector
-   **Corners / interest points:** point-like features, early algorithms first performed edge detection, and then
    analysed the edges to find rapid changes in direction (corners)
-   **Blobs / regions of interest points:** complementary description of image structures in terms of
    regions. Just like edge
-   **Ridges:** represents an axis of symmetry has an attribute of width associated with each ridge point -
    algorithmically harder to extract


<a id="org621bf60"></a>

## Optical Character Recognition

-   **handwritten** or **printed text** into **machine-encoded text**
-   распознавание латинских символов в печатном тексте в настоящее время возможно, только если доступны чёткие
    изображения, такие, как сканированные печатные документы. Точность при такой постановке задачи превышает 99
    %
-   рукописного «печатного» и стандартного рукописного текста, а также печатных текстов других форматов
    (особенно с очень большим числом символов) в настоящее время являются предметом активных исследований


<a id="org92092f4"></a>

## datasets

Berkeley Segmentation Data Set and Benchmarks 500 (BSDS500)
<https://www2.eecs.berkeley.edu/Research/Projects/CS/vision/grouping/resources.html>


<a id="org9968a17"></a>

## USECASES


<a id="orgfd98071"></a>

### rotate

array([1, 2],
[3, 4])

np.rot90(m)
array([2, 4],
[1, 3]])


<a id="org55f5315"></a>

### boxes with check mark (check box) or with text

-   <https://github.com/karolzak/boxdetect#features>
-   <https://fuzzylabs.ai/blog/checkbox-detection/>
-   is ticked <https://stackoverflow.com/questions/62907802/best-way-to-detect-if-checkbox-is-ticked>


<a id="org23cb2fa"></a>

## links

-   Tesseract VS Google OCR <https://fuzzylabs.ai/blog/the-battle-of-the-ocr-engines/>
-   <https://en.wikipedia.org/wiki/Outline_of_computer_vision>


<a id="org55b0fdf"></a>

# OpenCV

-   hpp *usr/include/opencv4/opencv2*
-   tpoint <https://www.tutorialspoint.com/opencv/index.htm>
-   doc <https://www.docs.opencv.org/master/>
-   doc <https://docs.opencv.org/4.8.0/d9/df8/tutorial_root.html>
-   Doc numpy <https://docs.scipy.org/doc/numpy/reference/arrays.ndarray.html>
-   <https://ru.wikipedia.org/wiki/OpenCV>
-   <https://gitlab.rusnarbank.ru/m.smirnov/Rusnarbank_OPENCV>
-   <https://www.pyimagesearch.com/2018/08/20/opencv-text-detection-east-text-detector/>
-   шпаргалка <https://tproger.ru/translations/opencv-python-guide>
-   imutils -  Adrian Rosebrock  <https://github.com/jrosebr1/imutils>


<a id="org17566d7"></a>

## basic

-   Region of interest (ROI)
-   color-space conversion
    -   RGB - 24-bit - 8 bits, for red, green, and blue
    -   HSV - hue, saturation, value. OpenCV uses HSV ranges between (0-180, 0-255, 0-255).
    -   binary images - 0,1 or 0,255
    -   gray image - single channels 8-bit image
-   Morphological Transformations - performed on binary images
-   Gradient filters or High-pass filters
    -   Sobel
    -   Scharr
    -   Laplacian
-   Thresholding filter - grayscale image -> If pixel value is greater than a threshold value, it is assigned
    one value (may be white), else it is assigned another value (may be black). -> grayscale or binary image AND retVal -
-   **bimodal image** is an image whose histogram has two peaks
-   Canny edge detection - argument: min and max values - Noise Reduction, Intensity Gradient
-   Image Pyramids - Higher level (Low resolution)
    1.  Gaussian Pyramid - higher level is formed by the contribution from 5 pixels with gaussian weights -
        rediced to one-fourth of original area MxN -> M/2,N/2 - cv.pyrDown() and cv.pyrUp()
    2.  Laplacian Pyramids - images are like edge images only
-   Contours - curve joining all the continuous points - for shape analysis and object detection and recognition.

де-факто, стандартом в области компьютерного зрения

-   is written in C++ and its primary interface is in C++
-   Python, Java and MATLAB/OCTAVE
-   CUDA-based GPU and OpenCL-based GPU interfaces
-   Windows, Linux, macOS, FreeBSD, NetBSD, OpenBSD
-   Android, iOS, Maemo, BlackBerry 10

**EAST** EAST: An Efficient and Accurate Scene Text Detector.

-   OpenCV 3.4.2 and OpenCV 4
-   arbitrary orientations
-   720p images

3 ways to document recognation

-   AKAZE + rectangles template
-   search rectangle by text with gradients or threshold
-   search text in areas with tesseract detected text


<a id="org7eabaa1"></a>

### DPI

dpi is just a number in the JPEG/TIFF/PNG header

DPI - scale factor to convert inches coordinates into pixel coordinates and back

OpenCV doesn't know about DPI


<a id="org59f2aa1"></a>

## Basic Operations

-   BGR image - 3d
-   grayscale image - 1d

    img.shape = (height, width, channels) = (rows, cols, channels)
    cv.resize(img, (width, height))

    import numpy as np
    import cv2 as cv
    
    img = cv.imread('messi5.jpg')  # numpy.ndarray - type
    px = img[100,100]   #[157 166 200] - Blue, Green, Red
    img.item(10,10,2)   # red value of pixel
    img.itemset((10,10,2),100)   # set red value of pixel
    print( img.shape )  # (342, 548, 3)
    print( img.size )   # 562248
    print( img.dtype )  # uint8 or cv.CV_8U
    
    b,g,r = cv.split(img) # Blue, Green, Red
    b = img[:,:,0] # faster
    img = cv.merge((b,g,r))
    
    cv2.imshow('image',img) # show image in window
    cv2.waitKey(0) 		# wait for any key indefinitely
    cv2.destroyAllWindows() # close window
    
    from matplotlib import pyplot as plt
    plt.imshow(img, cmap = 'gray', interpolation = 'bicubic')
    plt.xticks([]), plt.yticks([])  # to hide tick values on X and Y axis
    plt.show()
    
    #color-space conversion
    # HSV or HSB - тон (1-360), насыщенность(0-100)(0-серый), яркость(0-100)
    hsv = cv.cvtColor(input_image,  cv.COLOR_BGR2HSV) # convert, cv.COLOR_BGR2GRAY
    lower_blue = np.array([110,50,50])
    upper_blue = np.array([130,255,255])
    mask = cv.inRange(hsv, lower_blue, upper_blue) # Threshold the HSV image to get only blue colors
    res = cv.bitwise_and(frame,frame, mask= mask) # original minus mask
    
    bgr_green = np.uint8([[[0,255,0 ]]]) # BGR: Green
    hsv_green = cv.cvtColor(green,cv.COLOR_BGR2HSV) # [[[ 60 255 255]]]
    
    # THRESH_BINARY = maxval if pix > thresh else 0
    ret,thresh1 = cv.threshold(src=img, thresh=127, maxval=255, type=cv.THRESH_BINARY)


<a id="org347d1b0"></a>

## imread

-   BGR order and its cv2.imshow() and cv2.imwrite() also expect images in BGR order.
-   Other libraries, such as PIL/Pillow, scikit-image, matplotlib, pyvips store images in conventional RGB order in memory.

img = cv.imread(p, cv.IMREAD<sub>COLOR</sub>)

[[
  [250 250 250] &#x2026;
 ]
 &#x2026;
]

convert to RGB:

-   RGBimage = cv2.cvtColor(BGRimage, cv2.COLOR<sub>BGR2RGB</sub>)


<a id="orgf270653"></a>

## resize() and interpolation

<https://chadrick-kwag.net/cv2-resize-interpolation-methods/>

-   INTER<sub>NEAREST</sub> – a nearest-neighbor interpolation
-   INTER<sub>LINEAR</sub> – a bilinear interpolation (used by default)
-   INTER<sub>AREA</sub> – resampling using pixel area relation. It may be a preferred method for image decimation, as it gives moire’-free results. But when the image is zoomed, it is similar to the INTER<sub>NEAREST</sub> method.
-   INTER<sub>CUBIC</sub> – a bicubic interpolation over 4×4 pixel neighborhood
-   INTER<sub>LANCZOS4</sub> – a Lanczos interpolation over 8×8 pixel neighborhood


<a id="org4ba7ab6"></a>

## help libs

<https://github.com/ulikoehler/UliEngineering>
<https://github.com/ulikoehler/cv_algorithms>


<a id="org41a52cb"></a>

## install

    sudo apt-get install libopencv-dev python-opencv


<a id="orgf66b158"></a>

## load save

    img = cv.imread('messi5.jpg', flag) # as a multi-dimensional NumPy array BGR order

flags: <https://docs.opencv.org/4.1.0/d6/d87/imgcodecs_8hpp.html>

-   cv.IMREAD<sub>COLOR</sub> : transform to BGR colours. Any transparency of image will be neglected. It is the default flag.
-   cv.IMREAD<sub>GRAYSCALE</sub> = 0 : Loads image in grayscale mode
-   cv.IMREAD<sub>UNCHANGED</sub> : Loads image as such including alpha channel

    cv2.imwrite('messigray.png', crop_box)


<a id="org9da9596"></a>

## display

    
    self.contours = np.array(list(filter(lambda x: x is not None, self.contours)))
    self.img[:] = 255
    cv2.drawContours(self.img, self.contours, -1, (0, 255, 0), 10)
    cv2.imshow('image', self.img)  # show image in window
    cv2.waitKey(0)  # wait for any key indefinitely
    cv2.destroyAllWindows()  # close window
    
    from matplotlib import pyplot as plt
    
    img = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
    plt.imshow(image)
    plt.axis("off")
    plt.show()
    
    # несколько
    plt.subplot(121) # два изображения по горизонтали, 211 - два изображения по вертикали
    plt.imshow(img)
    plt.subplot(122)
    plt.plot(hist) # граффик
    plt.xlim([0,256]) # обл допус знач ось X
    plt.show()
    
    
    self.cluster_coords = [[  9.  622. ],[  9.  563.5]]
    pts = np.array([self.cluster_coords], np.int32)
    cv2.drawContours(self.img, pts, -1, (0, 255, 0), 3)
    img = cv2.resize(self.img, (700, 800)) #resize if too large
    cv2.imshow('image', img)  # show image in window
    cv2.waitKey(0)  # wait for any key indefinitely
    cv2.destroyAllWindows()  # close window
    
    
    # contour to rectangle
    x, y, w, h = cv2.boundingRect(contour)
    cv2.rectangle(img, (x, y), (x+w, y+h), (0, 255, 0), 2)


<a id="orgef964e1"></a>

## Histogram

-   pixel value - 0-255
-   histogram - for grayscale image mostly - intensity distribution of an image - x - 0 to 255, у - number of
    pixels
-   BIN - number of pixel values. группировка values - [256] - количество values в одном ящике
-   RANGE : It is the range of intensity values you want to measure. Normally, it is [0,256], ie all intensity values.

    cv.calcHist(images, channels, mask, histSize, ranges[, hist[, accumulate]])

-   mask : mask image. To find histogram of full image, it is given as "None".
-   histSize : this represents our BIN count. Need to be given in square brackets. For full scale, we pass [256].
-   ranges : this is our RANGE. Normally, it is [0,256].

BGR:

    cv.calcHist(images=[img], chnnels=[i], mask=None, histSize=[256], ranges=[0, 256])

HSV:

    hist = cv.calcHist(images=[hue], chnnels=[0], mask=None, histSize=[2-180], ranges=[0, 180])

-   histSize - bins

    from matplotlib import pyplot as plt
    import cv2 as cv
    img = cv.imread('/home/u/sources/tasks-for-job/task_for_zennolab/train.png', 0)
    #img = cv.imread('/home/u/download.jpeg', 0)
    hist = cv.calcHist([img],[0],None,[256],[0,256])
    plt.subplot(121)
    plt.imshow(img)
    plt.subplot(122)
    plt.plot(hist)
    plt.xlim([0,256])
    plt.show()


<a id="org23b07ff"></a>

## Normalize

cv2.normalize(source<sub>array</sub>, destination<sub>array</sub>, alpha, beta, normType )

-   **source<sub>array</sub>:** It is the input image you want to normalize.
-   **destination<sub>array</sub>:** The name for the output image after normalization.
-   **alpha:** norm value to normalize to or the lower range boundary in case of the range normalization.
-   **beta:** upper range boundary in case of the range normalization; it is not used for the norm normalization.
-   **normType:** Type for the normalization of the image.
    -   cv2.NORM<sub>MINMAX</sub>

Don't change:

    norm = np.zeros((800,800)) #  blank image
    norm_image = cv2.normalize(img,norm,alpha=0,beta=255,cv2.NORM_MINMAX) # img -BGR

To convert each pixel to 0-1 range:

    img_normalized = cv2.normalize(img, None, 0, 1.0, cv2.NORM_MINMAX)


<a id="org8a0d272"></a>

## Contours

**cv.findContrours**

    contours, hierarchy = cv.findContours(thresh, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE) # finding white object from black background

-   input - binary image - 0 - BLACK, 255 - WHITE
-   cv.RETR<sub>TREE</sub> - contour retrieval mode -
    -   <https://docs.opencv.org/4.1.0/d9/d8b/tutorial_py_contours_hierarchy.html>
    -   list of contours
    -   [8, 0, -1, -1] -0: 8 next in same hoerarchy, 0 previous in same hoerarchy, -1 no child, no parent
    -   [-1, -1, 3, 1] -1: -1 no next, -1 no previous, 3 is a child, 1 is a parent
-   cv.CHAIN<sub>APPROX</sub><sub>SIMPLE</sub> - contour approximation method -  all the boundary points are stored, or several
    -   cv.CHAIN<sub>APPROX</sub><sub>SIMPLE</sub> - removes all redundant points and compresses the contour, thereby saving memory
-   contours - list of all the contours. Each individual contour is a Numpy array of (x,y) coordinates
-   example for contours parameter: [[[ 22 124] [ 57 160]]]

    contours = [numpy.array([[1,1],[10,50],[50,50]], dtype=numpy.int32) , numpy.array([[99,99],[99,60],[60,99]], dtype=numpy.int32)]

**cv.drawContours** - around or inside of contour

    cv.drawContours(img, [contours[0]], 0, (255), -1)

-   0 - draw first contour of [contours[0]]  (-1 - all)
-   (255) - colour to draw
-   -1 - thinkness - if -1 - draw inside contour

to rectangle:

    x,y,w,h = cv.boundingRect(cnt)


<a id="org0d4e1d4"></a>

### working with contours

    img = cv.imread('/home/u/sudou2.jpg', 0)
    ret, thresh = cv.threshold(img, 127, 255, 0)
    contours, hierarchy = cv.findContours(thresh, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)
    cv.drawContours(img, contours, -1, (0,255,0), 3) # -1 - all, 3 - draw 4th contour
    # draw 4th contour
    cnt = contours[4]
    cv.drawContours(img, [cnt], 0, (0,255,0), 3)
    
    cv.imshow('image', img)  # show image in window
    cv.waitKey(0)  # wait for any key indefinitely
    cv.destroyAllWindows()  # close window
    
    # one format to another
    [x, y, w, h] = cv2.boundingRect(contour)
    img = img[item[1]:item[1] + item[3], item[0]: item[0] + item[2]]
    img = img[y:y + h, x: x + w] # crop rect
    
    center, size, theta = cv2.minAreaRect(coords) # ( center (x,y), (width, height), angle of rotation )
    # Convert to int
    center, size = tuple(map(int, center)), tuple(map(int, size))
    
    # contour with angle
    rect = cv2.minAreaRect(coords)
    box = cv2.boxPoints(rect)
    box = np.int0(box)
    img2 = self.image.copy()
    cv2.drawContours(img2, [box], 0, (0, 0, 255), 2)
    cv2.imshow('image', img2)  # show image in window
    cv2.waitKey(0)  # wait for any key indefinitely
    cv2.destroyAllWindows()  # close window
    
    # EXTERNAL contours
    (_, cnts, hierarchy) = cv.findContours(image, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)


<a id="org3cdbd68"></a>

### get example of contour

    # img_onechannel = img[0]
    # ret, thresh = cv.threshold(img_onechannel, 29, 255, 0)
    # contours, hierarchy = cv.findContours(thresh, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)


<a id="org4ab4b61"></a>

## Blur

convolving (each element of the image is added to its local neighbors, weighted by the kernel) the
image through a low pass filter kernel.

-   **Blur (Averaging) - cv.blur:** pixel replecead by the average of all the pixels in the kernel area
-   **cv.GaussianBlur:** 


<a id="orgfcc6cf7"></a>

## Eroding and Dilating

-   **Dilation:** make white lines FAT
-   **Erosion:** make THIN

<https://docs.opencv.org/3.4/db/df6/tutorial_erosion_dilatation.html>


<a id="orgc709283"></a>

## Features

Good features: corners, &#x2026;

-   Feature Detection - create
-   Feature Description -  describe the region around the feature so that it can find it in other images
-   Feature matching


<a id="org5072c9a"></a>

### algos:

-   Harris Corner Detection - |R| is small->flat, R<0 -> edge, R is large -> corner - rotation-invariant, not scale invariant.
-   cv.goodFeaturesToTrack() - find corners for - for tracking - rotation-invariant, not scale invariant.
-   SIFT - scale invariant.
    
    -   Each keypoint is a special structure which has many attributes like its (x,y) coordinates, size of the
    
    meaningful neighbourhood, angle which specifies its orientation, response that specifies strength of
    keypoints etc.
-   SURF - speeded-up version of SIFT
-   ORB is much faster than SURF and SIFT and ORB descriptor works better than SURF


<a id="org6482355"></a>

### matches

**Brute-Force Matcher** one feature from 1 set match with all other features in second set. Closes is returned.

-   bf = cv.BFMatcher(cv.NORM<sub>HAMMING</sub>, crossCheck=True)
-   match alternatives:
    -   DMatch - result of  bf.match(des1,des2)
    -   BFMatcher.knnMatch() to get k best matches, so we can apply ratio test.

**FLANN Matcher** - faster, uses Approximate Nearest Neighbors

matcher.match(queryDescriptors,trainDescriptors)

<https://docs.opencv.org/4.x/dc/dc3/tutorial_py_matcher.html>


<a id="orgc6f680f"></a>

### DMatch

    kp1, des1 = sift.detectAndCompute(img1,None)

kp1 - (< cv2.KeyPoint 0x7f214cbb2d90>, < cv2.KeyPoint 0x7f214cf18ae0>,  &#x2026;)

des1 - distances matrix

    matches = flann.knnMatch(des1,des2,k=2)

matches - (< cv2.DMatch 0x7f214c2362d0>, < cv2.DMatch 0x7f214c236510>)

source and target points:

    for m, n in nn_matches:
        matched1.append(kpts1[m.queryIdx])
        matched2.append(self.kpts2[m.trainIdx])
    
    # ordered lists
    src_pts = [i.pt for i in matched1]
    dst_pts = [i.pt for i in matched2]


<a id="orgc423cb7"></a>

## TODO Filtering


<a id="org6adf7a4"></a>

## Sobel Derivatives

express pixel intensity changes


<a id="orgf41d9f2"></a>

## Colors

-   <https://www.pyimagesearch.com/2014/01/22/clever-girl-a-guide-to-utilizing-color-histograms-for-computer-vision-and-image-search-engines/>


<a id="orgabbf19f"></a>

### channels

    color = ('b', 'g', 'r')
    for i, col in enumerate(color):
    b = (np.ones((500, 500)) * characters[0]).astype(np.uint8)
            g = (np.ones((500,500)) * characters[1]).astype(np.uint8)
            r = (np.ones((500, 500)) * characters[2]).astype(np.uint8)
    b = img[:,:, 0]
    g = img[:,:, 1]
    r = img[:,:, 2]
    
    # back to image
    b = np.ones((500, 500)).astype(np.uint8)
    g = np.ones((500,500)).astype(np.uint8)
    r = np.ones((500, 500).astype(np.uint8)
    
    bgr = np.dstack((b, g, r))


<a id="org91c00ad"></a>

### histogram

    # gray histogram
    hist = cv2.calcHist([gray], [0], None, [256], [0, 256])
    plt.figure()
    plt.title("Grayscale Histogram")
    plt.xlabel("Bins")
    plt.ylabel("# of Pixels")
    plt.plot(hist)
    plt.xlim([0, 256])
    
    # Colours flattened histogram
    for (chan, color) in zip(chans, colors):
    	# create a histogram for the current channel and
    	# concatenate the resulting histograms for each
    	# channel
    	hist = cv2.calcHist([chan], [0], None, [256], [0, 256])
    	features.extend(hist)
    
    	# plot the histogram
    	plt.plot(hist, color = color)
    	plt.xlim([0, 256])
    plt.show()
    
    
    
    
    # Select objects by colour
       lower = np.array([120, 57, 110])  # -- Lower range -- RGB
        upper = np.array([180, 136, 170])  # -- Upper range --
        mask = cv.inRange(img, lower, upper)
        res = cv.bitwise_and(img, img, mask=mask)
        cv.imshow("images", np.hstack([img, res]))
        cv.waitKey(0)


<a id="org03ab808"></a>

## template matching

-   it does not work for rotated or scaled versions of the template
-   inefficient when calculating the pattern correlation image for medium to large images

Binary-string descriptors: ORB, BRIEF, BRISK, FREAK, AKAZE, etc.

-   use FLANN + LSH index or Brute Force + Hamming distance.

Floating-point descriptors: SIFT, SURF, GLOH, etc.

-   Hamming distance as opposed to Euclidean distance used for floating-point descriptors.

-   <https://docs.opencv.org/4.8.0/de/da9/tutorial_template_matching.html>
-   <https://docs.opencv.org/4.x/d4/dc6/tutorial_py_template_matching.html>


<a id="org3bc4903"></a>

## Hough Line Transform

image, rho, theta, threshold, lines=None, srn=None, stn=None, min<sub>theta</sub>=None, max<sub>theta</sub>=None

-   image-edges: Output of the edge detector.
-   rho: Distance resolution of the accumulator in pixels. = 1
-   theta: Angle resolution of the accumulator in radians. = np.pi/180
-   threshold: Accumulator threshold parameter. Only those lines are returned that get enough votes
-   lines: A vector to store the coordinates of the start and end of the line. Each line is represented by a 2
    or 3 element vector
-   stn, srn: For the multi-scale Hough transform,
-   min<sub>theta</sub>: For standard and multi-scale Hough transform, minimum angle to check for lines. Must fall between
    0 and max<sub>theta</sub>.
-   max<sub>theta</sub>: For standard and multi-scale Hough transform, maximum angle to check for lines. Must fall between
    min<sub>theta</sub> and CV<sub>PI</sub>

threshold: The minimum number of intersecting points to detect a line.

    img = cv.imread('/home/u/download.jpeg', 0)
    edges = cv.Canny(img,50,150,apertureSize = 3)
    #lines = cv.HoughLines(edges,1,np.pi/180,200)
    lines = cv.HoughLinesP(edges,1,np.pi/180,100,minLineLength=100,maxLineGap=10)
    
    for line in lines:
        x1,y1,x2,y2 = line[0]
        cv.line(img,(x1,y1),(x2,y2),(0,255,0),2)
    
    plt.imshow(img)
    plt.show()
    
    
    
    gray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)
    edges = cv.Canny(gray,50,150, apertureSize = 3)
    print(edges.shape)
    lines = cv.HoughLines(edges,1,np.pi/180,120)
    print(lines)
    for line in lines:
        rho, theta = line[0]
        a = np.cos(theta)
        b = np.sin(theta)
        x0 = a*rho
        y0 = b*rho
        x1 = int(x0 + 1000*(-b))
        y1 = int(y0 + 1000*(a))
        x2 = int(x0 - 1000*(-b))
        y2 = int(y0 - 1000*(a))
        cv.line(img,(x1,y1),(x2,y2),(0,0,255),2)
    
    #plt.imshow(edges)
    plt.imshow(img)
    plt.show()


<a id="org9436d6f"></a>

## Contrast and brightness

    import cv2 as cv
    
    
    def funcBrightContrast(bright=0):
        bright = cv.getTrackbarPos('bright', 'Life2Coding')
        contrast = cv.getTrackbarPos('contrast', 'Life2Coding')
    
        effect = apply_brightness_contrast(img, bright, contrast)
        cv.imshow('Effect', effect)
    
    
    def apply_brightness_contrast(input_img, brightness=255, contrast=127):
        brightness = map(brightness, 0, 510, -255, 255)
        contrast = map(contrast, 0, 254, -127, 127)
    
        if brightness != 0:
            if brightness > 0:
                shadow = brightness
                highlight = 255
            else:
                shadow = 0
                highlight = 255 + brightness
            alpha_b = (highlight - shadow) / 255
            gamma_b = shadow
    
            buf = cv.addWeighted(input_img, alpha_b, input_img, 0, gamma_b)
        else:
            buf = input_img.copy()
    
        if contrast != 0:
            f = float(131 * (contrast + 127)) / (127 * (131 - contrast))
            alpha_c = f
            gamma_c = 127 * (1 - f)
    
            buf = cv.addWeighted(buf, alpha_c, buf, 0, gamma_c)
    
        # cv2.putText(buf, 'B:{},C:{}'.format(brightness, contrast), (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 255), 2)
        return buf
    
    
    def map(x, in_min, in_max, out_min, out_max):
        return int((x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min)
    
    
    if __name__ == '__main__':
        original = cv.imread("/mnt/hit4/hit4user/PycharmProjects/cnn/samples/passport_and_vod/0/2019080129-2-0.png", 1)
        original = cv.resize(original, (900, 900))
    
        # my
        # tmp = apply_brightness_contrast(original, brightness=230, contrast=255)
        # cv.imshow('a', tmp)
        # cv.waitKey(0)
    
        img = original.copy()
    
        cv.namedWindow('Life2Coding', 1)
    
        bright = 255
        contrast = 127
    
        # Brightness value range -255 to 255
        # Contrast value range -127 to 127
    
        cv.createTrackbar('bright', 'Life2Coding', bright, 2 * 255, funcBrightContrast)
        cv.createTrackbar('contrast', 'Life2Coding', contrast, 2 * 127, funcBrightContrast)
        funcBrightContrast(0)
        cv.imshow('Life2Coding', original)
        cv.waitKey(0)


<a id="org8ec218c"></a>

## Image Recognition and Object Detection

-   <https://www.learnopencv.com/image-recognition-and-object-detection-part1/>
-   <https://habr.com/ru/post/208090/>
-   <https://www.pyimagesearch.com/2014/11/10/histogram-oriented-gradients-object-detection/>

History:

-   2001 face detection Viola and Jones algorithm
-   2005  Histograms of Oriented Gradients (HOG)
-   2012  ImageNet

Methods:

1.  Preprocessing
    -   cropped
    -   resizing
    -   RGB to gray
    -   gamma correction
2.  Filtering OR Feature Extraction
    
    -   Бинаризация по порогу (threshold)
    -   Haar-like features introduced by Viola and Jones
    -   Histograms of Oriented Gradients (HOG)
    -   Scale-Invariant Feature Transform ( SIFT )
    -   Speeded Up Robust Feature ( SURF )
    -   Фурье, ФНЧ, ФВЧ
    -   вейвлет-анализом называется поиск произвольного паттерна на изображении при помощи свёртки с моделью этого паттерна
    -   Edge detector (Мат аппарат - контурный анализ)
        -   Оператор Кэнни
        -   Оператор Собеля
        -   Оператор Лапласа
        -   Оператор Прюитт
        -   Оператор Робертса
    -   Особые точки <https://en.wikipedia.org/wiki/Feature_detection_(computer_vision)>
        -   Первый класс. Особые точки, являющиеся стабильными на протяжении секунд.
            -   локальные максимумы изображения
            -   углы на изображении (лучший из детекторов, пожалуй, детектор Хариса)
            -   точки в которых достигается максимумы дисперсии
            -   определённые градиенты
        -   Второй класс. Особые точки, являющиеся стабильными при смене освещения и небольших движениях объекта.
            -   некоторые вейвлеты, как база для точек
            -   точки, найденные методом HOG
        -   Третий класс. Стабильные точки.
            -   SURF, SIFT - К сожалению эти методы запатентованы. Хотя, в России патентовать алгоритмы низя, так что
                для внутреннего рынка пользуйтесь.
            -   KAZE and A-KAZE - no patent
    -   Mathematical morphology
    
    of the shape and aim to find out its location and orientation in the image
3.  Trainging Classificator
4.  Faster R-CNN has two networks: region proposal network (RPN) for generating region proposals and a network
    using these proposals to detect objects.

**HOG Histograms of Oriented Gradients** метод гистограмм направленных градиентов

-   based on the idea: that local **object appearance** can be effectively described by the distribution ( histogram
    ) of edge directions ( oriented gradients )
-   64 x 128 x 3 = 24,576 which is reduced to 3780

**Mathematical morphology**

-   это простейшие операции наращивания и эрозии бинарных изображений

**Template matchong and Object detection**

-   Hough transform:  cv.HoughCircles, cv.HoughLines, cv.HoughLinesP
-   Generalized Hough Transform - cv::GeneralizedHoughBallard, cv::GeneralizedHoughGuil. - we have knowledge of
    the shape and aim to find out its location and orientation in the image.

-   <https://habr.com/ru/post/113626/>
-   <http://wiki.technicalvision.ru/index.php/%D0%9C%D0%BE%D1%80%D1%84%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5_%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D0%B8_%D0%BD%D0%B0_%D0%B1%D0%B8%D0%BD%D0%B0%D1%80%D0%BD%D1%8B%D1%85_%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%D1%85>


<a id="org5e2c12f"></a>

## Generalized Hough Transform - object detection

-   cv::GeneralizedHoughBallard - find exactly
-   cv::GeneralizedHoughGuil - very slow, find same, not exactly

<https://docs.opencv.org/4.8.0/da/ddc/tutorial_generalized_hough_ballard_guil.html>


<a id="org650143d"></a>

## Cascade of Classifiers - object detection

disabled since OpenCV 4.0!!! via DNN provides much better results

Haar features. paper, "Rapid Object Detection using a Boosted Cascade of Simple Features" in 2001

require usage: **media-libs/opencv gtk3 opencvapps**


<a id="org580d26b"></a>

### train

**training window size** - the average size of your object

-   positive - opencv<sub>createsamples</sub>
    -   "file of list": file instances<sub>count</sub> x y width height
    -   img/img2.jpg  2  100 200 50 50   50 30 25 25
-   negative
    -   "file of list": one image path per line
    -   different sizes - each image should be equal or larger than the desired "training window size"

/negative
  img1.jpg
  img2.jpg
neg.txt

/positive
  img1.jpg
  img2.jpg
pos.dat

positives: The object instances are taken from the given images, by cutting out the supplied bounding boxes
 from the original images. Then they are resized to target samples size (defined by -w and -h) and stored in
 output vec-file, defined by the -vec parameter. No distortion is applied, so the only affecting arguments are
 -w, -h, -show and -num.

1.  opencv<sub>createsamples</sub> -info pos.dat
    -   -vec <vec<sub>file</sub><sub>name</sub>> : Name of the output file containing the positive samples for training.
    -   -num <number<sub>of</sub><sub>samples</sub>> : Number of positive samples to generate.
    -   -maxidev <max<sub>intensity</sub><sub>deviation</sub>> : Maximal intensity deviation of pixels in foreground samples.
    -   -show : Useful debugging option. If specified, each sample will be shown. Pressing Esc will continue the samples creation process without showing each sample.
    -   -w <sample<sub>width</sub>> : Width (in pixels) of the output samples.
    -   -h <sample<sub>height</sub>> : Height (in pixels) of the output samples.

    opencv_createsamples -info pos.dat -vec a.txt -num 2 -maxidev 100 -show -w 200 -h 200

links

-   training <https://docs.opencv.org/4.8.0/dc/d88/tutorial_traincascade.html>
-   detection <https://docs.opencv.org/4.8.0/db/d28/tutorial_cascade_classifier.html>


<a id="orgbfe0847"></a>

## DNN - object detection

convert to ONNX ( torch.onnx.export) -> .onnx -> cv.dnn.readNetFromONNX.
links

-   <https://docs.opencv.org/4.8.0/d2/d58/tutorial_table_of_content_dnn.html>
-   <https://docs.opencv.org/4.x/dc/d70/pytorch_cls_tutorial_dnn_conversion.html>


<a id="org0087a1a"></a>

## image alignment or Homography

-   types of motions ![img](https://www.learnopencv.com/wp-content/uploads/2015/07/motion-models.jpg)
-   Homography <https://www.learnopencv.com/image-alignment-feature-based-using-opencv-c-python/>

Small text:

-   minAreaRect <https://www.pyimagesearch.com/2017/02/20/text-skew-correction-opencv-python/>

Homography require template and doc<sub>type</sub>

-   <https://www.learnopencv.com/image-alignment-feature-based-using-opencv-c-python/>

steps:

-   Extract features: Commecricla(SURF or SIFT), Free(KAZΑ)
-   Match the features (FLANN or BruteForce&#x2026;) and filter the matchings
-   Find the geometrical transformation (RANSAC or LMeds&#x2026;)


<a id="org464eed0"></a>

### AKAZA

-   <https://docs.opencv.org/3.4.8/db/d70/tutorial_akaze_matching.html>
-   <https://stackoverflow.com/questions/47496287/how-would-i-use-orb-detector-with-image-homography>
-   <https://docs.opencv.org/2.4/doc/tutorials/features2d/feature_homography/feature_homography.html>
-   <http://www.programmersought.com/article/3078224152/>

    class KazeCropper:
    
        def __init__(self, img_orig, nn_match_ratio=0.72):
            if img_orig is None:
                print('Could not open or find the image!')
    
            height = 674  # average prep
            width = 998  # average
            self.img_orig = img_orig
            if len(img_orig.shape) == 2 or img_orig.shape[2] == 1:
                gray = img_orig
            else:
                gray = cv.cvtColor(img_orig, cv.COLOR_BGR2GRAY)
    
    
            gray = imutils.resize(gray, width=width)  # resized
            # CLAHE (Contrast Limited Adaptive Histogram Equalization)
            # clahe = cv.createCLAHE(clipLimit=0.2, tileGridSize=(30,30))
            # clahe.apply(lab_planes[0])
    
            gray = cv.fastNlMeansDenoising(gray, h=5, templateWindowSize=10)  # denoise
            # cv.imshow('image', self.img_orig)  # show image in window
            # cv.waitKey(0)  # wait for any key indefinitely
            # cv.destroyAllWindows()  # close window q
            self.akaze = cv.AKAZE_create()
    
            self.kpts2, self.desc2 = self.akaze.detectAndCompute(gray, None)
    
            self.matcher = cv.DescriptorMatcher_create(cv.DescriptorMatcher_BRUTEFORCE_HAMMING)
            # self.matcher = cv.DescriptorMatcher_create(cv.DescriptorMatcher_BRUTEFORCE_HAMMINGLUT)
            self.nn_match_ratio = nn_match_ratio  # 0.75  # Nearest neighbor matching ratio
    
        # private
        def transform(self, img, wider: float = 1) -> ():
    
            kpts1, desc1 = self.akaze.detectAndCompute(img, None)
            # kpts2, desc2 = self.akaze.detectAndCompute(self.img_orig, None)
    
            nn_matches = self.matcher.knnMatch(desc1, self.desc2, 2)
    
            matched1 = []
            matched2 = []
    
            for m, n in nn_matches:
                if m.distance < self.nn_match_ratio * n.distance:
                    matched1.append(kpts1[m.queryIdx])
                    matched2.append(self.kpts2[m.trainIdx])
    
            # DEBUG
            # print('A-KAZE Matching Results')
            # print('*******************************')
            # print('# Keypoints 1:                        \t', len(kpts1))
            # print('# Keypoints 2:                        \t', len(self.kpts2))
            # print('# Matches:                            \t', len(matched1))  # must be > 90
    
            if len(matched1) < 60:
                sys.stderr.write("Error: Not enough matches")
                return None, None, len(matched1)
            # extract the matched keypoints
            src_pts = np.float32([i.pt for i in matched1]).reshape(-1, 1, 2)
            dst_pts = np.float32([i.pt for i in matched2]).reshape(-1, 1, 2)
    
            # find homography matrix and do perspective transform
            M, mask = cv.findHomography(src_pts, dst_pts, cv.RANSAC, 2)  # 2
    
            # apply transformation
            img = cv.warpPerspective(img, M, (int(self.img_orig.shape[1] * wider), int(self.img_orig.shape[0] * wider)))
    
            return img, M, len(matched1)
    
        # public
        def crop(self, image) -> any:
            """ Double transformation of image to match template
    
            :param image:
            :return: image
            """
            if image is None or self.img_orig is None:
                sys.stderr.write('Could not open or find the images!')
                return None
    
            # prepare incoming image
            img = cv.cvtColor(image, cv.COLOR_BGR2GRAY)
            img = cv.fastNlMeansDenoising(img, h=2, templateWindowSize=4)  # denoise
            # Get transformation matrix
            img, m1, mcount = self.transform(img, wider=1.5)
            if mcount < 60:
                return None
            img, m2, mcount = self.transform(img, wider=1)  # no change
            if mcount < 60:
                return None
            # Apply transformation to original image
            img = cv.warpPerspective(image, m1, (int(self.img_orig.shape[1] * 1.5), int(self.img_orig.shape[0] * 1.5)))
            # cv.imshow("found1", img)
            img = cv.warpPerspective(img, m2, (self.img_orig.shape[1], self.img_orig.shape[0]))
            return img
    
        def match(self, image, k=2) -> int:
            if image is None or self.img_orig is None:
                sys.stderr.write('Could not open or find the images!')
                return 0
    
            kpts1, desc1 = self.akaze.detectAndCompute(image, None)
            nn_matches = self.matcher.knnMatch(desc1, self.desc2, 2)
            matched1 = []
    
            for m, n in nn_matches:
                if m.distance < self.nn_match_ratio * n.distance:
                    matched1.append(kpts1[m.queryIdx])
            return len(matched1)


<a id="orgd022733"></a>

### findHomography

-   может быть полезным <https://web-answers.ru/c/python-opencv-ispolzujte-findhomography-i.html>

    cv.findHomography(src_pts, dst_pts, cv.RANSAC, 5.0)

Normal

-   srcPoints -
-   dstPoints -

Special

-   method -
    -   0 - a regular method using all the points
    -   CV<sub>RANSAC</sub> - RANSAC-based robust method
    -   CV<sub>LMEDS</sub> - Least-Median robust method
-   ransacReprojThreshold (used in the RANSAC method only) - Maximum allowed reprojection error to treat a point pair as an inlier
-   mask: Any = None,
-   maxIters: Any = None,
-   confidence: Any = None


<a id="org0674416"></a>

## Morphological Transformations

<https://docs.opencv.org/master/d9/d61/tutorial_py_morphological_ops.html>

-   Erosion - уменьшить толщину как Convolution
-   Dilation - утолщить
-   Opening - cv.morphologyEx(img, cv.MORPH<sub>OPEN</sub>, kernel) - erosion followed by dilation
    -   remove noise outside
    -   find out horizontal or vertical lines
-   Clothing - cv.morphologyEx(img, cv.MORPH<sub>CLOSE</sub>, kernel) - Dilation followed by Erosion
    -   to remove small points inside large one
    -   to group contours

-   Morphological Gradient
-   Top Hat
-   Black Hat


<a id="org08c1831"></a>

## Deep Neural Network module (dnn)

1.  Pros:
    -   легковесности решения
    -   легче перенос на другие платформы
    -   упрощает процедуру создания гибридных алгоритмов
    -   загрузка и запуск моделья - Caffe, TensorFlow или Torch - Поддерживаются все основные слои
2.  Cons:
    -   только возможность выполнения прямого прохода (forward pass)
    -   преобразует модели из различных фреймворков в свое внутреннее представление, возникают вопросы сохранения качества


<a id="org6ecd473"></a>

## USECASES


<a id="org6635074"></a>

### resize with black are keep ratio

    def resize_image(img, size=(28,28)):
    
        h, w = img.shape[:2]
        c = img.shape[2] if len(img.shape)>2 else 1
    
        if h == w:
            return cv2.resize(img, size, cv2.INTER_AREA)
    
        dif = h if h > w else w
    
        interpolation = cv2.INTER_AREA if dif > (size[0]+size[1])//2 else
                        cv2.INTER_CUBIC
    
        x_pos = (dif - w)//2
        y_pos = (dif - h)//2
    
        if len(img.shape) == 2:
            mask = np.zeros((dif, dif), dtype=img.dtype)
            mask[y_pos:y_pos+h, x_pos:x_pos+w] = img[:h, :w]
        else:
            mask = np.zeros((dif, dif, c), dtype=img.dtype)
            mask[y_pos:y_pos+h, x_pos:x_pos+w, :] = img[:h, :w, :]
    
        return cv2.resize(mask, size, interpolation)


<a id="orgab3afbe"></a>

### subimage

roi=im[y:y+h,x:x+w]

    contours, hierarchy = cv.findContours(img_with_squares, cv.RETR_LIST, cv.CHAIN_APPROX_SIMPLE)
    # get rectangle points:
    cnt = contours[0]
    x,y,w,h = cv.boundingRect(cnt)
    roi = img[y:y+h,x:x+w]


<a id="org0e7b30b"></a>

### scale to target height

def img<sub>to</sub><sub>small</sub>(img, height<sub>target</sub>=575):  # TODO: resize by smallest dimension
    scale<sub>percent</sub> = round(height<sub>target</sub> / img.shape[1], 3)
    width = int(img.shape[1] \* scale<sub>percent</sub>)
    height = int(img.shape[0] \* scale<sub>percent</sub>)
    dim = (width, height)
    img<sub>resized</sub> = cv.resize(img, dim)
    return img<sub>resized</sub>, scale<sub>percent</sub>


<a id="org75a8c70"></a>

### colours

1.  RGB

    Y = 0.299 R + 0.587 G + 0.114 B
    
        img = cv2.imread(rgbImageFileName) #BGR default
        b1 = img[:,:,0] # Gives **Blue**
        b2 = img[:,:,1] # Gives Green
        b3 = img[:,:,2] # Gives **Red**
        img = cv.cvtColor(img, cv.COLOR_RGB2GRAY)

2.  visualize HSV range

        import numpy as np
        import cv2
        
        lower_b = np.array([110,50,50])
        upper_b = np.array([130,255,255])
        
        s_gradient = np.ones((500,1), dtype=np.uint8)*np.linspace(lower_b[1], upper_b[1], 500, dtype=np.uint8)
        v_gradient = np.rot90(np.ones((500,1), dtype=np.uint8)*np.linspace(lower_b[1], upper_b[1], 500, dtype=np.uint8))
        h_array = np.arange(lower_b[0], upper_b[0]+1)
        
        for hue in h_array:
            h = hue*np.ones((500,500), dtype=np.uint8)
            hsv_color = cv2.merge((h, s_gradient, v_gradient))
            rgb_color = cv2.cvtColor(hsv_color, cv2.COLOR_HSV2BGR)
            cv2.imshow('', rgb_color)
            cv2.waitKey(250)
        
        cv2.destroyAllWindows()

3.  contours to rectanges and draw with numbers

        contours, hierarchy = cv.findContours(img_with_squares, cv.RETR_LIST, cv.CHAIN_APPROX_SIMPLE)
            # get rectangle points:
            rects = []
            for cnt in contours:  # cnt = contours[0]
                x, y, w, h = cv.boundingRect(cnt)
        	ret.append((x, y, w, h))
        for i, rec in enumerate(rects):
                x, y, w, h = rec
                cv.rectangle(img_r, (x, y), (x + w, y + h), color=(0, 255, 0), thickness=2)
                cv.putText(img_r, str(i),
                           org=(x + i * 40, y - 10),
                           fontFace=cv.FONT_HERSHEY_PLAIN,
                           fontScale=3,
                           color=(0, 255, 0),
                           thickness=2)


<a id="org9d2cb76"></a>

### most common colour

    ntmp = cv2.pyrDown(self.image)
    tmp = cv2.pyrDown(tmp)
    tmp = cv2.pyrDown(tmp)
    tmp = cv2.pyrDown(tmp)
    b, g, r = cv2.split(tmp)
    bc = int(np.bincount(b[0]).argmax())  # most common colours
    gc = int(np.bincount(g[0]).argmax())
    rc = int(np.bincount(r[0]).argmax())


<a id="org489d46f"></a>

### max x min y

    minmax_unmodified = np.prod(self.cluster_coords, axis=1)
    
            minx_miny = np.argmin(minmax_unmodified)  # верхний левый
            maxx_maxy = np.argmax(minmax_unmodified)  # верхний правый
    
            ccopy = self.cluster_coords.copy()
            ccopy = np.where(ccopy == 0, 0.01, ccopy)  # devide by zero
            ccopy[:, 1] = np.reciprocal(ccopy[:, 1])  # Y^-1, ???????? X/Y
            minx_maxy = np.argmin(np.prod(ccopy, axis=1))
    
            ccopy = self.cluster_coords.copy()
            ccopy = np.where(ccopy == 0, 0.01, ccopy)
            ccopy[:, 0] = np.reciprocal(ccopy[:, 0])  # X^-1, ???????? Y/X
            maxx_miny = np.argmin(np.prod(ccopy, axis=1))
    	# по индексам
            corners = np.rint(self.cluster_coords[[minx_miny, maxx_miny, maxx_maxy, minx_maxy, minx_miny]]).astype(np.int)


<a id="org87f1ff0"></a>

### Images blending-adding

<https://docs.opencv.org/4.2.0/d0/d86/tutorial_py_image_arithmetics.html>

1.  gray bitwise

        sign = cv.imread(filename, cv.IMREAD_GRAYSCALE)
                    sign = 255 - sign
                    ret, sign = cv.threshold(sign, 60, 255, cv.THRESH_TOZERO)
        
                    # RANDOM SHIFT SING TODO: random resize
                    M = np.float32([[(random.random() + 0.2) * 1.7, 0, random.randint(-70, 70)],
                                    [0, (random.random() + 0.2) * 1.7, random.randint(-70, 70)]])
                    sign = cv.warpAffine(sign, M, sign.shape)
        
                    cv.imshow('image', sign)  # show image in window
                    cv.waitKey(0)  # wait for any key indefinitely
                    cv.destroyAllWindows()  # close window
        
                    sign = 255 - sign
                    # random brightness
                    ret, sign = cv.threshold(sign, random.randint(60, 200), 255, cv.THRESH_TOZERO)
                    h = 300
                    w = 300
                    # random subimage
                    alt = random.randint(-280, +50)
                    y = random.randint(0, height - h - alt)
                    x = random.randint(0, width - w - alt)
                    subdoc = doc[y:y + h + alt, x:x + w + alt]
                    subdoc = cv.resize(subdoc, dsize=(h, w))
                    sign = cv.resize(sign, dsize=(h, w))
                    sign_b = sign
                    sign = cv.bitwise_and(subdoc, subdoc, mask=sign)
                    sign = cv.bitwise_and(sign, sign_b)


<a id="orgcf1fab6"></a>

### filter contours

    # contours to points
    c_points = []
        for a in contours:
            for aa in a:
                c_points.append([aa[0][0], aa[0][1]])
    c_points = np.array(c_points)
    
    # crop image
    x, y, w, h = rect
    croped = img[y:y + h, x:x + w].copy()
    
    # filter points
            contours, hierarchy = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
            for i in range(len(contours)):
                nxt, prev, first_child, parent = hierarchy[0, i]
                if first_child == -1:  # filter very small
                    contours[i] = None
                if nxt == -1 or prev == -1:  # filter very large
                    contours[i] = None
    
            contours = np.array(list(filter(lambda x: x is not None, contours)))  # filter


<a id="org4189604"></a>

### tables

corner detection vs
I suggest you detect the lines instead, e.g. using Hough transform, followed by edge chaining, followed by robust line fitting on each chain.


<a id="org22d45b0"></a>

### rotate with PIL and Hough Lines

    def rotate_image(img) -> np.array:
        """ HoughLines and PIL used """
        edges = cv.Canny(img, 150, 250, apertureSize=3)
        lines = cv.HoughLinesP(edges, 2, np.pi / 180, 100, minLineLength=300, maxLineGap=10)
        import math
    
        angles1 = []
        # angles2 = []
        if lines is not None:
            for line in lines:
                x1, y1, x2, y2 = line[0]
                angle = math.atan2(x2 - x1, y2 - y1)
                # print(angle)
                # cv.line(img, (x1, y1), (x2, y2), (0, 255, 0), 2)
                if abs(angle) < 2:
                    angles1.append(angle)
                # if abs(angle) > 2:
                #     angles2.append(angle)
    
            median1_radian = np.median(angles1)
            # median2_radian = np.median(angles1)
    
            from PIL import Image
    
            img = cv.cvtColor(img, cv.COLOR_BGR2RGB)
            pil_image: Image.Image = Image.fromarray(img)
    
            # if len(angles1) > len(angles2):
            mr = median1_radian
            # print(mr)
            # else:
            #     mr = median2_radian
            pil_image = pil_image.rotate(math.degrees(math.pi/2 - mr), Image.NEAREST, fillcolor=(220,220,220))  # nearest not working
            img = np.array(pil_image)
            # Convert RGB to BGR
            img = img[:, :, ::-1].copy()
    
        return img


<a id="orgddf519d"></a>

### PIL convert

OpenCV to PIL Image:

-   img = np.array(pil<sub>image</sub>)
-   \# img = img[:, :, ::-1].copy()


<a id="org746179b"></a>

### rotate

    center = (img.shape[1] // 2, img.shape[0] // 2)
    scale = 1.03
    angle = degree
    rot_mat = cv.getRotationMatrix2D(center, angle, scale)
    img = cv.warpAffine(img, rot_mat, (img.shape[1], img.shape[0]), borderMode=cv.BORDER_REPLICATE)


<a id="orga341492"></a>

### resize, shift-translate, shrinking with warpAffine

<http://datahacker.rs/003-how-to-resize-translate-flip-and-rotate-an-image-with-opencv/>


<a id="org73c802a"></a>

### Lines

1.  remove vertical horizontal lines

    V = cv.Sobel(thresh, cv.CV<sub>8U</sub>, dx=1, dy=0)  # vertical lines
    H = cv.Sobel(thresh, cv.CV<sub>8U</sub>, dx=0, dy=1)  # horizontal lines
    mask = np.zeros(gray.shape[:2], dtype=np.uint8)
    contours = cv.findContours(V, cv.RETR<sub>LIST</sub>, cv.CHAIN<sub>APPROX</sub><sub>SIMPLE</sub>)[1]
    height = gray.shape[0]
    for cnt in contours:
        (x, y, w, h) = cv.boundingRect(cnt)
    
        if h > height / 3 and w < 40:
    	cv.drawContours(mask, [cnt], -1, 255, -1)
    img2 = cv.resize(mask, (900, 900))
    cv.imshow("ROI", img2)
    cv.waitKey(0)
    cv.destroyAllWindows()
    mask = cv.morphologyEx(mask, cv.MORPH<sub>DILATE</sub>, None, iterations=3)
    img2 = cv.resize(mask, (900, 900))
    cv.imshow("ROI", img2)
    cv.waitKey(0)
    cv.destroyAllWindows()
    thresh[mask == 255] = 0

2.  remove small lines

        linek = cv.zeroes((27, 27), dtype=np.uint8)
        linek[..., 13] = 1
        linek[13, ...] = 1
        x = cv.morphologyEx(thresh_save, cv.MORPH_OPEN, linek, iterations=1)
        # or
        cross = cv.getStructuringElement(cv.MORPH_CROSS, (27, 27))
        x = cv.morphologyEx(thresh_save, cv.MORPH_OPEN, cross, iterations=1)

3.  find out lines (short one) & boxes

        # left only vertical lines
        vertical_kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (1,15))
        vertical = cv2.morphologyEx(img_bin, cv2.MORPH_OPEN, vertical_kernel, iterations=1)
        
        # left only horizontal lines
        horizontal_kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (15,1))
        horizontal = cv2.morphologyEx(img_bin, cv2.MORPH_OPEN, horizontal_kernel, iterations=1)
        
        # left only this lines
        img_opened = cv2.addWeighted(vertical, 0.5, horizontal, 0.5, 0.0)
        _, img_opened = cv2.threshold(img_opened, 0, 255, cv2.THRESH_BINARY)
        
        # find out boxes
        CANNY_KERNEL_SIZE = 100
        img_canny = cv2.Canny(img, CANNY_KERNEL_SIZE, CANNY_KERNEL_SIZE)


<a id="org891162b"></a>

### minAreaRect

-   rect = cv.minAreaRect(save<sub>contour</sub>)
-   ((196., 471.), (358., 423.), -3.)
-   width = int(rect[1][0])
-   height = int(rect[1][1])
-   rect[0] - center


<a id="org1195c01"></a>

### detect shape of contour

    for c in cnts:
           cv.contourArea(c)
           area = cv.contourArea(c)
           if 1000 < area < 2100:
               peri = cv.arcLength(c, True)
               approx = cv.approxPolyDP(c, 0.04 * peri, True)
               print(area, len(approx)) # len(approx) - vertices
               newc.append(c)


<a id="orgb00b166"></a>

### detect objects by shape (link)

<https://circuitdigest.com/tutorial/image-segmentation-using-opencv>


<a id="orge150dbf"></a>

### image to batch

    im = cv.imread('./train/passport_ranee/_0_353.png')
    im = cv.cvtColor(im, cv.COLOR_BGR2GRAY)
    im = im.reshape(im.shape + (1,))  # channels
    im = im.reshape((1,) + im.shape)  # batches


<a id="org6b9ff3d"></a>

### cut part of image

    def get_rectangle(img, rect):
        "extract rectangle and return rectangle image"
        xy1, xy2 = rect
        return img[xy1[1]:xy2[1],xy1[0]:xy2[0],:]


<a id="orgdc7e12e"></a>

## troubleshooting

error: (-215:Assertion failed) npoints > 0 in function 'drawContours'

-   


<a id="orgfee642a"></a>

# MMCV

OpenMMLab - company name and platform

-   MMEngine - provide universal training and evaluation engine
-   MMCV - neural network operators and data transforms, which serves as a foundation of the whole project

provide:

-   Image/Video processing
-   Image and annotation visualization
-   Image transformation
-   Various CNN architectures
-   High-quality implementation of common CPU and CUDA ops


<a id="org89eadb2"></a>

# Abby

ABBYY FineReader

-   Optical Character Recognition – OCR
-   Машинное Обучение на шаблонах документах.

1С Скан-Загрузке документов

-   распознование качественных сканов без обучения
    
    классификации неструктурированных документов в соответствии задачами организации


<a id="orgb3e98b1"></a>

# 2022 A Guide to Image and Video based Small Object Detection using Deep Learning : Case Study of Maritime

Surveillance <https://arxiv.org/pdf/2207.12926.pdf>


<a id="org0278e8f"></a>

## video based

if architecture depend essentially on the static object detection - leads to sub-optimal results since the
 training of the object detector does not take advantage of temporal information.

-   3D-CNN - A vidio is divided into a n-frame clips
    -   used for 3D object detection, action recognition, anomaly detection, etc.., feature extractor with Faster R-CNN to detect

and localize smoke.

-   CNN-RNN - each frame in 2D-CNN -> RNN
-   Two-streams -  1) frame, 2) multiple flows
-   Vision Transformer - Frame/clip tokenization -> 2D/3D embedding layers -> Transformer Encoder -> Detection Heads


<a id="org8868a83"></a>

# Transformers architecure

-   model the interactions between pairwise locations in the input image.  it is well

established that context is a major source of information to detect and recognize small objects both in humans
 and computational model.


<a id="org0940a95"></a>

# techniques: augmentation, super-resolution, &#x2026;

-   augmentation
-   super-resolution
-   multi-scale feature learning
-   context learning
-   attention-based learning
-   region proposal
-   loss function regularization
-   leveraging auxiliary tasks
-   spatiotemporal feature aggregation


<a id="org07df06f"></a>

# Rusnarbank<sub>OPENCV</sub>

-   <https://gitlab.rusnarbank.ru/m.smirnov/Rusnarbank_OPENC>
-   <https://www.pyimagesearch.com/2018/08/20/opencv-text-detection-east-text-detector/>

-   docker-compose build

input: PDF only

MainOpenCV.py

1.  ScanerFixClass - Class
    1.  HoughCheck() преобразование Хафа (Hough Transform)
        -   вычисления угла наклона по прямым линиям - self.degree
        -   выпрямление - imutils - self.image
        -   **TODO:** если текст не распознается, перевернуть 180%
    2.  RotatedRectWithMaxArea() - вычисления повернутого прямоугольника с максимальной площадью
        -   self.RectWithMaxArea
    3.  CropAroundCenter() - отсечения от изображения всего лишнего
        -   self.image
    4.  DetectBox() - для обрезки белых областей со всех сторон изображения
        -   детектора границ Canny
2.  GetDocumentType - Class
    1.  textboxes = UtilModule.UtilClass.GetText(image) - координаты боксов с текстом
    2.  get<sub>type</sub><sub>by</sub><sub>text</sub>()
        -   вырезаем изображение для каждого бокса
        -   pytesseract.image<sub>to</sub><sub>string</sub>
        -   ищим текст в каждом боксе, совпал - это такой-то документ, break
3.  ParserClass - Class
4.  PageProcessing(image<sub>path</sub>) - основная функция
    -   ScanerFixClass(image)
    -   GetDocumentType(fix<sub>obj.image</sub>)
    -   ParserClass(image, type) - возвращает return<sub>dict</sub>
5.  MainProcessingClass
    -   \_<sub>init</sub>\_\_ (file<sub>pdf</sub>) создает Redis
    -   UtilModule.UtilClass.PdfToPng -> fileslist
    -   PageProcessing(id<sub>img</sub>, image<sub>path</sub>) -> resilt[id<sub>img</sub>] = res


<a id="org4e370c9"></a>

## Redis

один порт, один Redis, несколько workers


<a id="org575baf6"></a>

## client

    import requests
    files = {'pdf': open(r"C:\Users\Chepilev_VS\Downloads\Rusnarbank_OPENCV-master\examples\bad\1_2_2018.pdf", 'rb')}
    job_id = requests.post("http://localhost:5000/upload", files=files).json()["id"]
    result = requests.get("http://localhost:5000/get?id="+job_id).json()
    print(result)


<a id="orge1b0231"></a>

## dependences

git+<https://github.com/GeorgiyDemo/cv_algorithms.git> - OpenCV algorithms are are not available

-   OpenCV 3
-   ?

git+<https://github.com/GeorgiyDemo/UliEngineering.git>

-   Electronics Engineering ?

redis==3.1.0

-   Резидентная NoSQL СУБД

opencv-python==3.4.5.20
imutils==0.5.2

-   displaying Matplotlib images easier with OpenCV
-   image processing - translation, rotation, resizing, skeletonization

pytesseract==0.2.6
requests==2.21.0
pdf2image==1.4.0
PyYAML==3.13
networkx==2.2
scipy==1.2.0
toolz==0.9.0
rq==0.13.0
sentry-sdk==0.7.10


<a id="orgc64e70f"></a>

## tesseract

-   debian testing
-   apt-get install tesseract-ocr-rus
-   /usr/share/tesseract-ocr/4.00/tessdata/rus.traineddata


<a id="orgd17bb3e"></a>

## Return JSON

-   MainOpenCV.py:323 {'1':('1', OUTPUT<sub>OBJ</sub>)}
-   OKUD.py OKUD<sub>0710001</sub> class <span class="underline"><span class="underline">init</span></span> -> 240 -> 217 -> 111
-   MatrixToJson.py:104 ToJSON class - property JSON -> 272
    -   SmallTableProcessing() - 'info': self.small<sub>table</sub> в основном self.JSON
    -   суммируем в Processing() or FiveDocProcessing()(для продолжения листа)
    -   self.JSON = {'qc': 2, 'document<sub>type</sub>': '1', "period": [matrix]}
    -   данные основной таблицы matrix:
        -   столбцы по датам {'31122016': {'hindex': 5, 'codes': []}}
            -   hindex - номер столбца от левого края, начиная с какого - хз
            -   codes -

JSON - {
            "status": "ready",
            "pages": [OUTPUT<sub>OBJ</sub>, OUTPUT<sub>OBJ</sub> &#x2026;.]
        }

where OUTPUT<sub>OBJ</sub> = {"qc":0, }
л

Успешные ответы

-   {"status": "ready", "pages": "&#x2026;"}  - первый ответ get
-   


<a id="orgbf3cf0b"></a>

# passport

rec:

-   <https://www.pyimagesearch.com/2015/11/30/detecting-machine-readable-zones-in-passport-images/>
-   <https://habr.com/ru/post/208090/>

colour:

-   <http://www.compvision.ru/forum/index.php?/topic/1568-%D1%80%D0%B0%D1%81%D0%BF%D0%BE%D0%B7%D0%BD%D0%B0%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%B0-%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%D0%B0-opencv/>

-   automatic adj for OCR <https://stackoverflow.com/questions/56905592/automatic-contrast-and-brightness-adjustment-of-a-color-photo-of-a-sheet-of-pape>

rectangle:

-   <https://stackoverflow.com/questions/26583649/opencv-c-rectangle-detection-which-has-irregular-side>
-   OpenCV shape detection <https://www.pyimagesearch.com/2016/02/08/opencv-shape-detection/>
-   <https://robotclass.ru/tutorials/opencv-detect-rectangle-angle/>
-   <https://towardsdatascience.com/object-detection-with-neural-networks-a4e2c46b4491>
-   <https://github.com/jrieke/shape-detection>

-   MRZ <https://web.archive.org/web/20140801191250/http://www.fms.gov.ru/upload/iblock/fe3/prikaz_mchz279.pdf>
-   <https://github.com/Shreeshrii/tessdata_ocrb>
-   Машиночитаемая запись МЧЗ
-   двух строк по 44 символа
-   Шрифт  OCR-B type 1 (Стандарт ИСО 1073/II).
-   верхняя строка 6-44 модернизированный клер
-   10, 20, 28, 43, 44 нижней строки МЧЗ содержат контрольные цифры.

-   top
    -   1-2 PN Passport National - Тип документа
    -   3-5 RUS - код ИКАО
    -   6-44 BAQRAMOV<<AMIR<IL9GAM<<0GLY<<<<<<<<<<<< - БАЙРАМОВ \n АМИР \n ИЛЬГАМ - ОГЛЫ
        -   дефис = '<' - знак заполнитель
        -   имя сокращается на букве, которая является 42 знаком строки, знака-заполнителя вносится первая буква отчества.
        -   фамилия сокращается на букве, которая является 39 знаком строки, после двух знаков-заполнителей
            последовательно вносятся первая буква имени, знак-заполнитель, первая буква отчества
-   bottom
    -   1-9 460123456 - серии 4601 № 123456
    -   10 Контрольная цифра - по 1-9
    -   11-13 RUS
    -   14-19 YYMMDD 931207 - 1993.12.07 - Дата рождения
    -   20 Контрольная цифра - по 14-19
    -   21 F or M - женский, мужской
    -   22-27 Дата истечения срока действия или все <, вместе с контрольной ццифрой
    -   28 Контрольная цифра or <
    -   29 Последняя цифра серии
    -   30-35 YYMMDD Дата выдачи паспорта
    -   36-41 Код подразделения
    -   42 < в контрольной сумме учитывается как 0
    -   43 Контрольная цифра 29-42
    -   44 Контрольная цифра 1-10, 14-20, 22-28, 29-43


<a id="orgfdca03f"></a>

## error

<rq.worker:opencv-tasks>: file (7120f9a5-7fde-41ba-96f4-ef1da72c5c1d)

Traceback (most recent call last):
return method<sub>number</sub><sub>list</sub>[method<sub>number</sub>](obj).OUTPUT<sub>OBJ</sub>
File "/code/parsers/multiparser.py", line 22, in passport<sub>and</sub><sub>drivelicense</sub>
aop = passport<sub>main</sub><sub>page</sub>(img<sub>cropped</sub>)
File "/code/parsers/passport.py", line 162, in passport<sub>main</sub><sub>page</sub>
res<sub>i</sub> = fio<sub>checker.double</sub><sub>query</sub><sub>name</sub>(anonymous<sub>return.OUTPUT</sub><sub>OBJ</sub>['MRZ']['mrz<sub>i</sub>'], i<sub>pass</sub>)
File "/code/groonga.py", line 248, in double<sub>query</sub><sub>name</sub>
return FIOChecker.<sub>get</sub><sub>appropriate</sub>(items1, word1)
File "/code/groonga.py", line 236, in \_double<sub>query</sub>
equal = [x for x in items if x[2] `= 4]  # score
File "/code/groonga.py", line 129, in <listcomp>
ERROR:root:Uncatched exception in ParserClass
return self._double_query(word1, word2, self.names_table)
File "/code/groonga.py", line 129, in _get_appropriate
equal = [x for x in items if x[2] =` 4]  # score
KeyError: 2
File "/code/MainOpenCV.py", line 40, in parser<sub>call</sub>


<a id="org93eb543"></a>

## Расчет контрольной суммы

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">data</td>
<td class="org-left">5 1 0 5 0 9</td>
</tr>


<tr>
<td class="org-left">weight</td>
<td class="org-left">7 3 1 7 3 1</td>
</tr>


<tr>
<td class="org-left">after multiply</td>
<td class="org-left">35 3 0 35 0 9</td>
</tr>
</tbody>
</table>

-   Сумма результатов 35 + 3 + 0 + 35 +0 +9 = 82
-   82 / 10 =8, остаток деления 2
-   2

-   361753650

    import numpy as np
    a=np.array([3,6,1,7,5,3,6,5,0])
    b=np.array([7,3,1,7,3,1,7,3,1])
    np.sum(a*b)%10


<a id="org0cc77f6"></a>

## passport serial number

-   <http://ukrainian-passport.com/blog/everything-you-have-to-know-about-the-russian-passport/>
-   consists of two signs and refers to the code assigned to the appropriate area (region) of the Russian Federation.
-   indicates the year of passport issue
-   passport serial number - six signs


<a id="org9cdcd99"></a>

## string metric for measuring the difference between two sequences

-   коэффициент Танимото <https://grishaev.me/2012/10/05/1/>
-   <https://habr.com/en/post/341148/>


<a id="org85cb378"></a>

# captcha


<a id="org8fb5f02"></a>

## captcha image

<https://bestofphp.com/repo/Gregwar-Captcha-php-image-processing>


<a id="org263e08c"></a>

## audio capcha

speech recognition model

-   <https://github.com/openai/whisper>
    -   download models: <https://github.com/openai/whisper/blob/main/whisper/__init__.py>
-   <https://github.com/chussong/pocketsphinx>


<a id="org85def83"></a>

### split audio file by worlds(librosa)

    import librosa
    import numpy as np
    from typing import List
    # own
    from utils import Captcha
    
    ALPHABET = ('2', '4', '5', '6', '7', '8', '9', 'б', 'в', 'г', 'д', 'ж', 'к', 'л', 'м', 'н', 'п', 'р', 'с', 'т')
    ALPHABET_FEATURE = [105.0, 160.0, 74.0, 76.0, 94.0, 146.0, 148.0, 86.0, 106.0, 92.0, 90.0, 83.0, 91.0, 99.0, 104.0, 96.0, 87.0, 79.0, 65.0, 87.0]
    FEATURE_RMS_T = 0.093
    FEATURE_RMS_P = 0.086
    
    
    def splitbysilence(y):
        td = 18.2
        hop_length = 9
        intervals = librosa.effects.split(y, top_db=td, hop_length=hop_length)
        pieces = []
        for iv in intervals:
            p = y[iv[0]:iv[1]]
            pa, _ = librosa.effects.trim(p, ref=0.45, top_db=20, hop_length=3)
            pieces.append(pa)
        return pieces
    
    
    def get_alpha_by_feature(f: float or List[float]) -> str:
        global ALPHABET, ALPHABET_FEATURE
        if isinstance(f, float):
            return ALPHABET[ALPHABET_FEATURE.index(f)]
        else:
            a = [ALPHABET[ALPHABET_FEATURE.index(fi)] for fi in f]
            return ''.join(a)
    
    
    def calc_feature(sound: np.ndarray, sr):
        f_d = librosa.get_duration(y=sound)
        f_mfcc = np.mean(librosa.feature.mfcc(y=sound, sr=sr, n_fft=100, n_mfcc=20))
        f_2 = np.median(librosa.feature.rms(y=sound, hop_length=100))
        return (abs(f_mfcc) + f_d*1000 + f_2*800)//4   # 4 is enough
    
    
    def calc_features(c: Captcha or str) -> List[int] or int:
        """ c file math """
        if isinstance(c, Captcha):
            y, sr = librosa.load(c.filepath)
        else:
            y, sr = librosa.load(c)
        split = splitbysilence(y)
        return [calc_feature(sound, sr) for sound in split]
    
    
    def max_db(y, n_fft=2048):
        s = librosa.stft(y, n_fft=n_fft, hop_length=n_fft // 2)
        d = librosa.amplitude_to_db(np.abs(s), ref=np.max)
        return np.max(abs(d))
    
    
    def get_alpphabet_feature(alphabet: str or list, captchas_solved: List[Captcha]):
        """ alpha_features = get_alpphabet_feature(ALPHABET, captchas) """
        features = []
        for a in alphabet:
            for c in captchas_solved:
                if a in c.salvation:
                    y, sr = librosa.load(c.filepath)
                    pieces = splitbysilence(y)
                    position = c.salvation.index(a)
                    sound: np.ndarray = pieces[position]
                    f = calc_feature(sound, sr)
                    features.append(f)
                    break
        assert len(features) == len(alphabet)
        return features
    
    
    def audio_decode(file_patch: str) -> str:
        y, sr = librosa.load(file_patch)
        yl = splitbysilence(y)
        features: list = [calc_feature(sound, sr) for sound in yl]
        sol = get_alpha_by_feature(features)
        for i, ch in enumerate(sol):
            if 'п' == ch or 'т' == ch:
                sol_l = list(sol)
                f = np.median(librosa.feature.rms(y=yl[i], hop_length=100))
                if round(float(f), 3) == FEATURE_RMS_P:
                    sol_l[i] = 'п'
                elif round(float(f), 3) == FEATURE_RMS_T:
                    sol_l[i] = 'т'
                sol = ''.join(sol_l)
        return sol


<a id="org1ce3e2b"></a>

## reCAPTCHA google

-   Version 2 ~2013, also asked users to decipher text or match images if the analysis of cookies and canvas
    rendering suggested the page was being downloaded automatically.
    -   behavioral analysis of the browser's interactions to predict whether the user was a human or a bot
-   version 3, at the end of 2019,  reCAPTCHA will never interrupt users and is intended to run automatically when users load pages
    or click buttons.

On May 26, 2012, Adam, C-P and Jeffball - accuracy rate of 99.1% analyse the audio version of reCAPTCHA

-   after: the audio version was increased in length from 8 seconds to 30 seconds, and is much more difficult to
    understand, both for humans as well as bots.
-   after: 60.95% and 59.4% respectively


<a id="orgf3fa572"></a>

## links

<https://habr.com/en/post/241145/>
<https://habr.com/en/post/241263/>
cnn <https://medium.com/swlh/captcha-recognition-44522c2fe9c>


<a id="orgbc8ab68"></a>

# optical label

-   QRCode origian work - Yue Liu, Ju Yang, Mingjun Liu, “Recognition of QR Code with mobile phones,” Control
    and Decision Conference, CCDC 2008. Chinese, pp. 203 - 206, 2-4
    July 2008. <https://www.scribd.com/document/79038295/Recognition-of-QR-Code-With-Mobile-Phones>

types <https://en.wikipedia.org/wiki/Barcode>

-   FonCode <https://arxiv.org/pdf/1707.09418v1.pdf>
-   2d barcode comparision <https://medium.com/dynamsoft/what-is-the-difference-between-qr-code-pdf417-and-datamatrix-39f4db881388>
-   Data Matrix vs QR Code <https://www.laserax.com/blog/data-matrix-vs-qr-codes>
-   barcode and error correction <http://www.labelingnews.com/2012/12/barcodes-and-error-correction/>
-   Data Matrix quality verification accordance with ISO/IEC 15416 <http://www.datamatrixcode.net/data-matrix-code-quality-verification/>
-   Data Matrix NN <https://www.researchgate.net/publication/341220437_Detection_of_Data_Matrix_Encoded_Landmarks_in_Unstructured_Environments_using_Deep_Learning>
-   detect data matrix <https://github.com/NaturalHistoryMuseum/gouda/>
-   generators <https://blog.jonasneubert.com/2019/01/23/barcode-generation-python/>
-   Best Practives <https://www.codeproject.com/Articles/20940/Using-Barcodes-in-Documents-Best-Practices>


<a id="org20f62f4"></a>

## opencv

opencv 4.x new <https://stackoverflow.com/questions/53906178/how-opencv-4-x-api-is-different-from-previous-version>

install from source opencv <https://docs.opencv.org/3.4.11/d2/de6/tutorial_py_setup_in_ubuntu.html>


<a id="org5a02c41"></a>

## qrcode

<https://github.com/lincolnloop/python-qrcode>

import qrcode
img = qrcode.make('Some data here')
img.save('path')


<a id="orgb2a2903"></a>

## segno


<a id="org99a9919"></a>

# OCR ICR


<a id="orgd1ba9d1"></a>

## terms

-   handprinted text - characters are written separately, is not about “cursive handwriting”
-   handwriting


<a id="orgde4cb0e"></a>

## Components:

-   optical character recognition (OCR) for machine print
-   optical mark reading (OMR) for check/mark sense boxes
-   bar code recognition (BCR) for barcodes
-   and intelligent character recognition (ICR) for hand print.
-   MICR – Magnetic ink character recognition


<a id="org86d8bd8"></a>

## optical character recognition (OCR)


<a id="orga0a8c8e"></a>

## intelligent character recognition (ICR)

recognizes different handwriting styles and fonts to intelligently interpret data on forms and physical
 documents

use of continuously improving algorithms to collect more information about the variances in hand-printed
characters and more precisely identify them.

**intelligent word recognition** (IWR) focuses on reading a word in context rather than recognizing individual
characters. is optimized for processing real-world documents that contain mostly free-form, hard-to-recognize
data fields that are inherently unsuitable for ICR. (evolved version of ICR)

**Robotic Process Automation** (RPA) is a technique that automates the configuration of Intelligent character
 recognition software and ensures that operations are completed without errors.


<a id="org3c2b5f8"></a>

## Forms processing

hard copy data is filled out by humans and then "captured" from their respective fields

-   information entered into data fields
-   **map** of the document, detailing where the data fields are located within the form or document

steps

1.  Assessment of the form structure - to analyze the type of form. Types of forms:
    
    -   Fixed forms - data always found
    -   Semi-structured (or unstructured) form - the location of the data and fields holding the data vary from
    
    document to document. Ex: letters, contracts, and invoices.
2.  


<a id="org5c0868f"></a>

## typical scheme

![img](imgs/ocr.png)


<a id="org49e5d0d"></a>

# подпись  signature (*ˈsɪɡnətʃər*;) handwritten

-   2017 SigNet: Convolutional Siamese Network for Writer Independent Offline SignatureVerification <https://arxiv.org/pdf/1707.02131.pdf>
    -   <https://github.com/uniyalvipin/signature-recognition>
-   <https://en.wikipedia.org/wiki/Signature_recognition>
-   <https://ru.qaz.wiki/wiki/Handwriting_recognition>
-   Wet signatures -  person's name written in their own hand with ink (чернилами)
-   Biometric Signature == handwritten signature
-   forged - подделанный
-   offline signature verification or static
-   Почерковедческая экспертиза ( Верификация подписи)
-   «Подпись» — это собственноручное написание лицом собственной фамилии, имени, инициалов или их частей (элементов), как правило содержащее индивидуальные особенности, позволяющие визуально отличить подпись одного человека от подписи другого.
-   «роспись» применяется для подтверждения факта ознакомления работника с какой-либо информацией или документом, уже составленным и подписанным другими лицами.
-   <http://irsit.ru/files/article/199.pdf>
-   <https://cyberleninka.ru/article/n/algoritmy-verefikatsii-rukopisnyh-podpisey-na-osnove-neyronnyh-setey>

-   electronic signature <https://www.mobbeel.com/en/blog/eidas-types-of-electronic-signature-biometric-signature/>


<a id="orgd22c364"></a>

## soft

-   abby


<a id="org5dc41db"></a>

# 12 лучших репозиториев GitHub по компьютерному зрению

Список из наиболее важных Awesome репозиториев GitHub, посвященных компьютерному зрению, которые
охватывают широкий спектр исследовательских и образовательных тем. Огромный кладезь знаний из
области CV.

1.  Awesome Computer Vision <https://github.com/jbhuang0604/awesome-computer-vision>
2.  Computer Vision Tutorials by Roboflow <https://github.com/roboflow/notebooks>
3.  Transformer in Vision <https://github.com/Yangzhangcst/Transformer-in-Computer-Vision>
4.  Awesome Referring Image Segmentation <https://github.com/MarkMoHR/Awesome-Referring-Image-Segmentation>
5.  Awesome Vision Language Pretraining Papers <https://github.com/yuewang-cuhk/awesome-vision-language-pretraining-papers>
6.  Awesome Vision and Language
7.  Awesome Temporal Action Detection
8.  Awesome Masked Autoencoders
9.  Awesome Visual Transformer
10. Transformer-Based Visual Segmentation <https://github.com/lxtGH/Awesome-Segmentation-With-Transformer>
11. CVPR 2023 Paper with Code <https://github.com/amusi/CVPR2023-Papers-with-Code>
12. Awesome Deepfakes Detection <https://github.com/Daisy-Zhang/Awesome-Deepfakes-Detec>


<a id="orge74f7ad"></a>

# VR

за счёт **иммерсивных устройств**, таких как знакомые всем VR-очки. Очки отслеживают вращение головы.

-   Dop: перчатки, наушники, генераторы запахов.

projects:

-   Google Street View от Google Maps
-   Half-Life: Alyx.

дополненная (AR), смешанная (MR) и расширенная (XR)

Популярные метавселенные:

-   <https://decentraland.org/>
-   <https://recroom.com/>
-   <https://mootup.com/>


<a id="org26be9ce"></a>

# Система управления видеонаблюдением

обеспечивает управление распределением видеоданных между источниками и приемниками системы видеонаблюдения

-   источники - IP-камеры,видеосерверы (видеоэнкодеры)
-   программного детектора движения и а также детектора движения, реализованного на борту IP-камеры, при условии
    его соответствия спецификации ONVIF.
-   интеллектуального анализа видеоданных (VCA Video content analysis):
    
    -   событий, как вторжение в зону/выход из зоны, остановка, «праздношатание», пересечение линии, недопустимое
    
    направление движения, оставленный/унесенный предмет
    
    -   Классификатор объектов на основе нейросети – детектор присутствия людей в кадре
    -   Распознавание автомобильных номеров
    -   Распознавание номеров вагонов и локомотивов, алгоритм на основе нейросети;
    -   Распознавание лиц, алгоритм на основе нейросети

стандартов сжатия видеопотоков MJPEG, MPEG-4, H.264, H.265

параметры видеопотоков, формируемых IP-камерами Разрешение – до 8 Мп (3840 x 2160), скорость – до 60 к/с

layers

-   Cloud - Analytics and Storage
-   fog - Models processing, uploading and feedback
-   edge - camers - Data Acquisition, Feature Extraction


<a id="org9f47f1d"></a>

# Tools

ROS2, wiki.ros.org - meta-operating system for your robot. runtime "graph" is a peer-to-peer network of processes
 (potentially distributed across machines)

Unity, Unity engine - software development kit for games  and other simulations.

Agroflow + Postgresql for versioning of date

RViz - rviz is a 3D visualizer for the Robot Operating System (ROS) framework.

clearml


<a id="org612f54b"></a>

# barcode reader from command line

emerge &#x2013;ask media-gfx/zbar

    xfce4-screenshooter -f -s /tmp/a.png
    
    convert /tmp/a.png +repage -threshold 50% -morphology open square:1 /tmp/output.png
    
    cropvals=`magick /tmp/output.png \
    -auto-threshold otsu \
    -morphology open square:7 \
    -bordercolor black -border 1 -fill white -draw "color 0,0 floodfill" -alpha off \
    -shave 1x1 \
    -type bilevel \
    -define connected-components:verbose=true \
    -define connected-components:exclude-header=true \
    -define connected-components:mean-color=true \
    -connected-components 8 ccl.png | grep "gray(0)" | head -n 1 | awk '{print $2}'`
    echo $cropvals
    
    magick /tmp/output.png \
    -crop $cropvals +repage \
    -auto-threshold otsu \
    -morphology open square:1 /tmp/qcode.png
    
    zbarimg /tmp/qcode.png 2>&1 | head


<a id="org20e8dbd"></a>

# Neural Network Models

-   Screen parsing tool. - Images of Web page to structured format.
    -   interactable regions location and captions of icons on its potential functionality.
    -   <https://huggingface.co/microsoft/OmniParser>
    -   can be used to construct an GUI agent based on LLMs that is actionable.


<a id="orge238b14"></a>

# NEXT LEVEL

self-supervised learning, vision transformers, unsupervised object detection, CLIP based text-image scoring, VQA

