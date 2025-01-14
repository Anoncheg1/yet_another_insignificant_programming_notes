
# Table of Contents

1.  [NumPy](#org935089c)
    1.  [frequent operations on shape](#org577a5f1)
        1.  [reshape((-1, 1)](#org308c849)
    2.  [theory](#orge6c8ea3)
    3.  [shape size dtype etc:](#orgf14130b)
    4.  [basic](#orga824f9b)
    5.  [masking and comparision](#orgcf7c54b)
    6.  [LOOPING](#org5948ab8)
    7.  [replace](#org32a6cba)
    8.  [round округление](#orge184797)
    9.  [keras.utils.to<sub>categorical</sub>](#org3edd3dd)
        1.  [basic](#org4822899)
        2.  [add sum category](#orgfabb428)
    10. [save and saves](#org05d4bcb)
    11. [ignore items on diagonal](#org0aebcef)
    12. [get items below diagonal (triangleform from squareform)](#org7be1f9b)
    13. [broadcasting and vectorization](#orgf3f98ca)
2.  [pandas](#orge673d0f)
    1.  [read csv](#orge32a941)
    2.  [sort](#orge41083c)
    3.  [replace value](#org45a1a7d)
    4.  [**analysis**](#org86d25e7)
    5.  [Series](#orgd5f04bb)
    6.  [DataFrame](#orge1fe8b3)
    7.  [index and levels](#org6fed64f)
    8.  [WHERE AND FILTERS](#org2565cae)
        1.  [filter by date](#orga8ec544)
    9.  [COUNT](#org0234ebe)
        1.  [get unique rows with count](#org3899e15)
        2.  [count example](#orgfba19d5)
        3.  [most frequent](#org0411910)
    10. [RESHAPINGS guide https://pandas.pydata.org/docs/user\_guide/reshaping.html](#org7e11947)
        1.  [Resample for timeseries](#orgeec68ce)
        2.  [pivot - rows to columns without aggregation](#org407523c)
        3.  [stack (levels)](#org32bf2b7)
        4.  [melt - columns to rows](#orgae77c12)
        5.  [pivot<sub>table</sub> - allow aggs](#orgef23ab8)
        6.  [pivot tables(old)](#org92bb9d2)
        7.  [crosstab - frequencies](#orgaa24c85)
        8.  [cut - transform continuous variables to discrete or categorical variables](#org1d16965)
        9.  [dummies](#org691bfd5)
        10. [factorize - categories to numbers](#org8b3ce74)
        11. [explode](#org8f9a6a9)
        12. [assign and explode - split values to rows](#orgbcfbeb4)
    11. [Merge, join, and concatenate](#org83ff131)
        1.  [concat series](#org9710c58)
        2.  [concat datafremes vertically](#orgac6477a)
        3.  [merge](#orgec931f3)
        4.  [add by date](#org2700995)
    12. [DISTICT groupby](#orga05b334)
        1.  [row number by group - добавить сложную номерацию по группам](#org000d52a)
    13. [two dataframes](#orge9f6e38)
        1.  [sets comparision](#org9612fd9)
    14. [Map, Apply, Applymap](#org8eeb6b6)
        1.  [Comparing map, applymap and apply: Context Matters](#orgb9f0123)
        2.  [apply to column](#org60f759f)
        3.  [return multiple rows](#orgb683bba)
        4.  [example](#org3443b3c)
    15. [save and load](#org6656fc4)
        1.  [read<sub>csv</sub>](#orgdcfedac)
        2.  [json](#orgb379fa8)
    16. [NaN](#org3a5eb67)
        1.  [check](#org44187a2)
        2.  [replace](#org7d41a7d)
        3.  [drop](#org670791e)
        4.  [get not na](#org389a414)
        5.  [other](#org2ae2064)
    17. [Categorical encoding](#org9a0dd47)
        1.  [replace values](#org4f6fe0d)
        2.  [label encoding](#org503b213)
        3.  [encode binary](#org7de5e72)
        4.  [onehot encode](#org6e00cb3)
    18. [mem usage](#org9e38e4f)
    19. [rename column](#org437056e)
    20. [delete column](#orgb0a93bf)
    21. [delete row](#orgf8a35d7)
        1.  [delete NA](#orgfad5949)
        2.  [delete values that is in other df column](#org82e2944)
    22. [type](#org9aa1fa7)
        1.  [types https://numpy.org/doc/stable/reference/arrays.scalars.html](#org7267b28)
        2.  [Display types](#orgabc4dce)
        3.  [float to int](#org8e917ee)
        4.  [string to date](#orga756204)
        5.  [Category type](#org399e345)
    23. [if a>5 c = True else False](#orgdb7edec)
    24. [OTHER USE CASES](#org75f41ca)
        1.  [dictionary for panda](#orgf84f74c)
        2.  [Example from dictionary to onehot](#org9a6a4c8)
        3.  [remove meanless columns](#orgb537743)
        4.  [Sum two columns containing NaN values](#org32bf70c)
        5.  [reorder columns](#orgc2c87c6)
        6.  [remove duplicates](#org5e9887e)
        7.  [replace missing values by groups](#orgcfbac2c)
        8.  [add count of occurences column](#org687b2d0)
    25. [troubleshooting](#orgc7c1e84)
    26. [pandas vs SQL](#org1407c1d)
    27. [gentoo extensions](#org524789d)
3.  [xlsx Excel file loading](#org10ed90e)
    1.  [partially loading - no solution](#org00c0a39)
4.  [h5py](#orgc521911)
    1.  [Dataset object](#org8dbdaff)
    2.  [terms](#orgffe706f)
    3.  [open](#org7a5caff)
    4.  [usage](#org77d9832)
    5.  [links](#org24d258a)
5.  [DVC](#org56a177b)
    1.  [features:](#org029b656)
    2.  [problem](#org38c0d19)
    3.  [terms](#orga290d56)
    4.  [steps](#orga0e7198)
        1.  [data:](#org44da7b3)
        2.  [pipelines](#org1ab435d)
    5.  [CML - Continuous Machine Learning](#orgd38c299)
    6.  [links](#org21a5128)
6.  [matplotlib](#orgc14e543)
    1.  [base](#org09d08a0)
    2.  [subplot or multiple diagram in one window](#org36b13e1)
    3.  [x axis labels range](#orgd71064b)
    4.  [Matplotlib is currently using agg, which is a non-GUI backend, so cannot show the figure.](#orgda3b72a)
        1.  [TkAgg](#org33284fb)
        2.  [GTK3Agg](#org70b70f6)
    5.  [usage](#org727c064)
    6.  [do not close](#org20e6e5f)
    7.  [Multiple Curves](#orgb7e7701)
    8.  [two windows with separate legend](#org761bac4)
    9.  [custom histogram](#org2986659)
    10. [rotate x ticks](#org12f0bc6)
    11. [CASES](#orge0f1b22)
        1.  [bar plot with two y axes](#orgdc96cb8)
        2.  [varible in time](#org51b4e33)
        3.  [example plot grid](#orgd97b2ce)
7.  [pygal](#org77af0df)
    1.  [boxes](#orgfdb51ff)
    2.  [several separate](#org01e7cee)
8.  [seaborn](#org4910913)
9.  [SciPy](#org66f2066)
    1.  [hierarchical lustering](#orgc132aa8)
        1.  [distance and squareform](#org2cad5fa)
        2.  [linkage](#orgbf7b8de)
        3.  [dendrogram](#org55097c2)
        4.  [cophentic correlation](#orgc3f3fc3)
10. [Scikit-learn](#org884d676)
    1.  [history](#org914c11d)
    2.  [fast feature selection](#orgdb77f8a)
    3.  [sklearn.tree.DecisionTreeClassifier](#orgdddc49e)
        1.  [usage](#org21d3ada)
    4.  [Tuning the hyper-parameters https://scikit-learn.org/stable/modules/grid\_search.html](#org3c50cb3)
    5.  [feature importance](#orgfac1e9e)
    6.  [Encoders - sklearn.preprocessing.\*](#org8bc0b33)
    7.  [suppress warnings](#org8432131)
11. [statsmodels](#org74f759d)
12. [RAPIDS](#org1c7b1f3)
13. [TensorFlow (TF)](#org01ec25d)
    1.  [history](#orgf1fe98c)
    2.  [terms](#orgb9e580b)
    3.  [Features:](#org79fd108)
    4.  [hello world](#org081e46d)
    5.  [deployment](#org185a115)
    6.  [ecosystem](#org107febc)
    7.  [layours](#orgbb7ac0c)
    8.  [Eager vs Grapth execution](#orgf72e829)
        1.  [links](#org2a8c4ce)
    9.  [TF 2.0](#org897d166)
        1.  [tf.GradientTape API](#org3f5b814)
        2.  [tf.function](#orgabc9d17)
        3.  [migrate 1 to 2](#orgc3430ff)
        4.  [custome layer](#org1915621)
        5.  [decayed learning rate](#orged2dc5f)
        6.  [layer-wise learning rate in Tensorflow?](#orgff483e9)
    10. [Save a model](#org9ed4946)
        1.  [v1 Saver loading:](#org2085f76)
        2.  [v2 saving loading](#orgf7527a1)
    11. [datasets](#org39502b0)
        1.  [install and use tfds](#org79ddd0b)
        2.  [download](#org91c2b66)
        3.  [landmark 2020](#org0daa355)
        4.  [mnist](#orgcef1e49)
    12. [tf.data.dataset](#orge36d08f)
        1.  [test](#org7995932)
    13. [install](#org8bfcf0c)
    14. [install from source](#orga910054)
    15. [APIs](#org58a65f5)
    16. [tf.placeholder](#orge4df779)
    17. [Logger = Disable](#org2b0f89a)
    18. [4D tensor ](#org1f9f894)
    19. [install](#orgc0920d9)
    20. [Deploy](#org6b2d362)
    21. [tensor](#org64cae3d)
    22. [hardware](#org46999ee)
    23. [hello world](#org6287e8a)
    24. [main objects](#org7db2f39)
    25. [Переменные](#org387e681)
    26. [TensorBoard](#orgaecc111)
    27. [GPU](#orgc432401)
    28. [keras](#orgdc01119)
    29. [CNN](#orga9e2338)
    30. [RNN and LSTM](#orgbd570cb)
        1.  [CNN](#org2b33ba7)
        2.  [batch](#org30b591d)
    31. [plot learning curve](#org5aecd63)
    32. [plot CNN layout](#org1ed7730)
    33. [Optimizer](#org23f0ba8)
    34. [models - tensorflow<sub>models</sub> as tfm](#org438ad07)
        1.  [install](#org011511d)
        2.  [usage](#orgd979dca)
        3.  [mnist](#orge7e5e22)
        4.  [dummy dataset for MNIST](#orgf211a8a)
        5.  [Mobilenet example](#org729a10e)
        6.  [RESNET example](#org421596e)
    35. [TensorFlow Serving](#orga301710)
        1.  [terms](#org0c8aa38)
    36. [TFX pipeline - MLOps](#org4176fa0)
    37. [loss](#orgf68968e)
    38. [ctc<sub>loss</sub>](#org81e8a58)
    39. [custom metric](#org5f5647a)
        1.  [function](#org655f690)
        2.  [class](#org90df782)
    40. [distributed training](#org23079be)
        1.  [API](#orgc882474)
        2.  [terms](#org4988fc2)
        3.  [Synchronous vs asynchronous training](#org36d7736)
        4.  [strategies](#org3bff2d9)
        5.  [TF<sub>CONFIG</sub>](#org724a1a3)
        6.  [data sharding](#orgc5ffd7c)
        7.  [links](#orga16a970)
        8.  [monitor](#org634a8aa)
    41. [toy model MNIST](#org8039652)
    42. [logging](#org7c50801)
        1.  [standard way](#orgb05256e)
        2.  [pipe](#org657d6ad)
        3.  [logging](#orgc963607)
        4.  [links](#orgcc67348)
    43. [callbacks for model.fit](#org7156eac)
    44. [USE CASES](#orgded9aa5)
        1.  [TF 2.0 convert mode h5 to weight and arch](#org36f72bb)
        2.  [imbalanced dataset](#org179cf61)
    45. [common errors:](#org7f4d5ef)
14. [PyTorch](#orgdfb5e41)
    1.  [install](#orga7c25a1)
    2.  [history](#org6fdfd4d)
        1.  [PyTorch 2.0](#org5ab7a2d)
        2.  [FlashAttention-2 - approximate attention method](#org6020764)
    3.  [deployment](#orgb745fdf)
    4.  [ecosystem](#org20d61c8)
    5.  [PyTorch 2.0](#org7e7b397)
    6.  [device](#org44e6a5c)
        1.  [HIP](#org5c7c00d)
        2.  [cuda test](#org8cf998a)
        3.  [TPU](#org66edfdd)
    7.  [models - torchvision.models](#org948ba54)
    8.  [nn.Module](#orgd650ff3)
        1.  [nn.Linear](#org477f828)
        2.  [links](#org501c7f4)
    9.  [Dataset and DataLoader, transform](#orgd32d014)
        1.  [code](#org7c1ae89)
        2.  [links](#orgfff504a)
    10. [Built-in datasets](#org6cb2806)
    11. [train](#orgaf4fafe)
        1.  [links](#org953bd45)
    12. [train (old)](#org9cf146a)
    13. [loss, inference, accuracy](#org2d2bcba)
    14. [numpy](#orgb2dee08)
    15. [layers](#orgeb38424)
    16. [noise](#org3c6e4f2)
    17. [basic nn and gradient](#orgcb88a32)
        1.  [first](#org564bdcd)
        2.  [second](#org75c8bff)
    18. [LSTM](#org4bdfebe)
        1.  [nn.LSTM](#org05e574f)
        2.  [nn.LSTMCell](#org3c2df0d)
        3.  [numbers of parameters](#org8bbd3f2)
        4.  [basic](#org1697acc)
        5.  [tagging model](#orgdee7d34)
        6.  [variable-sized mini-batches](#org027b681)
        7.  [GPU CUDA](#orgf1f7f1e)
        8.  [SGD](#org8066327)
    19. [Distributed - torch.distributed](#orgbda20a7)
        1.  [overview](#org9f766d5)
        2.  [torch.distributed.rpc](#org33e3cb5)
        3.  [FSDP](#org4e6c035)
        4.  [elastic (launch)](#org2fedcc0)
        5.  [torch.distributed.launch](#orgde5d2e5)
        6.  [KubeFlow PyTorchJob](#orga0720b1)
        7.  [investiage](#orgb97bf0a)
        8.  [links](#org8f747ad)
    20. [retain<sub>graph</sub>](#orgbcd85cf)
    21. [memory management](#org62c503d)
    22. [troubleshooting](#orgfb4fd3f)
    23. [plot learning curve](#orgeb094b9)
    24. [Finetuning](#org963376f)
    25. [links](#org4e79769)
15. [ONNX](#org0d8c6ae)
    1.  [Terms](#org941a1c3)
    2.  [CASE: Get version](#org3bac016)
    3.  [Usage](#org21bc9d4)
    4.  [Visualization - netron](#org5f57470)
    5.  [ONNX format](#org118f1c3)
    6.  [doc:](#orgf2c2554)
16. [LangChain](#org94c5497)
    1.  [terms](#orgd421049)
    2.  [GigaChat](#orgc796dcb)
    3.  [Chat Models](#org19cc490)
    4.  [messages and batch messages](#org6d8c11e)
    5.  [Prompt Templates](#org9eca397)
    6.  [Memory Types in Langchain](#orge4f69ce)
17. [MLFlow - experiment tracking](#org4226c04)
    1.  [features](#org640d676)
    2.  [terms](#org1a5b1c6)
    3.  [installation](#org1d424de)
    4.  [framework styles:](#org9e6faa7)
    5.  [Usage](#orgd44d2df)
        1.  [monitor experiment locally](#org6438eff)
        2.  [store first locally](#org106c032)
    6.  [tracking URI](#org6aa0b2c)
    7.  [tracking API](#org365c801)
    8.  [MlflowClient](#org7f8f758)
        1.  [model registry - list models, register model](#orgb4dc526)
        2.  [model registry - search<sub>runs</sub>](#org4d2ecce)
        3.  [runs](#orgf2f46b1)
    9.  [MLflow Tracing - @mlflow.trace](#org471758c)
    10. [Not supported:](#org981306e)
18. [Perfect](#orga151793)
    1.  [terms](#orga902ae4)
    2.  [links](#orgf412dc0)
19. [PaddlePaddle 飞桨](#orgd108ee5)
20. [huggingface.co](#org86c8dd8)
    1.  [Dateset](#orga3233cc)
        1.  [load](#orga904d4c)
        2.  [explore](#org4d9ab80)
    2.  [pip packages](#orgd40e713)
        1.  [huggingface-hub](#orgeb6d5b0)
        2.  [transformers ](#org5767311)
        3.  [pytorch-image-models](#orga8b2fc4)
        4.  [diffusers](#orgeceba2c)
        5.  [datasets](#orgb815b0d)
        6.  [peft - Parameter-Efficient Fine-Tuning](#org3eda8d9)
        7.  [candle - ML framework for Rust](#orga6f28db)
        8.  [trl - reinforcement learning for Transformers.](#org84ee71f)
        9.  [tokenizers](#org9ccc224)
        10. [text-generation-inference - LLMs](#org8734e48)
        11. [accelerate](#org525155a)
        12. [lerobot - Learning for Real-World Robotics in Pytorch](#orgeb72451)
        13. [text-embeddings-inference](#org1ae8db2)
    3.  [pages](#org1da0e25)
    4.  [reduce inference](#org6a8a1f8)
        1.  [quantization](#orga12f678)
        2.  [pruning](#orgc6f01d1)
    5.  [transformers](#org2c92bd3)
        1.  [theory](#orgf837a7b)
        2.  [base](#orgf804502)
        3.  [scipts](#orgd55a2d4)
        4.  [installation log](#orgd028c53)
    6.  [accelerate - DISTRIBUTED ](#org7f883d5)
        1.  [hello world](#org6198b22)
        2.  [links](#orgd462ba6)
    7.  [PEFT - DISTRIBUTED](#org3bd00f2)
        1.  [links](#org2845444)
    8.  [TRL ](#org7bab1cb)
        1.  [links](#org662c3cc)
    9.  [Spaces](#orgab4302d)
    10. [cache and offline mode](#org6a55e8d)
        1.  [transformers](#orgaa82573)
    11. [Main concepts](#org6369f81)
    12. [problems:](#org64530ee)
    13. [pip install gradio<sub>client</sub>](#orgb1f7a3d)
    14. [sci-libs/huggingface<sub>hub</sub>](#org11732d0)
        1.  [links](#orgb85662c)
    15. [autotrain](#org30b1daf)
    16. [AutoTokenizer.from<sub>pretrained</sub>](#orgdf53d5f)
    17. [AutoModel.from<sub>pretrained</sub>](#org2b8d4ac)
    18. [gentoo transformers installation](#org6152c69)
        1.  [setup.py and gentoo ebuild](#orgd408956)
    19. [troubleshooting](#orgf08a4d3)
        1.  [TypeError: unhashable type: 'AddedToken' in transformers/tokenization<sub>utils.py</sub>", line 437](#org46fa40c)
        2.  [AttributeError: 'AddedToken' object has no attribute '<span class="underline"><span class="underline">setstate</span></span>'. Did you mean: '<span class="underline"><span class="underline">getstate</span></span>'?](#org60a2365)
    20. [distributed](#org9033e28)
    21. [Text embeddings models](#orge6ebf08)
    22. [links](#org507be70)

-**- mode: Org; fill-column: 110; coding: utf-8; -**-
\#+TITLE  Python for data science


<a id="org935089c"></a>

# NumPy

-   <https://docs.scipy.org/doc/numpy/reference/>
-   <https://docs.scipy.org/doc/numpy/reference/arrays.ndarray.html>


<a id="org577a5f1"></a>

## frequent operations on shape


<a id="org308c849"></a>

### reshape((-1, 1)

    import numpy as np
    x = np.array([1,2,3,4,5])
    print(np.concatenate((x, x)).reshape((-1, 1)))

    [[1]
     [2]
     [3]
     [4]
     [5]
     [1]
     [2]
     [3]
     [4]
     [5]]


<a id="orge6c8ea3"></a>

## theory

[ˈnʌmpaɪ] large, multi-dimensional arrays and matrices.  BSD-new license.  multi-dimensional container of
generic data

-   a powerful N-dimensional array object
-   sophisticated (broadcasting) functions
-   useful linear algebra, Fourier transform, and random number capabilities

**ndarray** - n-dimensional array

-   homogeneously typed: all elements of a single array must be of the same type
-   np.pad(&#x2026;) routine to extend arrays actually creates new arrays of the desired shape and padding values,
    copies the given array into the new one and returns it

Type hint

    def f(x: np.ndarray) -> np.ndarray

&#x2026; = : - Ellipse ones[:,5] - пятый слобец


<a id="orgf14130b"></a>

## shape size dtype etc:

-   ndarray.shape
-   ndarray.size - произведение чисел в shape
-   ndarray.dtype - bool\_, character, int8, int16, int32, int64, float8, float16, float32, float64, complex64, object\_
-   ndarray.itemsize - размер элемента в байтах
-   ndarray.data - обратно в python - не рекомендуется пользоваться


<a id="orga824f9b"></a>

## basic

    import numpy as np
    a = np.array([1, 2, 3])
    a[[1,2]] # array([2, 3])
    
    >>> np.arange(4).reshape((2,2))
    array([[0, 1],
           [2, 3]])
    >>> a = np.arange(4).reshape((2,2))
    >>> a
    array([[0, 1],
           [2, 3]])
    >>> a.sum(axis=0)
    array([2, 4])
    >>> a.sum(1)
    array([1, 5])
    >>> a.sum(-1)
    array([1, 5])
    
    x = np.array([[1,2],[3,4]])
    x[:,0] # array([1, 3])
    
    np.zeros((3, 5), dtype=float) # dtype - по умолчанию float
    np.ones((2, 2, 2)) # all 1
    np.eye(5) # единицы на диагонали
    np.empty((3, 3)) # случайное какая была память так и заполнилась
    np.arange(10, 30, 5) # range
    np.linspace(0, 2, 9) # от 0 до 2 - создать 9 штук
    np.logspace(start, stop, num=50, endpoint=True, base=10.0) # base**start - base ** stop с ускорением
    
    np.amax(nparray) # max element
    np.amin(nparray) # min element
    np.nanmin(data[:, 1]) # max element at column 1
    
    self.img[:] = 255 # replace every element with single value
    # filter None elements:
    self.contours = np.array(list(filter(lambda x:x is not None, self.contours)))
    
    #
    a = np.linspace(-np.pi, np.pi, 100)
    b = np.sin(a)
    c = np.cos(a)
    
    # Linear algebra
    from numpy.random import rand
    from numpy.linalg import solve, inv
    a = np.array([[1, 2, 3], [3, 4, 6.7], [5, 9.0, 5]])
    a.transpose()
    array([[ 1. ,  3. ,  5. ],
           [ 2. ,  4. ,  9. ],
           [ 3. ,  6.7,  5. ]])
    inv(a)
    array([[-2.27683616,  0.96045198,  0.07909605],
           [ 1.04519774, -0.56497175,  0.1299435 ],
           [ 0.39548023,  0.05649718, -0.11299435]])
    b =  np.array([3, 2, 1])
    solve(a, b)  # solve the equation ax = b
    array([-4.83050847,  2.13559322,  1.18644068])
    
    c = rand(3, 3) * 20  # create a 3x3 random matrix of values within [0,1] scaled by 20
    array([[  3.98732789,   2.47702609,   4.71167924],
           [  9.24410671,   5.5240412 ,  10.6468792 ],
           [ 10.38136661,   8.44968437,  15.17639591]])
    np.dot(a, c)  # matrix multiplication
    a @ c # Starting with Python 3.5 and NumPy 1.10
    
    # per column operations
    data[:, 1] = (data[:, 1] - data_min)
    data[:,1] +=1
    
    # Add dimension
    x = np.expand_dims(x, axis=0)
    x = x[np.newaxis, :]
    
    # elemets at positons
    a = a[np.array([1, 2, 10, 3])]


<a id="orgcf7c54b"></a>

## masking and comparision

-   x>1 - Boolean array indexing [True, False]
-   x[x>1] - select elements with True
-   (a[1,:]!=2) & (a[1,:]!=2) - and
-   cv2.bitwise<sub>not</sub>(gray)

    a = array([1, 2, 3, 4, 4])
    # get elements where >2
    a[np.where( a > 2)]
    >> array([1, 2, 3, 4, 4])
    a[a > 2]
    >> array([1, 2, 3, 4, 4])


<a id="org5948ab8"></a>

## LOOPING

substarct every [9,3,6] from [1,2,3,4,5,6] and find min of abs:

    import numpy as np
    c = [1,2,3,4,5,6]
    s = [9,3,6]
    su = np.repeat([c],len(s),axis=0).T - s
    m = np.min(np.abs(su), axis=0)
    print(m)


<a id="org32a6cba"></a>

## replace

    my_array[my_array == 8] = 20
    my_array[(my_array > 8) | (my_array < 6)] = 20
    result= np.where(new_array==np.inf, 0, new_array)
    # inf
    result=np.where(np.isinf(a), 999999, a)
    result=np.where(np.isnan(a), 0, a)
    np.place(new_values, new_values<0, [0])


<a id="orge184797"></a>

## round округление

    a = np.array([1.1, 1.5, 1.9], float)
    >>> np.floor(a)
    array([ 1.,  1.,  1.])
    >>> np.ceil(a)
    array([ 2.,  2.,  2.])
    >>> np.rint(a)
    array([ 1.,  2.,  2.])


<a id="org3edd3dd"></a>

## keras.utils.to<sub>categorical</sub>


<a id="org4822899"></a>

### basic

    y_classes = keras.utils.to_categorical(range(len(paths))) # classes array in one-hot
    train_y.append(y_classes[i]) #to set
    # back
    out = model.predict
    i = np.argmax(out, axis=-1)[0] #id
    paths[i] # original


<a id="orgfabb428"></a>

### add sum category

    >>> c
    array([[1., 0.],
           [0., 1.]], dtype=float32)
    np.append(c, [c[0]+c[1]], axis=0)
    # result:
    array([[1., 0.],
           [0., 1.],
           [1., 1.]], dtype=float32)


<a id="org05d4bcb"></a>

## save and saves

    np.save('123', data) # 123.npy
    data = np.load('../123.npy', mmap_mode=None)


<a id="org0aebcef"></a>

## ignore items on diagonal

    not_diag = np.where(~np.eye(dists.shape[0],dtype=bool))
    cl_distance = np.mean(dists[not_diag]) # mean mey be replace with something close to median


<a id="org7be1f9b"></a>

## get items below diagonal (triangleform from squareform)

get upper triangleform:

    C3 = np.triu(C2)

ge lower triangleform:

    C3 = np.tril(C2)

get elements:

    arr2 = np.where(np.tri(arr.shape[0],arr.shape[1], k = -1) == 1)


<a id="orgf3f98ca"></a>

## broadcasting and vectorization

Problem:

    import numpy as np
    a = np.arange(4)
    b = np.ones(5)
    try:
        a*b
    except Exception as e:
        print(e)

    operands could not be broadcast together with shapes (4,) (5,)

Solution:

    aa = a.reshape(4,1)
    print(aa * b)

    [[0. 0. 0. 0. 0.]
     [1. 1. 1. 1. 1.]
     [2. 2. 2. 2. 2.]
     [3. 3. 3. 3. 3.]]

rules:

     256 x 256 x 3
                 3
    =256 x 256 x 3

    8 x 1 x 6 x 1
        7 x 1 x 5
    8 x 7 x 6 x 5

     4 x 3
         4
    Fail

    import numpy as np
    a = np.arange([4,3])
    b = np.ones(3)
    # print(a)
    # try:
    #     print(a+b)
    # except Exception as e:
    #     print(e)

links:
<https://scipy.github.io/old-wiki/pages/EricsBroadcastingDoc.html>


<a id="orge673d0f"></a>

# pandas


<a id="orge32a941"></a>

## read csv

    pd.read_csv(p, index_col=0, sep='\t')

-   sep='\t' иногда встречается разделение столбцов по \t. обычно запятой


<a id="orge41083c"></a>

## sort

    df.sort_values(by=df['Клиент'], axis=1) # 0 we gave columns, 1 we gave row indexes and sort columns


<a id="org45a1a7d"></a>

## replace value

1.  new column must be created

    df.loc[df.Followers == 'N/A', 'Followers'] = np.nan

1.  can use regex

    df['Followers'].replace(to_replace='N/A', value=np.nan)

1.  can use any function

3.1) on series

    df['holiday'] = df['holiday'].apply(lambda x: 1 if x != 0 else 0)

3.2) raw=True gives big speed up

    df.apply(lambda row: sum_square(row[0], row[1]), raw=True, axis=1 )

1.  convert DataFrame to numpy


<a id="org86d25e7"></a>

## **analysis**

    import pandas as pd
    AH = pd.read_csv('a.csv', header=0, index_col = False)
    print(df.head()) # first 5 lines
    print(df.shape)
    print(df.dtypes.to_string()) # типы всех! столбцов
    print(df.columns) # названия всех! столбцов
    print(df.iloc[:]) # названия всех! столбцов
    print(df['birth_date']) # one column values
    print(df.isnull().values.any()) # any NaN?
    print(df.describe(include='all')) # pre column: unique, mean, std, min, квантиль
    df.iloc[1, :].value_counts() #100    1  400    1  300    1  200    1
    df.iloc[1, :].value_counts(normalize=True) #100    0.25  400    0.25  300    0.25 200    0.25
    
    # Categories and Uniques
    Categorial or not. Unique Values
    categorial_columns = [c for c in data.columns if data[c].dtype.name == 'object']
    categorial_columns = df.select_dtypes(include=["object"]).columns # or
    numerical_columns = [c for c in data.columns if data[c].dtype.name != 'object']
    numerical_columns = df.select_dtypes(exclude=["object"]).columns # or
    print(data[categorial_columns].describe())
    # unique
    : for c in categorial_columns:
    :    print(c, data[c].unique())
    
    # histogram
    
    import matplotlib
    matplotlib.use('TkAgg')
    from matplotlib import pyplot as plt
    
    AH['SalePrice'].hist(bins = 60, normed=1) # calls matplotlib.pyplot.hist
    plt.show()
    
    # plot столбец
    
    sales.iloc[:,1].plot()


<a id="orgd5f04bb"></a>

## Series

One-dimensional ndarray with axis labels

combine along index

-   pd.concat([s1,s2], axis=1)

for dataframes merge:

-   df1.reset<sub>index</sub>()
-   df2.reset<sub>index</sub>()
-   df1.merge(df2)

    mydict = [{'a': 1, 'b': 2, 'c': 3, 'd': 4},
              {'a': 100, 'b': 200, 'c': 300, 'd': 400},
              {'a': 1000, 'b': 2000, 'c': 3000, 'd': 4000 }]
    df = pd.DataFrame(mydict)
    
    df.iloc[0] # {'a': 1, 'b': 2, 'c': 3, 'd': 4}
    type(df.iloc[0]) # <class 'pandas.core.series.Series'>
    df.iloc[[0,1,2]] == df == df.iloc[:3]
    df.iloc[0, 1] # 2
    df.values # convert to numpy


<a id="orge1fe8b3"></a>

## DataFrame

Two-dimensional, size-mutable data. Container for Series objects

    # 1) way
    d = {'col1': [1, 2], 'col2': [3, 4]}
    s1 = pd.DataFrame(data=d)
    # 2) way
    staff = [(col, melb_df[col].nunique(),melb_df[col].dtypes)]
    unique_counts = pd.DataFrame(
        staff,
        columns=['Column_Name', 'Num_Unique', 'Type']
    ).sort_values(by='Num_Unique',  ignore_index=True)


<a id="org6fed64f"></a>

## index and levels

-   default - created autoincrement int
-   df.set<sub>index</sub>('c')
-   df.reset<sub>index</sub>(drop=True, inplace=True) - index to column, create new index, default: drop=False
-   df.index = Series - ad hoc index
-   df.index.name - index column name

index and columns may have multiple levels

-   multilevel index reated by groupby

-   df.loc[index, (column|:)] - get values at index
-   df.iloc[integer] - get values at position


<a id="org2565cae"></a>

## WHERE AND FILTERS

<https://pandas.pydata.org/pandas-docs/stable/user_guide/indexing.html#boolean-indexing>
methods

    - loc - df.loc[(df['Salary_in_1000']>=100) & (df['Age']< 60) & (df['FT_Team'].str.startswith('S')),['Name','FT_Team']]
    - df.index[(df['Salary_in_1000']>=100) & (df['Age']< 60)]
    - numpy where
      - idx = np.where((df['Salary_in_1000']>=100) & (df['Age']< 60) & (df['FT_Team'].str.startswith('S')))
      - df.loc[idx]
    - Query - df.query('Salary_in_1000 >= 100 & Age < 60 & FT_Team.str.startswith("S").values')
    - Boolean Indexing - df[(df['Salary_in_1000']>=100) & (df['Age']<60) & df['FT_Team'].str.startswith('S')][['Name','Age','Salary_in_1000']]
    - eval - df[df.eval("Salary_in_1000>=100 & (Age <60) & FT_Team.str.startswith('S').values")]

bool - | or, & and, ~ not

    
    # DATΑFRAME --------
    df.shop_id.nunique()
    
    df[df>100] # nan, nan, 101
    df[df.shop_id > 20] # filter works!
    
    # making boolean series for a team name
    filter1 = data["Team"]=="Atlanta Hawks"
    # making boolean series for age
    filter2 = data["Age"]>24
    # filtering data on basis of both filters
    data.where(filter1 & filter2, inplace = True)
    
    # SERIES -------------
    s = pd.Series(range(5)) # 0,1,2,3,4
    s.where(s>1,-1)  # -1, -1, 2, 3, 4
    s.mask(s>1, -1)  # 0, 1, -1, -1, -1
    
    s[s>2] # 3, 4


<a id="orga8ec544"></a>

### filter by date

    df = df.dropna(subset=['Дата_заключения_контракта_d'])
    d0101 = pd.to_datetime('20190101', format='%Y%m%d', errors='ignore')
    d0731 = pd.to_datetime('20190731', format='%Y%m%d', errors='ignore')
    df = df[d0101 >= df['Дата_заключения_контракта_d'] >= d0731]


<a id="org0234ebe"></a>

## COUNT


<a id="org3899e15"></a>

### get unique rows with count

    a = pd.DataFrame(a.groupby(['Коды отказа', 'Описание кодов отказа']).size().reset_index(name="count"))
    a = pd.DataFrame(a)
    c_row = a.pop('count')
    a.insert(0, 'count', c_row)
    a.sort_values(by=['count'], ascending=False).to_csv('kod_otkaza.csv')


<a id="orgfba19d5"></a>

### count example

    # Person   Age  Single
    # 0    John  24.0   False
    # 1    Myla   NaN    True
    # 2   Lewis  21.0    True
    # 3    John  33.0    True
    # 4    Myla  26.0   False
    
    # create multiindex and count
    df.set_index(["Person", "Single"]).count(level="Person")
    # John      2
    # Lewis     1
    # Myla      1
    
    df.set_index(["Person", "Single"]).count(level="Single")
    # False     2
    # True      2


<a id="org0411910"></a>

### most frequent

    pd.Series([2,3,4,5,6].value_counts().idxmax()


<a id="org7e11947"></a>

## RESHAPINGS guide <https://pandas.pydata.org/docs/user_guide/reshaping.html>


<a id="orgeec68ce"></a>

### Resample for timeseries

-   'M' - month boundary
-   'A' - annual

    loan_rev_data=data['Loan Amount']
    loan_rev_data['date'] = pd.DatetimeIndex(data['Created Date'])
    loan_rev_data = loan_rev_data.set_index('date')
    monthly_loan_rev_data= loan_rev_data.resample('M').sum()

                Loan Amount
    date
    2014-10-31  13039283.00
    2014-11-30  16097733.00
    2014-12-31  29077334.00


<a id="org407523c"></a>

### pivot - rows to columns without aggregation

Uses unique values from specified index / columns to form axes of the resulting DataFrame

params: index, columns, values

    import pandas as pd
    df = pd.DataFrame({'foo': ['one', 'one', 'one', 'two', 'two','two'],
                       'bar': ['A', 'B', 'C', 'A', 'B', 'C'],
                       'baz': [1, 2, 3, 4, 5, 6],
                       'zoo': ['x', 'y', 'z', 'q', 'w', 't']})
    print(df)
    print()
    print(df.pivot(index='foo', columns='bar', values='baz'))

       foo bar  baz zoo
    0  one   A    1   x
    1  one   B    2   y
    2  one   C    3   z
    3  two   A    4   q
    4  two   B    5   w
    5  two   C    6   t
    
    bar  A  B  C
    foo
    one  1  2  3
    two  4  5  6

Possible misstakes example:

    import pandas as pd
    df = pd.DataFrame({"foo": ['one', 'one', 'two', 'two'],
                       "bar": ['A', 'A2', 'B', 'C'], # new columns should not have duplicates in one index
                       "baz": [1, 2, 3, 4]})
    print(df.pivot(index='foo', columns='bar', values='baz'))

    bar    A   A2    B    C
    foo
    one  1.0  2.0  NaN  NaN
    two  NaN  NaN  3.0  4.0

-   <https://pandas.pydata.org/docs/user_guide/reshaping.html#reshaping>
-   <https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.pivot.html>


<a id="org32bf2b7"></a>

### stack (levels)

    import pandas as pd
    df_single_level_cols = pd.DataFrame([[0, 1], [2, 3]],
                                        index=['cat', 'dog'],
                                        columns=['weight', 'height'])
    print(df_single_level_cols)
    print()
    print(df_single_level_cols.stack())

         weight  height
    cat       0       1
    dog       2       3
    
    cat  weight    0
         height    1
    dog  weight    2
         height    3
    dtype: int64


<a id="orgae77c12"></a>

### melt - columns to rows

1.  ex1

        import pandas as pd
        df = pd.DataFrame(
            {
                "first": ["John", "Mary"],
                "last": ["Doe", "Bo"],
                "height": [5.5, 6.0],
                "weight": [130, 150],
            })
        print(df)
        print()
        print(df.melt(id_vars=["first", "last"]))
    
          first last  height  weight
        0  John  Doe     5.5     130
        1  Mary   Bo     6.0     150
        
          first last variable  value
        0  John  Doe   height    5.5
        1  Mary   Bo   height    6.0
        2  John  Doe   weight  130.0
        3  Mary   Bo   weight  150.0

2.  ex2

        import pandas as pd
        df = pd.DataFrame({'A': {0: 'a', 1: 'b', 2: 'c'},
                           'B': {0: 1, 1: 3, 2: 5},
                           'C': {0: 2, 1: 4, 2: 6}})
        print(df)
        print()
        print(pd.melt(df, id_vars=['A'], value_vars=['B']))
    
           A  B  C
        0  a  1  2
        1  b  3  4
        2  c  5  6
        
           A variable  value
        0  a        B      1
        1  b        B      3
        2  c        B      5


<a id="orgef23ab8"></a>

### pivot<sub>table</sub> - allow aggs

1.  ex1

        import pandas as pd
        import numpy as np
        import datetime
        df = pd.DataFrame(
            {
                "A": ["one", "one", "two", "three"] * 6,
                "B": ["A", "B", "C"] * 8,
                "C": ["foo", "foo", "foo", "bar", "bar", "bar"] * 4,
                "D": np.random.randn(24),
                "E": np.random.randn(24),
                "F": [datetime.datetime(2013, i, 1) for i in range(1, 13)]
                + [datetime.datetime(2013, i, 15) for i in range(1, 13)],
            })
        print(df)
        print()
        print(pd.pivot_table(df, values="D", index=["A", "B"], columns=["C"]))
        print()
        print(pd.pivot_table(df, values="D", index=["B"], columns=["A", "C"], aggfunc=np.sum))
    
                A  B    C         D         E          F
        0     one  A  foo  0.834789 -0.268575 2013-01-01
        1     one  B  foo -0.332062 -0.324379 2013-02-01
        2     two  C  foo -2.095669 -2.186134 2013-03-01
        3   three  A  bar -0.793498  0.126653 2013-04-01
        4     one  B  bar  0.117796 -0.845898 2013-05-01
        5     one  C  bar  1.016105 -0.369420 2013-06-01
        6     two  A  foo  1.151064 -0.698485 2013-07-01
        7   three  B  foo -0.487159  0.123010 2013-08-01
        8     one  C  foo -1.456931  1.230448 2013-09-01
        9     one  A  bar -0.591074 -0.851506 2013-10-01
        10    two  B  bar  1.332696  0.161591 2013-11-01
        11  three  C  bar  0.033348 -0.187387 2013-12-01
        12    one  A  foo -1.159041  0.321096 2013-01-15
        13    one  B  foo  0.353786  0.724629 2013-02-15
        14    two  C  foo -1.765572 -0.708540 2013-03-15
        15  three  A  bar  0.805330 -0.652539 2013-04-15
        16    one  B  bar -0.124616  0.014006 2013-05-15
        17    one  C  bar -0.052215 -0.168125 2013-06-15
        18    two  A  foo  0.921741  0.280954 2013-07-15
        19  three  B  foo -0.584663  0.727251 2013-08-15
        20    one  C  foo -1.740931  1.516952 2013-09-15
        21    one  A  bar -0.189743 -0.515618 2013-10-15
        22    two  B  bar -0.099166  0.002090 2013-11-15
        23  three  C  bar -0.487092 -0.996470 2013-12-15
        
        C             bar       foo
        A     B
        one   A -0.390408 -0.162126
              B -0.003410  0.010862
              C  0.481945 -1.598931
        three A  0.005916       NaN
              B       NaN -0.535911
              C -0.226872       NaN
        two   A       NaN  1.036402
              B  0.616765       NaN
              C       NaN -1.930620
        
        A       one               three                two
        C       bar       foo       bar       foo      bar       foo
        B
        A -0.780817 -0.324252  0.011831       NaN      NaN  2.072805
        B -0.006820  0.021724       NaN -1.071822  1.23353       NaN
        C  0.963890 -3.197862 -0.453743       NaN      NaN -3.861240

2.  ex2

        import pandas as pd
        import numpy as np
        print(pd.pivot_table(df[["A", "B", "C", "D", "E"]], index=["A", "B"], columns=["C"]))
        print()
        print(pd.pivot_table(df, values="D", index=pd.Grouper(freq="M", key="F"), columns="C"))
        print()
        table = pd.pivot_table(df, index=["A", "B"], columns=["C"], values=["D", "E"])
        print(table.to_string(na_rep=""))
        print()
        table = df.pivot_table(
            index=["A", "B"],
            columns="C",
            values=["D", "E"],
            margins=True,
            aggfunc=np.std)
        print(table)
        print()
        print(table.stack())
    
                        D                   E
        C             bar       foo       bar       foo
        A     B
        one   A -0.390408 -0.162126 -0.683562  0.026260
              B -0.003410  0.010862 -0.415946  0.200125
              C  0.481945 -1.598931 -0.268773  1.373700
        three A  0.005916       NaN -0.262943       NaN
              B       NaN -0.535911       NaN  0.425131
              C -0.226872       NaN -0.591928       NaN
        two   A       NaN  1.036402       NaN -0.208765
              B  0.616765       NaN  0.081840       NaN
              C       NaN -1.930620       NaN -1.447337
        
        C                bar       foo
        F
        2013-01-31       NaN -0.162126
        2013-02-28       NaN  0.010862
        2013-03-31       NaN -1.930620
        2013-04-30  0.005916       NaN
        2013-05-31 -0.003410       NaN
        2013-06-30  0.481945       NaN
        2013-07-31       NaN  1.036402
        2013-08-31       NaN -0.535911
        2013-09-30       NaN -1.598931
        2013-10-31 -0.390408       NaN
        2013-11-30  0.616765       NaN
        2013-12-31 -0.226872       NaN
        
                        D                   E
        C             bar       foo       bar       foo
        A     B
        one   A -0.390408 -0.162126 -0.683562  0.026260
              B -0.003410  0.010862 -0.415946  0.200125
              C  0.481945 -1.598931 -0.268773  1.373700
        three A  0.005916           -0.262943
              B           -0.535911            0.425131
              C -0.226872           -0.591928
        two   A            1.036402           -0.208765
              B  0.616765            0.081840
              C           -1.930620           -1.447337
        
                        D                             E
        C             bar       foo       All       bar       foo       All
        A     B
        one   A  0.283784  1.409851  0.840699  0.237509  0.416961  0.494677
              B  0.171411  0.484967  0.297085  0.608044  0.741761  0.658146
              C  0.755417  0.200819  1.283359  0.142337  0.202589  0.958996
        three A  1.130542       NaN  1.130542  0.550971       NaN  0.550971
              B       NaN  0.068946  0.068946       NaN  0.427263  0.427263
              C  0.368006       NaN  0.368006  0.572108       NaN  0.572108
        two   A       NaN  0.162156  0.162156       NaN  0.692568  0.692568
              B  1.012479       NaN  1.012479  0.112784       NaN  0.112784
              C       NaN  0.233414  0.233414       NaN  1.044817  1.044817
        All      0.651877  1.140991  0.940582  0.408882  0.998514  0.759845
        
                            D         E
        A     B C
        one   A All  0.840699  0.494677
                bar  0.283784  0.237509
                foo  1.409851  0.416961
              B All  0.297085  0.658146
                bar  0.171411  0.608044
                foo  0.484967  0.741761
              C All  1.283359  0.958996
                bar  0.755417  0.142337
                foo  0.200819  0.202589
        three A All  1.130542  0.550971
                bar  1.130542  0.550971
              B All  0.068946  0.427263
                foo  0.068946  0.427263
              C All  0.368006  0.572108
                bar  0.368006  0.572108
        two   A All  0.162156  0.692568
                foo  0.162156  0.692568
              B All  1.012479  0.112784
                bar  1.012479  0.112784
              C All  0.233414  1.044817
                foo  0.233414  1.044817
        All     All  0.940582  0.759845
                bar  0.651877  0.408882
                foo  1.140991  0.998514


<a id="org92bb9d2"></a>

### pivot tables(old)

    melb_df.groupby(['Rooms', 'Type'])['Price'].mean() # иерархические индексы
    melb_df.groupby(['Rooms', 'Type'])['Price'].mean().unstack() # раскладывает таблицу в столбцы
    melb_df.pivot_table(
        values='Price',
        index='Rooms',
        columns='Type',
        fill_value=0
    ).round() # аналогично второму


<a id="orgaa24c85"></a>

### crosstab - frequencies

frequency table of the factors unless an array of values and an aggregation function are passed.

    import pandas as pd
    import numpy as np
    foo, bar, dull, shiny, one, two = "foo", "bar", "dull", "shiny", "one", "two"
    a = np.array([foo, foo, bar, bar, foo, foo], dtype=object)
    b = np.array([one, one, two, one, two, one], dtype=object)
    c = np.array([dull, dull, shiny, dull, dull, shiny], dtype=object)
    print("frequencies:")
    print(pd.crosstab(a, b))
    print()
    print(pd.crosstab(a, [b, c], rownames=["a"], colnames=["b", "c"]))

    frequencies:
    col_0  one  two
    row_0
    bar      1    1
    foo      3    1
    
    b    one        two
    c   dull shiny dull shiny
    a
    bar    1     0    0     1
    foo    2     1    1     0


<a id="org1d16965"></a>

### cut - transform continuous variables to discrete or categorical variables

    import pandas as pd
    import numpy as np
    ages = np.array([10, 15, 13, 12, 23, 25, 28, 59, 60])
    print(pd.cut(ages, bins=3))
    print()
    print(pd.cut(ages, bins=[0, 18, 35, 70]))

    [(9.95, 26.667], (9.95, 26.667], (9.95, 26.667], (9.95, 26.667], (9.95, 26.667], (9.95, 26.667], (26.667, 43.333], (43.333, 60.0], (43.333, 60.0]]
    Categories (3, interval[float64, right]): [(9.95, 26.667] < (26.667, 43.333] < (43.333, 60.0]]
    
    [(0, 18], (0, 18], (0, 18], (0, 18], (18, 35], (18, 35], (18, 35], (35, 70], (35, 70]]
    Categories (3, interval[int64, right]): [(0, 18] < (18, 35] < (35, 70]]


<a id="org691bfd5"></a>

### dummies

-   pd.get<sub>dummies</sub>(df, prefix="new<sub>prefix</sub>")
-   pd.from<sub>dummies</sub>(df, sep="\_")


<a id="org8b3ce74"></a>

### factorize - categories to numbers

    import pandas as pd
    import numpy as np
    x = pd.Series(["A", "A", np.nan, "B", 3.14, np.inf])
    labels, uniques = pd.factorize(x)
    print(labels)
    print(uniques)

    [ 0  0 -1  1  2  3]
    Index(['A', 'B', 3.14, inf], dtype='object')


<a id="org8f9a6a9"></a>

### explode

    import pandas as pd
    import numpy as np
    keys = ["panda1", "panda2", "panda3"]
    values = [["eats", "shoots"], ["shoots", "leaves"], ["eats", "leaves"]]
    df = pd.DataFrame({"keys": keys, "values": values})
    print(df)
    print()
    print(df["values"].explode())
    print()
    print(df.explode("values"))

         keys            values
    0  panda1    [eats, shoots]
    1  panda2  [shoots, leaves]
    2  panda3    [eats, leaves]
    
    0      eats
    0    shoots
    1    shoots
    1    leaves
    2      eats
    2    leaves
    Name: values, dtype: object
    
         keys  values
    0  panda1    eats
    0  panda1  shoots
    1  panda2  shoots
    1  panda2  leaves
    2  panda3    eats
    2  panda3  leaves


<a id="orgbcfbeb4"></a>

### assign and explode - split values to rows

    import pandas as pd
    import numpy as np
    df = pd.DataFrame([{"var1": "a,b,c,d", "var2": 1}, {"var1": "d,e,f", "var2": 2}])
    print(df)
    print()
    print(df.assign(var1=df.var1.str.split(",")).explode("var1"))

          var1  var2
    0  a,b,c,d     1
    1    d,e,f     2
    
      var1  var2
    0    a     1
    0    b     1
    0    c     1
    0    d     1
    1    d     2
    1    e     2
    1    f     2


<a id="org83ff131"></a>

## Merge, join, and concatenate

<https://pandas.pydata.org/pandas-docs/stable/user_guide/merging.html>

Одну таблицу разделенную на две части:

-   верх и низ: pd.concat([s1, s2], ignore<sub>index</sub>=True)
-   лево и право ?

-   concatenate - по умолчанию добавляются строки, default: axis=0, join='outer', ignore<sub>index</sub> = False
    -   pd.concat([df1, df4], axis=1, sort=False)  - подбираются столбцы с одинаковым значением, добавляются NaN-s
    -   join='outer' -  NaN-s не добавляются

SQL style

1.  merge - ignore index, uses specified column
    -   pd.merge(playdata, genetic<sub>train</sub>, on="SK<sub>ID</sub><sub>CURR</sub>",how="left" ) - если есть дупликаты справа, то они все
        войдут даже справа
    -   "on" must be found in both DataFrames
    -   indicator=True - adds \_merge field with ['left<sub>only</sub>', 'right<sub>only</sub>', 'both']
2.  join - uses index column
    -   first you should set index to joined columns
    -   table1.join(table2, lsuffix='<sub>table1</sub>', rsuffix='<sub>table2</sub>',how="left")

new column:

    df['asd'] = list


<a id="org9710c58"></a>

### concat series

    >>> df
       0
    0  1
    2  3
    >>> df2
       0
    0  1
    1  2
    >>> pd.concat([df,df2], axis=1)
         0    0
    0  1.0  1.0
    2  3.0  NaN
    1  NaN  2.0

    import pandas as pd
    s1 = pd.Series(['a', 'b'])
    s2 = pd.Series(['c', 'd'])
    print(pd.concat([s1, s2], ignore_index=True))

    0    a
    1    b
    2    c
    3    d
    dtype: object


<a id="orgac6477a"></a>

### concat datafremes vertically

    import pandas as pd
    df1 = pd.DataFrame({'lkey': ['foo', 'bar', 'baz', 'foo'],
    
                        'value': [1, 2, 3, 5]})
    
    df2 = pd.DataFrame({'rkey': ['foo', 'bar', 'baz', 'foo'],
    
                        'value': [5, 6, 7, 8]})
    print(df2)
    print(pd.concat([df1, df2], ignore_index=True))

      rkey  value
    0  foo      5
    1  bar      6
    2  baz      7
    3  foo      8
      lkey  value rkey
    0  foo      1  NaN
    1  bar      2  NaN
    2  baz      3  NaN
    3  foo      5  NaN
    4  NaN      5  foo
    5  NaN      6  bar
    6  NaN      7  baz
    7  NaN      8  foo


<a id="orgec931f3"></a>

### merge

    import pandas as pd
    left = pd.DataFrame(
        {
            "key": ["K0", "K1", "K2", "K3"],
            "A": ["A0", "A1", "A2", "A3"],
            "B": ["B0", "B1", "B2", "B3"],
        }
    )
    
    right = pd.DataFrame(
        {
            "key": ["K0", "K1", "K2", "K3", "K0"], # K0 duplicate
            "C": ["C0", "C1", "C2", "C3", "C3"],
            "D": ["D0", "D1", "D2", "D3", "D3"],
        }
    )
    
    result = pd.merge(left, right, on="key", how='left')
    print(result)

      key   A   B   C   D
    0  K0  A0  B0  C0  D0
    1  K0  A0  B0  C3  D3
    2  K1  A1  B1  C1  D1
    3  K2  A2  B2  C2  D2
    4  K3  A3  B3  C3  D3


<a id="org2700995"></a>

### add by date

    def add_holiday_features(df, dfh):
        df['date'] = df['pickup_datetime'].dt.date
        df['date'] = df['date'].astype(str)
        df = df.merge(dfh, 'left', on='date')
        df['holiday'].fillna(0, inplace=True)
        df['holiday'] = df['holiday'].apply(lambda x: 1 if x != 0 else 0)
        df.drop(columns=['date'], inplace=True)
        return df


<a id="orga05b334"></a>

## DISTICT groupby

    print(df.groupby('shop_id').item_id.value_counts())
    print(df.groupby('shop_id').item_id.nunique())
    
    dfg = df[['shop_id', 'item_id'] ].groupby('shop_id')
    print(dfg.agg(['mean', 'count', 'min']))


<a id="org000d52a"></a>

### row number by group - добавить сложную номерацию по группам

    df['Номер_контракта'] = df.groupby(['Клиент'])['Дата_заключения_контракта'].cumcount()+1


<a id="orge9f6e38"></a>

## two dataframes

-   df1['prices<sub>match</sub>'] = np.where(df1['price<sub>1</sub>'] == df2['price<sub>2</sub>'], 'True', 'False')
-   turn values to sets and compare  <https://numpy.org/doc/stable/reference/routines.set.html>
-   dfa[dfa['users<sub>id</sub>'].isin(dft['users<sub>id</sub>'])]


<a id="org9612fd9"></a>

### sets comparision

    def count_fkey(key1, key2):
        un1 = np.unique(key1)
        un2 = np.unique(key2)
        cm = np.in1d(un1, un2, assume_unique=True)
        if 'name' in dir(key1):
            print(f"Unique [{key1.name}]: { un1.size}")
            print(f"Unique [{key2.name}]: { un2.size}")
        else:
            print(f"key1: { un1.size}")
            print(f"key2: { un2.size}")
        c = np.unique(cm, return_counts=True)
        print(pd.DataFrame({'values':c[0], 'count':c[1]}))


<a id="org8eeb6b6"></a>

## Map, Apply, Applymap

-   <https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.map.html>
-   <https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.apply.html>
-   <https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.applymap.html>


<a id="orgb9f0123"></a>

### Comparing map, applymap and apply: Context Matters

First major difference: DEFINITION

-   map is defined on Series ONLY
-   applymap is defined on DataFrames ONLY
-   apply is defined on BOTH

Second major difference: INPUT ARGUMENT

-   map accepts dicts, Series, or callable
-   applymap and apply accept callables only

Third major difference: BEHAVIOR

-   map is elementwise for Series
-   applymap is elementwise for DataFrames
-   apply also works elementwise but is suited to more complex operations and aggregation. The behaviour and return value depends on the function.

Fourth major difference (the most important one): USE CASE

    map is meant for mapping values from one domain to another, so is optimised for performance (e.g., df['A'].map({1:'a', 2:'b', 3:'c'}))
    applymap is good for elementwise transformations across multiple rows/columns (e.g., df[['A', 'B', 'C']].applymap(str.strip))
    apply is for applying any function that cannot be vectorised (e.g., df['sentences'].apply(nltk.sent_tokenize))

Footnotes

-   **map** when passed a dictionary/Series will map elements based on the keys in that
    dictionary/Series. Missing values will be recorded as NaN in the output.
-   **applymap** in more recent versions has been optimised for some operations. You will find applymap
    slightly faster than apply in some cases. My suggestion is to test them both and use whatever
    works better. (deprecated)
-   **map** is optimised for elementwise mappings and transformation. Operations that involve
    dictionaries or Series will enable pandas to use faster code paths for better performance.
-   **Series.apply** returns a scalar for aggregating operations, Series otherwise. Similarly for
    DataFrame.apply. Note that apply also has fastpaths when called with certain NumPy functions such
    as mean, sum, etc.


<a id="org60f759f"></a>

### apply to column

    df['A'] = df['A'].apply(lambda x: str.strip(x) if pd.notna(x) else x)


<a id="orgb683bba"></a>

### return multiple rows

1.  

    return pd.Series([1,2,3]) ; df['a'].apply(f).to_numpy()[:,1] - time 13 sec

1.  

    return [1,2,3] ; list(zip(*df['a'].apply(f).to_list()) - time 28.6 sec


<a id="org3443b3c"></a>

### example

    s.map('I am a {}'.format)
    s.map({' <=50K.': 0, ' >50K.': 1})
    s.map({'fox': 'cub', 'cow': 'calf'})
    df['result'] = df['result'].map({b'OK': 1, b'STOP': 0})
    df.iloc[:, 0] = df.iloc[:, 0].map({b'OK': 1, b'STOP': 0})
    
    DataFrame.applymap(self, func) # to whole dataFrame
    
    DataFrame.apply(self, func, axis=0, raw=False, result_type=None, args=(), **kwds)
    
    Series.map(self, arg, na_action=None) # argfunction, collections.abc.Mapping subclass or Series
    
    df.iloc[:, 2].map(lambda x: x*x) == df.iloc[:, 2].apply(lambda x: x*x)


<a id="org6656fc4"></a>

## save and load

    df.to_pickle('b')
    df: pandas.DataFrame = pandas.read_pickle('b')


<a id="orgdcfedac"></a>

### read<sub>csv</sub>

    # Имена переменных
    columns = ['age', 'workclass', 'fnlwgt', 'education', 'education-num',
               'marital-status', 'occupation', 'relationship', 'race', 'sex',
               'capital-gain', 'capital-loss', 'hours-per-week', 'native-country', 'income']
    df = pd.read_csv('adult.data', header=None, names=columns, na_values=' ?')


<a id="orgb379fa8"></a>

### json

    pd.read_json('test_data.txt') - {"Клиент":"customer_3567","Дата_заключения_контракта":"2018-05-12","Дата_закрытия_контракта":"2018-06-13","Плановая_дата_закрытия_контракта":"2018-06-13","Сумма_выдачи_по_контракту":21891},{"Клиент":"customer_39200","Дата_заключения_контракта":"2019-03-29","Дата_закрытия_контракта":"2019-04-05","Плановая_дата_закрытия_контракта":"2019-04-05","Сумма_выдачи_по_контракту":11480},{"Клиент":"customer_26509","Дата_заключения_контракта":"2019-03-29","Дата_закрытия_контракта":"2019-04-30","Плановая_дата_закрытия_контракта":"2019-04-28","Сумма_выдачи_по_контракту":2640},{"Клиент":"customer_26623","Дата_заключения_контракта":"2019-03-06","Дата_закрытия_контракта":"2019-03-29","Плановая_дата_закрытия_контракта":"2019-04-06","Сумма_выдачи_по_контракту":25038},{"Клиент":"customer_14647","Дата_заключения_контракта":"2019-03-29","Дата_закрытия_контракта":"2019-04-15","Плановая_дата_закрытия_контракта":"2019-04-15","Сумма_выдачи_по_контракту":6369},{"Клиент":"customer_29658","Дата_заключения_контракта":"2019-12-05","Плановая_дата_закрытия_контракта":"2019-12-27","Сумма_выдачи_по_контракту":24172},{"Клиент":"customer_37798","Дата_заключения_контракта":"2019-11-18","Дата_закрытия_контракта":"2019-12-05","Плановая_дата_закрытия_контракта":"2019-12-18","Сумма_выдачи_по_контракту":9867},


<a id="org3a5eb67"></a>

## NaN

выбрать

-   df.loc[df.index.isnull()]


<a id="org44187a2"></a>

### check

-   df.isnull().values.any() # true or false
-   df.isnull().sum() # кол-во по столбцам
-   df.hasna - # true or false


<a id="org7d41a7d"></a>

### replace

-   df.dropna(subset=['column<sub>name</sub>'], inplace=True)
-   df['col'].fillna(0, inplace=True)


<a id="org670791e"></a>

### drop

    df.dropna(subset=['col1', 'col2'],inplace=True) # remove rows if NaN in col1 or col2 column


<a id="org389a414"></a>

### get not na

    df = df[~df['col'].isna()]


<a id="org2ae2064"></a>

### other

    
    # MEAN
    from sklearn.preprocessing import Imputer
    # Define the values to replce and the strategy of choosing the replacement value
    imp = Imputer(missing_values="NaN", strategy="mean")
    cols = [1, 13]
    df[cols] = imp.fit_transform(applicants[cols])
    
    # REMOVE string -> NaN
    applicants[cols] = applicants[cols].apply(pd.to_numeric, errors='coerce')


<a id="org9a0dd47"></a>

## Categorical encoding


<a id="org4f6fe0d"></a>

### replace values

    df['a'] = df['a'].map({b'OK': 1, b'STOP': 0})

replace date:

    def repl_date(df_in: DataFrame):
        df = df_in.copy()  # no side effect
        for i, x in enumerate(df.iloc[0, :]):
            if isinstance(x, date):
                # print(i, type(x))
                cname = df.columns[i]
                df[cname] = df[cname].map(lambda x: x.year)
        return df


<a id="org503b213"></a>

### label encoding

    for c in label_e_columns:
        df[c] = df[c].astype('category').cat.codes
    
    # get  velues before encoding
    print(dict(enumerate(df[c].astype('category').cat.categories)))


<a id="org7de5e72"></a>

### encode binary

    df['income'] = df['income'].map({' <=50K': 0, ' >50K': 1})
    df['income'] = df['income'].notnull().astype(int)


<a id="org6e00cb3"></a>

### onehot encode

    
    df = pd.get_dummies(df, dummy_na=False)  # dummy_na=True for debug
    
    s = pd.Series(list('abca'))
    pd.get_dummies(s)
       a  b  c
    0  1  0  0
    1  0  1  0
    2  0  0  1
    3  1  0  0


<a id="org9e38e4f"></a>

## mem usage

    #Great snippet from https://www.kaggle.com/gemartin/load-data-reduce-memory-usage
    def reduce_mem_usage(df):
        """ iterate through all the columns of a dataframe and modify the data type
            to reduce memory usage.
        """
        start_mem = df.memory_usage().sum() / 1024**2
        print('Memory usage of dataframe is {:.2f} MB'.format(start_mem))
    
        for col in df.columns:
            col_type = df[col].dtype
    
            if col_type != object:
                c_min = df[col].min()
                c_max = df[col].max()
                if str(col_type)[:3] == 'int':
                    if c_min > np.iinfo(np.int8).min and c_max < np.iinfo(np.int8).max:
                        df[col] = df[col].astype(np.int8)
                    elif c_min > np.iinfo(np.int16).min and c_max < np.iinfo(np.int16).max:
                        df[col] = df[col].astype(np.int16)
                    elif c_min > np.iinfo(np.int32).min and c_max < np.iinfo(np.int32).max:
                        df[col] = df[col].astype(np.int32)
                    elif c_min > np.iinfo(np.int64).min and c_max < np.iinfo(np.int64).max:
                        df[col] = df[col].astype(np.int64)
                else:
                    if c_min > np.finfo(np.float16).min and c_max < np.finfo(np.float16).max:
                        df[col] = df[col].astype(np.float16)
                    elif c_min > np.finfo(np.float32).min and c_max < np.finfo(np.float32).max:
                        df[col] = df[col].astype(np.float32)
                    else:
                        df[col] = df[col].astype(np.float64)
            #else:
            #    df[col] = df[col].astype('category')
    
        end_mem = df.memory_usage().sum() / 1024**2
        print('Memory usage after optimization is: {:.2f} MB'.format(end_mem))
        print('Decreased by {:.1f}%'.format(100 * (start_mem - end_mem) / start_mem))
    
        return df


<a id="org437056e"></a>

## rename column

    df.columns.str.replace("original_column", "APP_SRC_REF")

may rename several columns!

-   ('doggod', 'god')
-   df.columns.str.replace("god", "war")
-   ('dogwar', 'war')

    df.rename(columns={"0":"0col", "1": "1col", 2:"2col", 3:"3col"}, inplace=True)


<a id="orgb0a93bf"></a>

## delete column

1.  

2.  df.drop('education', axis=1, inplace=True)
3.  df.drop(['education', 'fabrication'], axis=1, inplace=True)

or

-   df.drop(columns=['education', 'fabrication'], inplace=True)
-   df.drop(df.iloc[:,1:3], axis=1)
-   

-   del df['education']


<a id="orgf8a35d7"></a>

## delete row


<a id="orgfad5949"></a>

### delete NA

    df.dropna(axis='index', subset=['column1'])

    for x in ['sd', 'a2']:
      ids = df.index[(df["code"] == x) & (df["something"] == 1)]
      if len(ids) != 0:
         df.drop(ids, inplace=True)


<a id="org82e2944"></a>

### delete values that is in other df column

    import pandas as pd
    df1 = pd.DataFrame(data = {'col1' : [1, 2, 3, 4, 5, 3],
                               'col2' : [10, 11, 12, 13, 14, 10]})
    df2 = pd.DataFrame(data = {'col1' : [1, 2, 3],
                               'col2' : [10, 11, 12]})
    print(df1)
    print(df2)
    df_all = df1.merge(df2.drop_duplicates(), on=['col1','col2'],
                       how='left', indicator=True)
    print(df_all)
    print(df_all[df_all['_merge'] == 'left_only'])

       col1  col2
    0     1    10
    1     2    11
    2     3    12
    3     4    13
    4     5    14
    5     3    10
       col1  col2
    0     1    10
    1     2    11
    2     3    12
       col1  col2     _merge
    0     1    10       both
    1     2    11       both
    2     3    12       both
    3     4    13  left_only
    4     5    14  left_only
    5     3    10  left_only
       col1  col2     _merge
    3     4    13  left_only
    4     5    14  left_only
    5     3    10  left_only


<a id="org9aa1fa7"></a>

## type

automatic types

error= {‘ignore’, ‘raise’, ‘coerce’}, default ‘raise’

-   ignore - invalid parsing will return the input
-   coerce - invalid parsing will be set as NaN.


<a id="org7267b28"></a>

### types <https://numpy.org/doc/stable/reference/arrays.scalars.html>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Pandas dtype</th>
<th scope="col" class="org-left">Python type</th>
<th scope="col" class="org-left">NumPy type</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">object</td>
<td class="org-left">str or mixed</td>
<td class="org-left">string_, unicode_, mixed types</td>
</tr>


<tr>
<td class="org-left">Int64/Int32</td>
<td class="org-left">int</td>
<td class="org-left">int_, int8, int16, int32, int64, uint8, uint16, uint32, uint64</td>
</tr>


<tr>
<td class="org-left">float64</td>
<td class="org-left">float</td>
<td class="org-left">float_, float16, float32, float64</td>
</tr>


<tr>
<td class="org-left">bool</td>
<td class="org-left">bool</td>
<td class="org-left">bool_</td>
</tr>


<tr>
<td class="org-left">boolean</td>
<td class="org-left">allow NaN</td>
<td class="org-left">?</td>
</tr>


<tr>
<td class="org-left">datetime64</td>
<td class="org-left">NA</td>
<td class="org-left">datetime64[ns]</td>
</tr>


<tr>
<td class="org-left">timedelta[ns]</td>
<td class="org-left">NA</td>
<td class="org-left">NA</td>
</tr>


<tr>
<td class="org-left">category</td>
<td class="org-left">NA</td>
<td class="org-left">NA</td>
</tr>
</tbody>
</table>


<a id="orgabc4dce"></a>

### Display types

    print(df1.dtypes)
    categorial_columns = df.select_dtypes(include=["object"]).columns
    numerical_columns = df.select_dtypes(exclude=["object"]).columns
    print(data[categorial_columns].describe())
    # unique
    for c in categorial_columns:
       print(c, data[c].unique())


<a id="org8e917ee"></a>

### float to int

with NaN

    df['col'] = df['col'].round().astype('Int32')

without NaN

1.  drop or fill NaN
2.  df['col'] = df['col'].round().astype(int)


<a id="orga756204"></a>

### string to date

    df['col1'] = pd.to_datetime(df['col1'])
    df['Дата рождения клиента'] = pd.to_numeric(2021 - pd.to_datetime(df['Дата рождения клиента']).dt.year).astype('Int32')


<a id="org399e345"></a>

### Category type

object string to category:

-   .astype("category")


<a id="orgdb7edec"></a>

## if a>5 c = True else False

<https://datatofish.com/if-condition-in-pandas-dataframe/>

    df.loc[df['set_of_numbers'] <= 4, 'flag'] = 'True'
    df['flag'].fillna(False,inplace=True)


<a id="org75f41ca"></a>

## OTHER USE CASES


<a id="orgf84f74c"></a>

### dictionary for panda

    def list_to_dict(dicts: list) -> dict:
        """
        from [{col1':1, col2':3},
                {col1':2, col2':4}]
        to {'col1': [1, 2], 'col2': [3, 4]}
    
        :param dicts: list of dicts
        :return: dictionary for pandas
        """
    
        d = {}  # target {'col1': [1, 2], 'col2': [3, 4]}
        for k in dicts[0].keys():
            d[k] = []
    
        for x in dicts:
            for k in dicts[0].keys():
                d[k].append(x[k])
        return d


<a id="org9a6a4c8"></a>

### Example from dictionary to onehot

    def list_to_dict(dicts: list) -> dict:
        """
        from [{col1':1, col2':3},
                {col1':2, col2':4}]
        to {'col1': [1, 2], 'col2': [3, 4]}
    
        :param dicts: list of dicts
        :return: dictionary for pandas
        """
    
        d = {}  # target {'col1': [1, 2], 'col2': [3, 4]}
        for k in dicts[0].keys():
            d[k] = []
    
        for x in dicts:
            for k in dicts[0].keys():
                d[k].append(x[k])
        return d
    
    
    def repl_date(df_in: DataFrame):
        df = df_in.copy()  # no side effect
        for i, x in enumerate(df.iloc[0, :]):
            if isinstance(x, date):
                # print(i, type(x))
                cname = df.columns[i]
                df[cname] = df[cname].map(lambda x: x.year)
        return df
    
    
    def one_hot_p(dicts: list):
        d = list_to_dict(dicts)
        df = pd.DataFrame(d)
        df.iloc[:, 0] = df.iloc[:, 0].map({b'OK': 1, b'STOP': 0})
        df = repl_date(df)
        # print(df.to_string())
        df2 = pd.get_dummies(df)
        return df2


<a id="orgb537743"></a>

### remove meanless columns

    df.fillna(0)
    for x in df.iloc[:]:
        if df[x].min() == df[x].max():
            del df[x]


<a id="org32bf70c"></a>

### Sum two columns containing NaN values

    total = df['Jan'] + df['Feb'].fillna(0)


<a id="orgc2c87c6"></a>

### reorder columns

    # firest
    target = df.pop('first_decision_state')
    df.insert(1, 'first_decision_state', target)
    
    # second
    cols = df.columns.tolist()
    cols = cols[-1:] + cols[:-1] # last to first
    df = df[cols]


<a id="org5e9887e"></a>

### TODO remove duplicates

-   df.sort<sub>values</sub>(by=['id', 'completed<sub>at</sub>'], na<sub>position</sub>='first')
-   df.drop<sub>duplicates</sub>('id', keep='last')


<a id="orgcfbac2c"></a>

### replace missing values by groups

    df["value"] = df.groupby("name").transform(lambda x: x.fillna(x.mean()))

    df.reset_index(inplace=True, drop=True)
    shit_cols = ['pickup_day_of_week', 'geo_cluster', 'events']
    shits = []
    for shit in shit_cols:
        shits.append(pd.get_dummies(df[shit], prefix=shit, drop_first=True))
        print(pd.get_dummies(df[shit], prefix=shit))
    
    shits = pd.concat(shits, axis=1)
    print(shits.head())
    print("Сколько бинарных столбцов у вас получилось сгенерировать с помощью однократного кодирования?\n",
          len(shits.columns))
    # ['pickup_day_of_week_1', 'pickup_day_of_week_2', 'pickup_day_of_week_3', 'pickup_day_of_week_4', 'pickup_day_of_week_5', 'pickup_day_of_week_6', 'geo_cluster_1', 'geo_cluster_2', 'geo_cluster_3', 'geo_cluster_4', 'geo_cluster_5', 'geo_cluster_6', 'geo_cluster_7', 'geo_cluster_8', 'geo_cluster_9', 'events_None', 'events_Rain', 'events_Snow']
    df = pd.concat([df.drop(columns=shit_cols), shits], axis=1)


<a id="org687b2d0"></a>

### add count of occurences column

    df['count'] = df.groupby('Col1')['Col1'].transform('size')


<a id="orgc7c1e84"></a>

## troubleshooting

    df['binary'][0] = 23

SettingWithCopyWarning: rewrite:

    df.loc[0, 'binary'] = 23
    df.loc[:, c] = pd.Series([2,3,4,])


<a id="org1407c1d"></a>

## pandas vs SQL

    df[(df.col1 > 5 ) & (df.col2 < 10)]
    SELECT * FROM table WHERE col1 > 5 AND col2 < 10;

    df.groupby('col1').size()
    SELECT col1, COUNT(*) FROM table GROUP BY col1;

    df.groupby('col1')['col2'].sum()
    SELECT col1, SUM(col2) FROM table GROUP BY col1;

    df.sort_values(by='col1', ascending=False)
    SELECT * FROM table ORDER BY col1 DESC;

inner:

    pd.merge(df1, df2, on='id')
    SELECT * FROM table1 JOIN table2 ON table1.id=table2.id;

    pd.merge(df, df2, on='id', how='left')
    SELECT * FROM table1 LEFT JOIN table2 ON table1.id=table2.id;

    df['col1'].nunique()
    SELECT COUNT(DISTINCT col1) FROM table;

    df.rename(columns={'old_name': 'new_name'})
    ALTER TABLE table RENAME COLUMN old_name TO new_name;

    df['new_column'] = value
    ALTER TABLE table ADD COLUMN new_col INT;

    df['col1'].fillna(0)
    SELECT COALESCE(col1, 0) FROM table;

    df['col1'] - df['col2']
    SELECT col1 - col2 FROM table

    df['col1'] + df['col2']
    SELECT CONCAT(col1, col2) FROM table;

    df['date_col'].dt.year
    SELECT YEAR(date_col) FROM table;

    df[df['date_col'].str.contains('pattern')]
    SELECT * FROM table WHERE col1 LIKE '%pattern%';

moving average

    df['col2'].rolling(window=3).mean()
    SELECT col1, AVG(col2) OVER ( ORDER BY col1 ROWS BETWEEN 2 PRECEDING AND CURRENT ROW ) FROM table;

row with max value in a column

    df.col[df['col1'].idmax()]
    SELECT * FROM table ORDER BY col1 DESC LIMIT 1;

    df.drop_duplicates()
    DELETE FROM table WHERE rowid NOT IN ( SELECT MIN(rowid) FROM table GROUP BY col1, col2);

    df[df['col1'].isnull()]
    SELECT * FROM table WHERE col1 IS NULL;

    df.dropna()
    DELETE FROM table WHERE col1 IS NULL;

    df['col3'] = df['col2'].apply(lambda x:'High' if x > 10 else 'Low')
    SELECT col1, CASE WHEN col2 > 10 THEN 'High' ELSE 'Low' END AS col3 FROM table;

    df.loc[len(df)] = [val1, val2]
    INSERT INTO table (col1, col2) VALUES (val1, val2);

    df.loc[df['col2'] == val2, 'col1'] = val1
    UPDATE table SET col1 = val1 WHERE col2 = val2;


<a id="org524789d"></a>

## gentoo extensions

    * Install additional packages for optional runtime features:
    *   dev-python/bottleneck for accelerating certain types of NaN evaluations, using specialized cython routines to achieve large speedups.
    *   >=dev-python/numexpr-2.1 for accelerating certain numerical operations, using multiple cores as well as smart chunking and caching to achieve large speedups
    *   dev-python/blosc for for msgpack compression using blosc
    *   dev-python/matplotlib for Plotting support
    *   >=dev-python/openpyxl-3.0.10 for Needed for Excel I/O
    *   dev-python/xlsxwriter for Needed for Excel I/O
    *   dev-python/xlrd for Needed for Excel I/O
    *   dev-python/xlwt for Needed for Excel I/O
    *   >=dev-python/tables-3.7.0 for necessary for HDF5-based storage
    *   dev-python/rpy2 for R I/O support
    *   dev-python/statsmodels for Needed for parts of pandas.stats
    *   dev-python/scipy for miscellaneous statistical functions


<a id="org10ed90e"></a>

# xlsx Excel file loading

-   openpyxl <https://openpyxl.readthedocs.io/en/stable/usage.html>


<a id="org00c0a39"></a>

## partially loading - no solution

<https://openpyxl.readthedocs.io/en/latest/optimized.html>


<a id="orgc521911"></a>

# h5py

emerge dev-python/h5py

**Groups** work like dictionaries, and **datasets** work like NumPy arrays.


<a id="org8dbdaff"></a>

## Dataset object

**datasets** support operations:

-   compression
-   error-detection
-   chunked I/O

attributes:

-   shape
-   size
-   ndim
-   dtype
-   nbytes


<a id="orgffe706f"></a>

## terms

-   **datasets:** array-like collections of data
-   **groups:** folder-like containers that hold datasets and other groups


<a id="org7a5caff"></a>

## open

-   h5py.File() - acts like a Python dictionary


<a id="org77d9832"></a>

## usage

    import h5py
    
    f = h5py.File('mytestfile.hdf5', 'r')


<a id="org24d258a"></a>

## links

<https://docs.h5py.org/en/stable/>


<a id="org56a177b"></a>

# DVC

fetch data from external, codify data/models and reproducible pipelines.


<a id="org029b656"></a>

## features:

-   allow to download data from supported sources and keep hash of files.
-   versioning through codification - metafiles describing: datasets, ML artifacts, etc. to track.
-   allow to create pipiline, fix input and outputs, allow to avoid reruns.
-   DVCLive tool for experiment tracking
-   allow to create development server with shared and cached data, chached data may be shared between projects.

allow

-   Data validation: for example, validation against a schema or verifying pipeline consistency — correct
    shapes, data types, etc.
-   Model validation: for example, input/output and performance validation — all dependencies present for
    inference to run, and model scores within thresholds.


<a id="org38c0d19"></a>

## problem

to track and storing it in Git

-   large datasets
-   machine learning models - binary


<a id="orga290d56"></a>

## terms

-   **data registry:** git + dvc repository - for versioning of data and model files. The data itself is stored in
    one or more *DVC remotes*
-   **DVC remotes:** similar to Git remotes, used with *dvc push* and *dvc pull* commands. To add: *dvc remote* to .dvc/config.
-   **stage:** processing step of pipeline.  allow connecting code to its corresponding data input/dependencies and output.
-   **dependencies:** input for a stage. specified as paths in the dev field of ".dvc". Stages are invalidated
    (considered outdated) when any of their dependencies change.
    -   <https://dvc.org/doc/user-guide/data-management/remote-storage#supported-storage-types>
-   **output:** result of stage, tracked by DVC.
-   **parameters:** granular dependencies of stage, such as "batch size", DVC can track any key/value pair in a supported
    parameters file (params.yaml by default)
-   **metrics:** feature of "experiments" - allow compare results.
-   **cache:** hidden storage .dvc/cache


<a id="orga0e7198"></a>

## steps

-   **dvc init** # running  inside a Git project
-   **git commit -m "dvc init"**


<a id="org44da7b3"></a>

### data:

way 1) git source

-   looks like it download file: dvc get <https://github.com/iterative/dataset-registry> get-started/data.xml -o data/data.xml
-   **dvc add** to start tracking the dataset file. create: data/data.xml.dvc. Same to git add.
-   **git add data/data.xml.dvc data/.gitignore**
-   git commit -m "Add raw data"

way 2) local directory

-   mkdir /tmp/dvcstore
-   dvc remote add -d myremote /tmp/dvcstore

Now we have

1.  file data/data.xml
2.  in .gitignore record for this file
3.  data/data.xml.dvc - hash

**dvc checkout** to sync data into your workspace


<a id="org1ab435d"></a>

### pipelines

abstract:

1.  virtualenv venv && echo "venv" > .gitignore
2.  source venv/bin/activate
3.  pip install -r src/requirements.txt

actual:
.4) Create stage:

    dvc stage add -n prepare \
                    -p prepare.seed,prepare.split \
                    -d src/prepare.py -d data/data.xml \
                    -o data/prepared \
                    python src/prepare.py data/data.xml

generate **dvc.yaml** file, it have:

-   command that will be run: python src/prepare.py data/data.xml
-   -d - for dependencies
-   -o - output
-   -p - parameter, such as "batch size"

.5) **dvc repro** - run the pipeline. **dvc.lock** (a "state file") was created to capture the reproduction's
 results, that should be added to git.

-   automatically determines which parts of a project need to be run

.6) we can use **dvc stage add -d data/prepared** - to create chain.

.7) **dvc dag** - visualize chain of stages
.8) **dvc params diff** - show differences between iterations of pipeline. also there is **metrcis diff** and **ptots diff**


<a id="orgd38c299"></a>

## CML - Continuous Machine Learning

orchestration, testing and monitoring.

-   manage ML experiments, track who trained ML models or modified data and when.
-   Auto-generate reports with metrics and plots
-   Build your own ML platform using just GitHub or GitLab and your favorite cloud services: AWS, Azure, GCP, or
    Kubernetes. No databases, services or complex setup needed.

links

-   <https://github.com/iterative/cml>
-   <https://cml.dev/doc>


<a id="org21a5128"></a>

## links

-   <https://github.com/iterative/dvc>
-   <https://dvc.org/doc>
-   <https://dvc.org/doc/get-started>


<a id="orgc14e543"></a>

# matplotlib

-   <https://matplotlib.org/3.1.0/tutorials/introductory/pyplot.html>


<a id="org09d08a0"></a>

## base

    ax: Axes = None
    fig, ax = plt.subplots(1,1, figsize=(19,10))
    plt.subplots_adjust(left=0.076, right=0.96, bottom=0.04, top=0.96, wspace=0.30, hspace=0.7) # if more than one
    plt.plot(.., legend='line1')
    title="graph"
    fig.suptitle('test title', fontsize=20)
    plt.suptitle('test title', fontsize=20) #?
    plt.title('Title!', {'fontsize':20})
    plt.rc('font', size=6) # set font size
    plt.legend() # add line descriptions
    fig.subplots_adjust(left=0.4, bottom=0.4)
    plt.tight_layout() # corret top, left, bottom, right automatic
    plt.show() # or plt.savefig('name')
    plt.savefig(title)
    # horizontal line
    plt.axhline(y = 2, color = 'r', linestyle = 'dashed', label = "red line")
    # vertical line
    plt.axvline(x = 7, color = 'b', label = 'axvline - full height')
    
    plt.close()
    
    plt.yticks(range(1,10)) # шкала слева
    as.set_xlim(left=3) # шкалировать от 3


<a id="org36b13e1"></a>

## subplot or multiple diagram in one window

    import matplotlib.pyplot as plt
    fig = plt.figure(figsize=(2,2))
    d1: AxesSubplot = fig.add_subplot(1, 2, 1)   #1 row 2 columns - left
    d2: AxesSubplot = fig.add_subplot(2, 2, 2)   #2x2 - top right
    d3: AxesSubplot = fig.add_subplot(2, 2, 4)   #2x2 - bottom right
    plt.show()
    
    d: AxesSubplot = fig.add_subplot(121)   # equal to 1, 2, 1
    
    fig.tight_layout() # create spaces to allow set_title for graphics
    
    # -- define grid more precisely with rations
    # gs = fig.add_gridspec(nrows=2, ncols=2,
    #                       width_ratios=((1,)), # ncols length
    #                       height_ratios=(1,1), # nrows
    #                       left=0.1, right=0.1, bottom=0.1, top=0.9,
    #                       wspace=0.1, hspace=0.1)
    # ax = fig.add_subplot(gs[1, 0])
    # ax.hist(x, bins=bins1)


<a id="orgd71064b"></a>

## x axis labels range

    import matplotlib.ticker as plticker
    loc = plticker.MultipleLocator(base=50)
    ax.xaxis.set_major_locator(loc)


<a id="orgda3b72a"></a>

## Matplotlib is currently using agg, which is a non-GUI backend, so cannot show the figure.

matplotlib.use


<a id="org33284fb"></a>

### TkAgg

    import matplotlib
    matplotlib.use('TkAgg')

Tkinter is a Python binding to the Tk GUI toolkit. It is the standard Python interface to the Tk GUI
toolkit, and is Python's de facto standard GUI.

Gentoo: included with standard Linux

Gentoo: USE="tk"


<a id="org70b70f6"></a>

### GTK3Agg

Xfce4 - GTK-based

-   find out GTK version: dpkg -l libgtk\* | grep -e '<sup>i</sup>' | grep -e 'libgtk-\*[0-9]'
-   find out glib version: ldd &#x2013;version
-   apt install libglib2.0-dev
-   apt install libgirepository1.0-dev
-   apt install libcairo2-dev
-   apt install python3-dev
-   pip install pycairo
-   apt-get install libgtk-3-dev
-   pip3 install PyGObject &#x2013;user

    import matplotlib
    matplotlib.use('GTK3Agg')


<a id="org727c064"></a>

## usage

    from matplotlib import pyplot as plt
    
    # time sequence
    plt.plot(range(len(a)), a)
    plt.show()
    
    # time sequence - голубыми Точками
    plt.plot(range(len(a)), a, 'bo')
    plt.show()
    
    # Histogram - distribution of numerical data
    # бакет - дискретный интервал разбиения
    N = 100
    noise = np.random.normal(loc=0.0, scale=1.0, size=(N, 1))
    plt.hist(noise, bins='auto', density=True)
    plt.show()
    
    
    # Scatter - y=f(x) в виде точек, где x не по порядку.
    plt.scatter(x_np, y_rows)
    plt.show()
    
    # В виде линии
    res = sorted(zip(x_np,y_rows) , key=lambda k: k[0]) # сортируем по x
    x, y = zip(*res) # unzip
    plt.plot(x, y)
    plt.show()
    
    
    #matr_my - shape=(50,512) - value=[0;1] в виде спектра.
    
    plt.pcolormesh(matr_my, cmap='RdBu')
    plt.xlabel('Depth')
    plt.xlim((0, 512))
    plt.ylabel('Position')
    plt.colorbar()
    plt.show()


<a id="org20e6e5f"></a>

## do not close

    plt.close()
    plt.plot()
    plt.draw()
    plt.pause(0.0001)


<a id="orgb7e7701"></a>

## Multiple Curves

    import matplotlib.pyplot as plt
    x = [0,1,2,3,4]
    y1 = [2,3,5,7,8]
    y2 = [2, 3, 7, 7, 8]
    plt.plot(x, y1, label = "1")
    plt.plot(x, y2, label = "2")
    plt.show()


<a id="org761bac4"></a>

## two windows with separate legend

    x = [0, 1, 2, 3, 4]
    y1 = [2, 3, 5, 7, 5]
    y2 = [2, 3, 7, 7, 8]
    
    import matplotlib.pyplot as plt
    plt.figure()
    ax = plt.gca()
    plt.plot(x, y1, label="1")
    plt.plot(x, y2, label="2")
    
    plt.figure()
    plt.plot(x)
    plt.figlegend(*ax.get_legend_handles_labels(), loc='upper left')
    plt.show()


<a id="org2986659"></a>

## custom histogram

    # get hist
    counts, edges = np.histogram(A, bins=10, range=(0,10))
    
    bincenters = 0.5 * (edges[1:] + edges[:-1])
    spline = make_interp_spline(bincenters, counts, k=k)
    
    # that is how to loop edges
    for pair in zip(binEdges[:-1], binEdges[1:]):
            low, high = pair
    
    # back to data
    A = np.repeat(edges[:-1], counts)


<a id="org12f0bc6"></a>

## rotate x ticks

    plt.xticks(rotation=10)


<a id="orge0f1b22"></a>

## CASES


<a id="orgdc96cb8"></a>

### TODO bar plot with two y axes


<a id="org51b4e33"></a>

### varible in time

    plt.plot_date(df['date'],df['x])
    plt.show


<a id="orgd97b2ce"></a>

### example plot grid

    _, axs = plt.subplots(10, len(reflectivity), figsize=(20, 20))
    for index in range(len(reflectivity)):
        for row in range(10):
            if index == 0:
                axs[row, index].set_ylabel(f'{row + 1} км')
            axs[row, index].imshow(reflectivity[index, row])
        axs[0, index].set_title(timestamps[index])


<a id="org77af0df"></a>

# pygal

installation:

-   media-gfx/cairosvg - for PNG output
-   dev-python/pygal


<a id="orgfdb51ff"></a>

## boxes

    import pygal
    box_plot = pygal.Box()
    box_plot.title = 'V8 benchmark results'
    box_plot.add('Chrome', [6395, 8212, 7520, 7218, 12464, 1660, 2123, 8607])
    box_plot.add('Firefox', [7473, 8099, 11700, 2651, 6361, 1044, 3797, 9450])
    box_plot.add('Opera', [3472, 2933, 4203, 5229, 5810, 1828, 9013, 4669])
    box_plot.add('IE', [43, 41, 59, 79, 144, 136, 34, 102])
    box_plot.render_to_png('./autoimgs/python-ds-pygal-hello.png')

![img](./autoimgs/python-ds-pygal-hello.png)


<a id="org01e7cee"></a>

## several separate

    from PIL import Image
    import pygal
    
    # Create your plots
    line_chart = pygal.Line()
    line_chart.title = 'Line Chart'
    line_chart.x_labels = ['A', 'B', 'C']
    line_chart.add('Series 1', [1, 2, 3])
    line_chart.add('Series 2', [4, 5, 6])
    line_chart.render_to_png('/tmp/line_chart.png')
    
    bar_chart = pygal.Bar()
    bar_chart.title = 'Bar Chart'
    bar_chart.x_labels = ['A', 'B', 'C']
    bar_chart.add('Series 1', [1, 2, 3])
    bar_chart.add('Series 2', [4, 5, 6])
    bar_chart.render_to_png('/tmp/bar_chart.png')
    
    # Open the images
    img1 = Image.open('/tmp/line_chart.png')
    img2 = Image.open('/tmp/bar_chart.png')
    
    # Combine the images horizontally
    combined_img = Image.new('RGB', (img1.width + img2.width, max(img1.height, img2.height)))
    combined_img.paste(img1, (0, 0))
    combined_img.paste(img2, (img1.width, 0))
    
    # Save the combined image
    combined_img.save('./autoimgs/python-ds-pygal-sevaral.png', 'PNG')

![img](./autoimgs/python-ds-pygal-sevaral.png)


<a id="org4910913"></a>

# seaborn

<https://images.datacamp.com/image/upload/v1676302629/Marketing/Blog/Seaborn_Cheat_Sheet.pdf>


<a id="org66f2066"></a>

# SciPy

adds more MATLAB-like functionality and Matplotlib is a plotting package that provides MATLAB-like plotting functionality


<a id="orgc132aa8"></a>

## hierarchical lustering


<a id="org2cad5fa"></a>

### distance and squareform

pdist - Pairwise distances between observations

    >> array([0., 2., 2.])

squarefor - returns a symmetric matrix where Z(i,j) corresponds to the pairwise distance between observations i and j

dist:

    from scipy.spatial.distance import squareform
    from scipy.spatial.distance import pdist
    d = pdist([[1,2],[1,2], [3,2]])
    print(d)
    print()
    sq = squareform(d)
    print(sq)

here:  [0. 0. 2.] (1) - distances between first observation and first, second, third observation


<a id="orgbf7b8de"></a>

### linkage

-   hierarchical/agglomerative <https://docs.scipy.org/doc/scipy/reference/generated/scipy.cluster.hierarchy.linkage.html#scipy.cluster.hierarchy.linkage>
-   very similar to the MATLAB linkage function <https://www.mathworks.com/help/stats/linkage.html>
-   better to print with:

    [print(i+len(df), x) for i, x in enumerate(l)]

At the i-th iteration, clusters with indices Z[i, 0] and Z[i, 1] are combined to form cluster n + i.

-   i-th row - iteration
-   0 and 1 - cluster numbers or observation number if x<n
-   2 - is a distance between 0 and 1
-   Z[i, 3] represents the number of original observations in the newly formed cluster

format:


<a id="org55097c2"></a>

### dendrogram

to see **count of observatins in clusters** - set truncate<sub>mode</sub>='level' and p=1.1 to level.

    from matplotlib import pyplot as plt
    dendrogram(Z=l, p=1.1, truncate_mode='level', labels=df.index, count_sort=False, distance_sort=False, orientation='right', leaf_font_size=15)
    plt.show()


<a id="orgc3f3fc3"></a>

### cophentic correlation

pearson correlation


<a id="org884d676"></a>

# Scikit-learn

-   based on numpy and SciPy
-   scikit-learn can be classified as a tool in the "Machine Learning Tools" category, while SciPy is grouped
    under "Data Science Tools".


<a id="org914c11d"></a>

## history

-   2007 begin
-   2010 first release


<a id="orgdb77f8a"></a>

## fast feature selection

-   <https://scikit-learn.org/stable/modules/feature_selection.html#univariate-feature-selection>
-   For regression: f<sub>regression</sub>, mutual<sub>info</sub><sub>regression</sub>
-   For classification: chi2, f<sub>classif</sub>, mutual<sub>info</sub><sub>classif</sub>
-   sparse data: chi2, mutual<sub>info</sub><sub>regression</sub>, mutual<sub>info</sub><sub>classif</sub> will deal with the data without making it dense.

    from sklearn.feature_selection import SelectKBest
    from sklearn.feature_selection import f_regression # or chi
    selector = SelectKBest(f_regression, k=25)
    X_new = selector.fit_transform(X, y)
    names = X.columns.values[selector.get_support()]
    scores = selector.scores_[selector.get_support()]
    names_scores = list(zip(names, scores))
    print("Укажите признаки, которые вошли в список отобранных:")
    [print(x) for x in names_scores]


<a id="orgdddc49e"></a>

## sklearn.tree.DecisionTreeClassifier

1.  the algorithm chooses a feature and makes a split
2.  looks at the subsets and measures their impurity using the (gini,entropy) score (impurity)
3.  for multiple thresholds and determines that the best split for the given feature
4.  repeat for all features and nodes
5.  from root to leaves


<a id="org21d3ada"></a>

### usage

    test = 0  # matrix.shape[0] // 3
    train = int(matrix.shape[0] - test)
    
    data_train = matrix[:train, 1:].copy()  # 11 column - labels
    labels_train = matrix[:train, 0].copy()  # 11 column - labels
    # print(labels_train)
    data_test = matrix[train:, 1:].copy()  # 11 column - labels
    labels_test = matrix[train:, 0].copy()  # 11 column - labels
    
    print(data_train.shape)
    print(data_test.shape)
    print(labels_train.shape)
    
    models = []
    # DecisionTreeClassifier ------------------------------
    from sklearn.tree import DecisionTreeClassifier
    
    data_train[np.isnan(data_train)] = -1  # replace nan
    data_train_orig = data_train.copy()
    
    model = DecisionTreeClassifier(random_state=42,
                                       # функция для impurity ('gini' или 'entropy')
                                       criterion='gini',
                                       # максимальная глубина дерева
                                       max_depth=3,
                                       # минимальное число элементов в узле для разбиения (может быть долей)
                                       min_samples_split=5,
                                       # минимальное число элементов в листе (может быть долей)
                                       min_samples_leaf=2,
                                       # минимальное значение дельты impurity
                                       # min_impurity_decrease=0,
                                       # веса для классов (можно дополнительно штрафовать за ошибку в нужных классах).
                                       # поддерживает опцию 'balanced'.
                                       class_weight=None,
                                       # предварительная сортировка.
                                       # ускоряет обучение на данных небольшого размера или с ограниченной глубиной дерева.
                                       # иначе замедляет обучение.
                                       presort=False
                                       )
    
        # Обучаем модель
        data_train[np.isnan(data_train)] = -1
        model.fit(data_train, labels_train)
    
        # delete feature
        parent_feature = model.feature_importances_.argmax()  # 0...
        print(parent_feature)
        data_train[:, parent_feature] = np.zeros(data_train.shape[0])  # (0...
    
        from IPython.display import Image
        from sklearn.tree import export_graphviz
        from subprocess import call
    
        export_graphviz(model,
                        out_file='tree.dot',
                        # задать названия фич
                        # feature_names=X.columns,
                        class_names=None,
                        # показывать названия полей у численных значений внутри узла
                        label='all',
                        # раскрашивать узлы в цвет преобладающего класса
                        filled=True,
                        # показывать значение impurity для каждого узла
                        impurity=True,
                        # показывать номера узлов
                        node_ids=True,
                        # Показывать доли каждого класса в узлах (а не количество)
                        proportion=True,
                        # Повернуть дерево на 90 градусов (вертикальная ориентация)
                        rotate=False,
                        # Число точек после запятой для отображаемых дробей
                        # precision=3
                        )
    
        # Преобразуем файл tree.dot в tree.png
        call(['dot', '-Tpng', 'tree.dot', '-o', 'tree.png'])
        # Вставляем картинку в блокнот
        # Image("tree.png")
    
        # data_test[np.isnan(data_test)] = -1
        test_result = model.predict(data_train_orig)
    
        # RESULT
        auc = sklearn.metrics.roc_auc_score(labels_test, test_result)
    
        gini = 2 * auc - 1


<a id="org3c50cb3"></a>

## Tuning the hyper-parameters <https://scikit-learn.org/stable/modules/grid_search.html>

-   GridSearchCV - Exhaustive Grid Search,  all parameter combinations
    -   HalvingGridSearchCV - evaluating all the candidates with a small amount of resources and iteratively selects the best candidates, using more and more resources.
-   RandomizedSearchCV - given number of candidates
    -   HalvingRandomSearchCV -

SH is an iterative selection process where all candidates (the parameter combinations) are evaluated with a
 small amount of resources at the first iteration.  the resource is

-   the number of training samples
-   arbitrary numeric parameter such as **n<sub>estimators</sub>** in a **random forest**.

parameters

-   **factor** (> 1) - each iteration, the number of resources per candidate is multiplied, candidates is divided

(3 usually works well)

-   HalvingRandomSearchCV: **aggressive<sub>elimination</sub>=True** can also be used if the number of available resources is
    small.

RandomizedSearchCV vs GridSearchCV <https://analyticsindiamag.com/why-is-random-search-better-than-grid-search-for-machine-learning/>


<a id="orgfac1e9e"></a>

## feature importance

    from sklearn.ensemble import GradientBoostingRegressor
    dt = GradientBoostingRegressor()
    indices = np.argsort(dt.feature_importances_)[::-1]  # sort indexes
    print(indices)
    for i in range(len(X_column_names)):  # первые 100
        print("%d. %s (%f)" % (i + 1, X_column_names[indices[i]], dt.feature_importances_[indices[i]] / 100))


<a id="org8bc0b33"></a>

## Encoders - sklearn.preprocessing.\*

-   OrdinalEncoder
-   OneHotEncoder -
    -   min<sub>frequency</sub>=0.5 - all values that have < min<sub>frequency</sub> will be as 'others' column
-   TargetEncoder - target mean with the target mean conditioned on the value of the category, good for features
    with high cordinality and hight correlation with target. Shuffle by default, use internal cross-fitting.


<a id="org8432131"></a>

## suppress warnings

    import warnings
    warnings.filterwarnings("ignore", category=Warning)
    from sklearn.metrics import precision_score
    y_true = [0, 1, 2, 0, 1, 2]
    y_pred = [0, 2, 0, 0, 0, 0]
    print(precision_score(y_true, y_pred, average='macro'))

    0.13333333333333333


<a id="org74f759d"></a>

# TODO statsmodels

used in econometrics, generalised-linear models, time-series-analysis, statistical hypothesis testing, and
 regression models for "rigorous statistics", for explanatory analysis


<a id="org1c7b1f3"></a>

# TODO RAPIDS

GPU accelerated data science


<a id="org01ec25d"></a>

# TensorFlow (TF)

-   лекция <https://www.youtube.com/watch?v=sTkUjqsjs00>
-   tutorial <https://www.tensorflow.org/tutorials/>
-   guide <https://www.tensorflow.org/guide/>
-   lections pdf <http://web.stanford.edu/class/cs20si/lectures/>

Apache 2.0

-   разработанная компанией Google
-   used for machine learning applications such as neural networks
-   Создается вычислительный граф. - Графовый фреймворк

‐ Cleverhans - фреймворд чтобы атаковать и защищать модели??

-   Lucid - визуализировать

-   define computation graph - позволяет автоматическое дифференцирование
    -   Nodes - operators, varibles, constants
    -   Edges - tensors


<a id="orgf1fe98c"></a>

## history

2.4.0

-   MultiWorkerMirroredStrategy - no longer experimental
-   TensorFlow Profiler now supports profiling \`MultiWorkerMirroredStrategy\`


<a id="orgb9e580b"></a>

## terms

-   **batch:** weights and biases are only updated after all of the inputs and targets are presented
-   **epoch:** is one single pass over the entire training set
-   **train<sub>step</sub>:** function that is called by fit() for every batch of data. Execute Forward pass with
    tf.GradientTape(). Return a dict mapping metric names to current value.
-   **Operations (Ops):** high level operation on Tensor.
-   **Kernel:** implementation of an op tied to specific hardware/platform. Some ops have a one-to-one mapping
    from op to kernel while other ops use multiple kernels.
-   **Gradient / GradFunc:** The ‘backward mode’ definition of an op/kernel that computes the derivative of that
    function with regards to some input.


<a id="org79fd108"></a>

## Features:

-   Stable
-   Well-documented sources
-   Flexibility
-   Portability
-   Scalability
-   Popularity

Cons:

-   Невозможно обучать распределенно
-   Метрический тензор нельзя запрограммировать


<a id="org081e46d"></a>

## hello world

    import tensorflow as tf
    import timeit
    
    # -- set device manually
    try:
        gpus = tf.config.experimental.list_physical_devices('GPU')
        tf.config.set_visible_devices(gpus[0], 'GPU')
        logical_gpus = tf.config.list_logical_devices('GPU')
    except RuntimeError as e:
        print(e)
    
    # -- eager execution
    # Note:  steps through all of the program operations, needed or not.
    a = tf.Variable([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]], trainable=False)
    b = tf.Variable([[1.0, 2.0, 3.0]], trainable=False)
    k = a * b
    print(k)
    # -- graph execution
    # Note: graph execution enables portability outside Python and tends to offer better performance
    # consist of: tf.Operation objects, which represent units of computation; and tf.Tensor objects, which represent the units of data that flow between operations
    # using graph directly is depricated
    # Graph execution only executes the operations necessary to produce the observable effects, which includes:  "Non-strict execution"
    
    x = tf.random.uniform(shape=[10, 10], minval=-1, maxval=2, dtype=tf.dtypes.int32)
    
    def power(x, y):
      result = tf.eye(10, dtype=tf.dtypes.int32)
      for _ in range(y):
        result = tf.matmul(x, result)
      return result
    
    print("Eager execution:", timeit.timeit(lambda: power(x, 100), number=1000), "seconds")
    
    power_as_graph = tf.function(power)
    print("Graph execution:", timeit.timeit(lambda: power_as_graph(x, 100), number=1000), "seconds")


<a id="org185a115"></a>

## deployment

-   TensorFlow Serving - models on servers, be them in-house or on the cloud, and is used within the TensorFlow
    Extended (TFX) end-to-end Machine Learning platform.
    -   deploy with static API.
    -   tightly integrated with **Google Cloud** via **Vertex AI** and integrates with Kubernetes and Docker.
    -   Android and iOS, as well as microcontrollers (ARM with Bazel or CMake) and embedded Linux (e.g. a Coral device)
-   TensorFlow Lite - on mobile or IoT/embedded devices

TFLite  addresses 5 constraints for on-device Artificial Intelligence:

-   latency, connectivity, privacy, size, and power consumption


<a id="org107febc"></a>

## ecosystem

-   TensorFlow Hub <https://www.tensorflow.org/hub>
    -   <https://www.tensorflow.org/hub/tutorials>
    -   <https://tfhub.dev/s?subtype=module%2Cplaceholder>
-   Model Garden - source code for Hub models - Models and examples built with TensorFlow <https://github.com/tensorflow/models>
    -   the source code for SOTA models available
-   Extended (TFX) TensorFlow's end-to-end platform for model deployment. <https://www.tensorflow.org/tfx>
    -   can use Apache Airflow/Beam or Kubernetes for orchestration
    -   tightly integrated with Google Cloud and can be used with Vertex AI Pipelines.
-   Vertex AI -  Google Cloud’s unified Machine Learning platform
    -   seeks to unify services into one platform
        -   GCP <https://cloud.google.com/>,
        -   AI Platform <https://cloud.google.com/ai-platform/docs/technical-overview>
        -   AutoML <https://cloud.google.com/automl?ref=assemblyai.com>
-   MediaPipe  framework for building multimodal, cross-platform applied Machine Learning pipelines <https://mediapipe.dev/> <https://google.github.io/mediapipe/>
-   Coral - local AI - offers an array of hardware products
    -   powerful Raspberry Pis  with Edge TPUs
-   TensorFlow.js -  JavaScript library -  to train and deploy models both in the browser and server-side with Node.js
-   Cloud - allows you to connect your local environment to Google Cloud -  <https://www.tensorflow.org/cloud>
-   Colab
-   Datasets <https://research.google/tools/datasets/?ref=assemblyai.com>


<a id="orgbb7ac0c"></a>

## layours

-   tf.Module - is the base class for both tf.keras.layers.Layer and tf.keras.Model
-   tf.keras.layers.Layer
-   tf.keras.Model


<a id="orgf72e829"></a>

## Eager vs Grapth execution

Eager

-   evaluate operations immediately
-   do not build graphs
-   operations return actual values instead of graphs to run later

Graph @tf.function, tf.Graph

-   to accelerate your models.
-   Graph - set of tf.Operation objects, which represent units of computation; and tf.Tensor objects, which
    represent the units of data that flow between operations.
-   can be saved, run, and restored all without the original Python code.
-   By default, Model.fit() we will attempt to compile your model to a static graph


<a id="org2a8c4ce"></a>

### links

-   <https://towardsdatascience.com/eager-execution-vs-graph-execution-which-is-better-38162ea4dbf6>

Tensorflow:

-   eager <https://www.tensorflow.org/guide/autodiff>
-   graph <https://www.tensorflow.org/guide/intro_to_graphs>


<a id="org897d166"></a>

## TF 2.0

-   <https://www.tensorflow.org/guide/effective_tf2?hl=ru>
-   <https://medium.com/tensorflow/effective-tensorflow-2-0-best-practices-and-whats-changed-a0ca48767aff>
-   Chinese <https://tf.wiki/en/basic/tools.html#graph-execution-mode-tf-function>
    -   <https://github.com/snowkylin/tensorflow-handbook/blob/3ee1d0fdb6518a08b2e9fbb7353ace2d3110bd4b/docs/_static/code/zh/savedmodel/custom/train_and_export.py>

API:

-   tf.keras - High level API
-   Eager Execution By Default with "Gradient Tape". For optimization require @tf.function
    <https://www.tensorflow.org/guide/eager>
    -   keras API Model subclassing <https://www.tensorflow.org/guide/keras/custom_layers_and_models>

-   tf.data is going to replace tf.placeholders
-   No more tf.Session()


<a id="org3f5b814"></a>

### tf.GradientTape API

for automatic differentiation using "reverse mode differentiation"

-   resources held by a GradientTape are released as soon as GradientTape.gradient() method is called
-   Trainable variables (created by tf.Variable or tf.compat.v1.get<sub>variable</sub>, where trainable=True is default in both cases) are automatically watched.
-   at least one of inputs is being "watched".

    with tf.GradientTape() as g:
      g.watch(x)
      y = x * x
    dy_dx = g.gradient(y, x)


<a id="orgabc9d17"></a>

### tf.function

-   <https://github.com/tensorflow/community/blob/master/rfcs/20180918-functions-not-sessions-20.md>

TensorFlow graphs require static dtypes and shape dimensions. tf.function keeps a cache of concrete functions
generated by tracing.

trace<sub>cache</sub><sub>key</sub> as function of datatype and shape of every Tensor argument and tf.device() scope. For a Python
primitive is its value. Key is used to determine if a new graph needs to be created or if a previously created graph can be invoked.

Nones:

-   Can only use Tensors arguments.
-   runs all stateful operations (e.g. tf.print)

Argumets must be either:

-   Tensor (ndarrays are converted to the equivalent Tensor)
-   list of Tensor
-   arbitrary Python value

The main takeaways and recommendations are:

-   Don't rely on Python side effects like object mutation or list appends.
-   tf.function works best with TensorFlow ops, rather than NumPy ops or Python primitives.
-   When in doubt, use the for x in y idiom.

1.  wrap function

    <https://www.tensorflow.org/api_docs/python/tf/compat/v1/wrap_function>
    
    tf.compat.v1.wrap<sub>function</sub>
    
    -   do not runs all stateful operations (e.g. tf.cond)
    -   only trace the Python function once
    
        from tensorflow_core.python.eager.wrap_function import WrappedFunction, VariableHolder, wrap_function
        wf:WrappedFunction = wrap_function(f)
    
        class WrappedFunction(function.ConcreteFunction):
        """Callable object encapsulating a function definition and its gradient.

2.  AutoGraph включен в tf.function

    для преобразования if и for в tf.cond и tf.while.


<a id="orgc3430ff"></a>

### migrate 1 to 2

-   <https://www.tensorflow.org/guide/migrate?hl=ru>
-   2017 stratch <https://ai.googleblog.com/2017/10/eager-execution-imperative-define-by.html>
-   <https://colab.research.google.com/github/tensorflow/docs/blob/master/site/en/guide/migrate.ipynb>

import tensorflow.compat.v1 as tf
tf.disable<sub>v2</sub><sub>behavior</sub>()

-   Eager execution, v1.enable<sub>eager</sub><sub>execution</sub>() - tf.Graph will fail - wrap this code in a with
    tf.Graph().as<sub>default</sub>() context.
-   Resource variables, v1.enable<sub>resource</sub><sub>variables</sub>() - 2.0 Resource variables are locked while being written to
-   Tensor shapes, v1.enable<sub>v2</sub><sub>tensorshape</sub>() - t.shape[0].value will fail
-   Control flow, v1.enable<sub>control</sub><sub>flow</sub><sub>v2</sub>()


<a id="org1915621"></a>

### custome layer

-   <https://www.tensorflow.org/tutorials/customization/custom_layers>
-   <https://www.tensorflow.org/guide/keras/custom_layers_and_models>
-   Convolution <https://github.com/basveeling/keras-gcnn/blob/master/keras_gcnn/layers/convolutional.py>

Custom layers

Methods:

-   \_<sub>init</sub>\_<sub>()</sub>
-   build()\`: Called once from \`\_<sub>call</sub>\_\_\`, when we know the shapes of inputs and \`dtype\`.
-   call()

Arguments \_<sub>init</sub>\_<sub>()</sub>:

-   **trainable:** Boolean, whether the layer's variables should be trainable.
-   **name:** String name of the layer.
-   **dtype:** The dtype of the layer's computations and weights (default of \`None\` means use
    \`tf.keras.backend.floatx\` in TensorFlow 2, or the type of the first input in TensorFlow 1).
-   **dynamic:** Set this to \`True\` if your layer should only be run eagerly, and should not be used to generate a
    static computation graph.  This would be the case for a Tree-RNN or a recursive network, for example, or
    generally for any layer that manipulates tensors using Python control flow. If \`False\`, we assume that the
    layer can safely be used to generate a static computation graph.

    class Linear(layers.Layer):
    
      def __init__(self, units=32):
        super(Linear, self).__init__()
        self.units = units
    
      def build(self, input_shape):
        self.w = self.add_weight(shape=(input_shape[-1], self.units),
                                 initializer='random_normal',
                                 trainable=True) # все self переменные попадают в model.variables  автоматически
        self.b = self.add_weight(shape=(self.units,),
                                 initializer='random_normal',
                                 trainable=True)
    
      def call(self, inputs):
        return tf.matmul(inputs, self.w) + self.b


<a id="orged2dc5f"></a>

### decayed learning rate

    optimizer = SGD(learning_rate=0.006, decay=0.003, momentum=0.3)

    lr = optimizer._decayed_lr(tf.float32)
    print("lr: %f" % lr)


<a id="orgff483e9"></a>

### layer-wise learning rate in Tensorflow?

<https://stackoverflow.com/questions/34945554/how-to-set-layer-wise-learning-rate-in-tensorflow?noredirect=1>


<a id="org9ed4946"></a>

## Save a model

-   v1 <https://cv-tricks.com/tensorflow-tutorial/save-restore-tensorflow-models-quick-complete-tutorial/>

API

-   tf.compat.v1.train.Saver - binary format. Not-object-based
    -   my<sub>test</sub><sub>model</sub>-1000.index
    -   my<sub>test</sub><sub>model</sub>-1000.meta
    -   my<sub>test</sub><sub>model</sub>-1000.data-00000-of-00001
    -   checkpoint -  keeps a record of latest checkpoint files saved
-   tf.keras.Model
-   tf.compat.v2.train.Checkpoint - binary object-based checkpoints


<a id="org2085f76"></a>

### v1 Saver loading:

-   <https://www.tensorflow.org/api_docs/python/tf/compat/v1/train/import_meta_graph>
-   example <https://github.com/ZZUTK/TensorFlow_VGG_train_test/blob/master/testing.py>

steps

1.  with tf.compat.v1.Session() as sess: or tf.compat.v1.Session()
2.  saver = tf.compat.v1.train.import<sub>meta</sub><sub>graph</sub>('my<sub>test</sub><sub>model</sub>-1000.meta') # this will create the graph/network for you
    but we still need to load the value of the parameters that we had trained on this graph
3.  saver.restore(sess,tf.train.latest<sub>checkpoint</sub>('./')) # restore the parameters of the network
4.  print(sess.run('w1:0')) - print saved value of w1.

Run:

    graph = tf.compat.v1.get_default_graph()
    w1 = graph.get_tensor_by_name("w1:0")
    w2 = graph.get_tensor_by_name("w2:0")
    feed_dict ={w1:13.0,w2:17.0}
    op_to_restore = graph.get_tensor_by_name("op_to_restore:0")
     print sess.run(op_to_restore,feed_dict)


<a id="orgf7527a1"></a>

### v2 saving loading

-   Checkpoints - exact value of all parameters (tf.Variable) - source code required
    -   tf.keras.Model.save<sub>weights</sub>(path/mymodel)
-   Model.save(path) - the parameter values && serialized description of the computation defined by the model. Source code not needed.


<a id="org39502b0"></a>

## datasets

1.  tf.keras.datasets: <https://www.tensorflow.org/api_docs/python/tf/keras/datasets>
    -   boston<sub>housing</sub> module
    -   cifar10 module
    -   cifar100 module
    -   fashion<sub>mnist</sub> module
    -   imdb module
    -   mnist module
    -   reuters module
2.  tensorflow<sub>datasets</sub>
    -   catalog <https://www.tensorflow.org/datasets/catalog/overview>
    -   API <https://www.tensorflow.org/datasets/overview>

tfds.load is a thin wrapper around tfds.core.DatasetBuilder


<a id="org79ddd0b"></a>

### install and use tfds

    pip install tensorflow-datasets

    import tensorflow_datasets as tfds
    tfds.display_progress_bar(True)
    
    # 1) easy way
    ds = tfds.load('mnist', split='train', shuffle_files=True)
    assert isinstance(ds, tf.data.Dataset)


<a id="org91c2b66"></a>

### download

    # create directory required
    from pathlib import Path
    Path("/mnt/ssd/datasets/tensorflow_datasets/downloads/manual").mkdir(parents=True, exist_ok=True)
    
    # test
    # tfds.load('mnist', data_dir="/mnt/ssd/datasets/tensorflow_datasets")
    
    import tensorflow_datasets as tfds
    tfds.display_progress_bar(True)
    # do not download 'robotics:mt_opt_rlds' and  'huggingface:wmt19'
    l = [x for x in sorted(tfds.list_builders()) if ":" not in x ]
    errors=[]
    for x in l:
        try:
            ds = tfds.load(x, data_dir="/mnt/ssd/datasets/tensorflow_datasets")
        except Exception as e:
            errors.append(x)
    print("datasets with errors:", errors)


<a id="org0daa355"></a>

### landmark 2020

Number of unique landmark<sub>id</sub>: 81313

-   <https://www.kaggle.com/code/alifrahman/landmark-recognition2020-google>

    import os
    import pandas as pd
    import tensorflow as tf
    import numpy as np
    # ------- data
    def get_paths(path="/landmark-retrieval-2020/train", max_count=-1):
        index = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
        paths = []
        for a in index:
            for b in index:
                for c in index:
                    paths.extend([path+f"/{a}/{b}/{c}/" + x for x in os.listdir(path+f"/{a}/{b}/{c}")])
            if max_count > 0 and len(paths) > max_count:
                break
        return paths
    
    paths = get_paths("/landmark-retrieval-2020/train", 100)
    df = pd.read_csv("/landmark-retrieval-2020/train.csv") # count 1580470 # id  landmark_id
    mapping = {}
    for path in paths:
        mapping[path.split('/')[-1].split('.')[0]] = path
    
    df['path'] = df['id'].map(mapping) # add path column
    df = df[~ df.path.isna()] # select records with "path" column
    # - add probability for ...
    alpha=0.6
    counts_map = dict(df.groupby('landmark_id')['path'].agg(lambda x: len(x)))
    df['counts'] = df['landmark_id'].map(counts_map)
    df['prob'] = (  (1/df.counts**alpha) / (1/df.counts**alpha).max()).astype(np.float32) # ?
    
    uniques = df['landmark_id'].unique() # unique classes
    df['label'] = df['landmark_id'].map(dict(zip(uniques, range(len(uniques))))) # scale landmark_id to 0-
    
    image_paths, labels, probs = df.path.to_numpy(), df.label.to_numpy(), df.prob.to_numpy()
    
    
    def split_data(images, labels, train_size=0.9, shuffle=True):
        """ not stratified, train will have not all classes """
        # 1. Get the total size of the dataset
        size = len(images)
        # 2. Make an indices array and shuffle it, if required
        indices = np.arange(size)
        if shuffle:
            np.random.shuffle(indices)
        # 3. Get the size of training samples
        train_samples = int(size * train_size)
        # 4. Split data into training and validation sets
        x_train, y_train = images[indices[:train_samples]], labels[indices[:train_samples]]
        x_valid, y_valid = images[indices[train_samples:]], labels[indices[train_samples:]]
        return x_train, x_valid, y_train, y_valid
    
    x_train, x_valid, y_train, y_valid = split_data(image_paths, labels)
    
    
    # --------- dataset class
    img_width = 736
    img_height = 736
    
    def encode_single_sample(img_path, label):
        print(img_path, label)
        # 1. Read image
        img = tf.io.read_file(img_path)
        # 2. Decode and convert to grayscale
        img = tf.io.decode_jpeg(img, channels=3)
        # 3. Convert to float32 in [0, 1] range
        img = tf.image.convert_image_dtype(img, tf.float32)
        # 4. Resize to the desired size
        img = tf.image.resize(img, [img_height, img_width])
        # 5. Transpose the image because we want the time
        # dimension to correspond to the width of the image.
        img = tf.transpose(img, perm=[1, 0, 2])
        # 7. Return a dict as our model is expecting two inputs
        return {"image": img, "label": label}
    
    
    train_dataset = tf.data.Dataset.from_tensor_slices((x_train.astype(str), y_train.astype(int)))
    train_dataset = train_dataset.map(encode_single_sample)
    valid_dataset = tf.data.Dataset.from_tensor_slices((x_valid.astype(str), y_valid.astype(int)))
    valid_dataset = valid_dataset.map(encode_single_sample)
    # dataset = dataset.map(
    #         lambda x, y, p: (read_image(x), y, p),
    #         tf.data.experimental.AUTOTUNE)
    
    # # anotehr approach:
    # train_list = glob.glob('../input/landmark-retrieval-2020/train/*/*/*/*')
    # test_list = glob.glob('../input/landmark-retrieval-2020/test/*/*/*/*')
    # index_list = glob.glob('../input/landmark-retrieval-2020/index/*/*/*/*')
    
    if __name__=="__main__":
        args = sys.argv[1:]
        print('args', args)
        main(args)


<a id="orgcef1e49"></a>

### mnist

    import tensorflow as tf
    
    def encode_single_sample(img_path, label):
        tf.io.read_file(image_path)
        tf.image.decode_jpeg(image, channels=3)
    
    mnist = tf.keras.datasets.mnist
    
    (x_train, y_train), (x_test, y_test) = mnist.load_data()
    x_train, x_test = x_train / 255.0, x_test / 255.0
    # -- dataset
    batch_size=16
    train_dataset = tf.data.Dataset.from_tensor_slices((x_train, y_train))
    map(
            encode_single_sample, num_parallel_calls=tf.data.AUTOTUNE
        )
    train_dataset = train_dataset.shuffle(60000).repeat().batch(batch_size)
    validation_dataset = tf.data.Dataset.from_tensor_slices((x_test, y_test))
    # -- train
    model.fit(train_dataset, epochs=5, steps_per_epoch=200)


<a id="orge36d08f"></a>

## tf.data.dataset

-   <https://keras.io/examples/vision/captcha_ocr/>

train<sub>dataset</sub> = tf.data.Dataset.from<sub>tensor</sub><sub>slices</sub>((x<sub>train</sub>, y<sub>train</sub>))

dataset must consist of typeles - (x, y) by default, but it may be dictionary


<a id="org7995932"></a>

### test

    for elem in train_dataset_y.take(10):
        print(elem.numpy().shape)
        # or
        print(elem['label'].numpy().shape)
    
    print(train_dataset.__iter__().next())


<a id="org8bfcf0c"></a>

## install

   see Tested build configurations
tensorflow.org/install/source#linux

1.  apt clean; apt updatel apt purge cuda ; apt purge nvidia-\*; apt autoremoveq
2.  install "cuda toolkit" from archive
3.  pip3 install tensorflow-gpu==2.3.0


<a id="orga910054"></a>

## install from source

Для компиляции tensorflow используется гугловая система сборки Bazel


<a id="org58a65f5"></a>

## APIs

1.  tf.nn - very low level
2.  tf.layers - higher
3.  tf.keras - highest
4.  просто сразу вычисляет tf.enable<sub>eager</sub><sub>execution</sub>()


<a id="orge4df779"></a>

## tf.placeholder

amy = placeholder - это тензоры в графе, которым присваивается имя amy

    sess.run([tensors], feed_dict={amy: 1})  # заполняет placeholders and выполняет тензоры


<a id="org2b0f89a"></a>

## Logger = Disable

    import os
    import tensorflow as tf
    os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'


<a id="org1f9f894"></a>

## 4D tensor <a id="org0545246"></a>

-   N refers to the number of images in a batch.
-   H refers to the number of pixels in the vertical (height) dimension.
-   W refers to the number of pixels in the horizontal (width) dimension.
-   C refers to the channels. For example, 1 for black and white or grayscale and 3 for RGB.

Formats:

-   NCHW or channels<sub>first</sub> - optimal for NVIDIA GPUs cuDNN - If not using the Intel MKL, some operations are not
    supported on CPU when using NCHW
-   NHWC or channels<sub>last</sub> - TensorFlow default - little faster on CPU - we are working on tools to auto
    rewrite graphs to make switching between the formats transparent and take advantages of micro optimizations
    where a GPU op may be faster using NHWC

channels<sub>last</sub> - default for keras


<a id="orgc0920d9"></a>

## install

-   pip install tensorflow &#x2013;user
-   import tensorflow as tf
-   tf.InteractiveSession()


<a id="org6b2d362"></a>

## Deploy

-   Java
-   C
-   Go


<a id="org64cae3d"></a>

## tensor

-   <https://www.tensorflow.org/guide/tensors>
-   Tensor a mathematical object analogous to but more general than a vector, represented by an array of
    components that are functions of the coordinates of a space
-   unit of data, geometric objects that describe linear relations between geometric vectors, scalars, and other

tensors

-   has Rank
-   set of primitive values shaped into an array of any number of dimensions
-   rank/dimension zero tensor - 5 - scalar - shape is []
-   rank/dimension 1 tensor - [ 1., 2., 3., 4. ] - Vector - shape is [4]
-   rank/dimension 2 tensor or a Matrix - shape [ 2, 4] - [ [ 1., 2., 3., 4. ], [ 5., 6., 7., 8. ] ]

Граф состоит из узлов op, связанных друг с другом, представляющих операции.

-   Операция выделяет память для своих выходов, которые доступны в конечных точках :0, :1 и т.д. - похожих на
    тензор


<a id="org46999ee"></a>

## hardware

GPU могу ускорить работу сети в 10-20 раз[1]

**CPU**

-   С достаточно мощной видеокартой мощность процессора практически не важна, потому что всю нагрузку возмет GPU
-   желательно Intel® Xeon®, Intel® Xeon Phi™
-   если 2 видеокарты, то процессор должен их поддерживать.

**GPU**

-   две GPU лучше чем одна на 20%. Переносимость модели на систему без GPU реализована.
-   CUDA-Enabled NVIDIA video vard <https://developer.nvidia.com/cuda-gpus>
-   Deep Learning Primitives (cuDNN) - part of Deep Learning SDK, requires CUDA Toolkit
-   GPU Memory >=11 GB - больше лучше
-   чем больше FLOPS тем лучше
-   топы: NVIDIA QUADRO® GV100 или NVIDIA TITAN RTX
-   GPU Cooling - очень важен - Air cooling - для одного или двух если между ними поместится ещё две

**RAM**

-   RAM clock rates not required
-   RAM size больше чем GPU Memory одной из карт - больше памяти, удобнее работа для человека.

**PSU** if you have 4 GPUs with each 250 watts TDP and a CPU with 150 watts TDP, then you will need a PSU with a
 minimum of 4×250 + 150 + 100 = 1250 watts

Quandro P1000 PCE-3.0
кабинет 42 Соловьев

Счет на Кирила скинуть, Артем сказал скинуть счет на оплату, с Минофьевым согласовали, отправить в москву.

Андрей Свиридов поговорил с ЦФТ о возможности получить тестовый доступ к их облачному сервису расладвающему
назначения на компоненты.

Почтовый ящик с заявками, текст и сканы.

1.  TensorFlow для глубокого обучения. Барат Рамсундар, Реза Босаг Заде. 2019г.
2.  <https://timdettmers.com/2018/12/16/deep-learning-hardware-guide/>

1.  проверить материнскую плату что она PCI-E 3.0

1.  Написать письмо
2.  Можно ли с keras использовать несколько GPU
3.  прочитать по автокредиту что прислал в почте, посмотреть бизнес процессы
4.  читать банковское дело.
5.  Военкомат!! 11:00

<https://www.ferra.ru/review/computers/nvidia-geforce-gtx-1070-asus-gigabyte-msi-palit-zotac.htm>

Выбор видеокарты PALIT GeForce GTX 1070 27030р - 29000р

-   <https://belgorod.nix.ru/autocatalog/palit_graphics_accelerators/8Gb-PCI-E-GDDR5-Palit-GTX1070-JetStream-RTL-DVI-plus-HDMI-plus-3xDP-plus-SLI-GeForce-GTX1070_274136.html>
-   <https://www.onlinetrade.ru/catalogue/videokarty-c338/palit/videokarta_palit_geforce_gtx_1070_1506mhz_pci_e_3.0_8192mb_8000mhz_256_bit_dvi_hdmi_hdcp_jetstream_ne51070015p2_1041j-556700.html?utm_source=market.yandex.ru&utm_medium=cpc&city=55&_openstat=bWFya2V0LnlhbmRleC5ydTvQktC40LTQtdC-0LrQsNGA0YLQsCBQQUxJVCBHZUZvcmNlIEdUWCAxMDcwIDE1MDZNaHogUENJLUUgMy4wIDgxOTJNYiA4MDAwTWh6IDI1NiBiaXQgRFZJIEhETUkgSERDUCBKZXRTdHJlYW0gKE5FNTEwNzAwMTVQMi0xMDQxSik7dVFPbk1jckprVlZZWmNEamR5UVBiUTs&ymclid=15602370129371193275200002>

GeForce RTX 2060

Железо 50 70


<a id="org6287e8a"></a>

## hello world

    import tensorflow as tf
    a = tf.add(3, 5)
    
    sess = tf.Session()
    print sess.run(a)
    sess.close()
    # or
    with tf.Session() as sess:
      print sess.run(a)


<a id="org7db2f39"></a>

## main objects

-   tf.Session - содержит один глобальный граф
    -   tf.InteractiveSession - makes itself the default
-   tf.Tensor
    -   tf.constant(value, dtype=None, shape=None, name='Const', verify<sub>shape</sub>=False)
        -   stored in the graph definition
        -   loading graphs expensive
-   tf.placeholder - input for graph

when constants are big

-   tf.Operation
-   tf.Graph - состоит из экземпляров tf.Tensor и tf.Operation.
    -   Multiple graphs require multiple sessions, each will try to use all available resources by default
    -   Can't pass data between them without passing them through python/numpy, which doesn't work in distributed
    -   It’s better to have disconnected subgraphs within one graph
-   data types
    -   tf.int32
    -   tf.float32
    -   tf.float64
    -   tf.string
    -   tf.bool
    -


<a id="org387e681"></a>

## Переменные

-   tf.Varible - контейнер Tensor
-   tf.assign

Инициализация

    init = tf.global_variables_initializer()
    with tf.Session() as sess:
      sess.run(init)

nitialize a single variable

    W = tf.Variable(tf.zeros([784,10]))
    with tf.Session() as sess:
      sess.run(W.initializer)
      print W.eval()


<a id="orgaecc111"></a>

## TensorBoard

2 run it:

-   $ python [yourprogram].py
-   $ tensorboard &#x2013;logdir="./graphs" &#x2013;port 6006
-   <http://localhost:6006/>

1 save it:

    import tensorflow as tf
    a = tf.constant(2, name="a")
    b = tf.constant(3, name="b")
    x = tf.add(a, b, name="add")
    with tf.Session() as sess:
      # add this line to use TensorBoard.
      writer = tf.summary.FileWriter('./graphs, sess.graph)
      print sess.run(x)
    writer.close() # close the writer when you’re done using


<a id="orgc432401"></a>

## GPU

<https://www.tensorflow.org/install/gpu>

-   pip3 install tensorflow-gpu &#x2013;user

Required:

-   import tensorflow as tf
-   config = tf.ConfigProto()
-   config.gpu<sub>options.allow</sub><sub>growth</sub> = True
-   session = tf.Session(config=config)


<a id="orgdc01119"></a>

## keras

    from tensorflow import keras
    from tensorflow.python.keras.api._v2.keras.layers import BatchNormalization, Dense, Dropout, Activation, Flatten, \
        Conv2D, MaxPooling2D
    from tensorflow.python.keras.api._v2.keras.models import Sequential


<a id="orga9e2338"></a>

## CNN

tf.nn.conv2d(feat,

-   weight, - input
-   strides=[1,1,1,1], -  1,2 or 4 - stride of the sliding window for each dimension of input
-   padding="VALID")+bias

tf.nn.max<sub>pool</sub>(feat,

-   ksize=[1,2,2,1] - window per every dimension
-   strides=[1,2,2,1]
-   padding="VALID")


<a id="orgbd570cb"></a>

## RNN and LSTM

-   TODO <https://www.tensorflow.org/guide/keras/rnn>
-   <https://github.com/curiousily/Deep-Learning-For-Hackers>
-   <https://github.com/aymericdamien/TensorFlow-Examples/blob/master/tensorflow_v2/notebooks/3_NeuralNetworks/recurrent_network.ipynb>

stateful=True requre constant batch<sub>size</sub>

Change bach <https://stackoverflow.com/questions/58799212/how-can-i-use-a-stateful-lstm-model-to-predict-without-specifying-the-same-batch>


<a id="org2b33ba7"></a>

### CNN

<https://machinelearningmastery.com/how-to-develop-convolutional-neural-network-models-for-time-series-forecasting/>


<a id="org30b591d"></a>

### batch

<https://machinelearningmastery.com/stateful-stateless-lstm-time-series-forecasting-python/>

You can set RNN layers to be 'stateful', which means that the states computed for the samples in one batch
will be reused as initial states for the samples in the next batch. This assumes a one-to-one mapping between
samples in different successive batches.

You can specify the initial state of RNN layers symbolically by calling them with the keyword argument
**initial<sub>state</sub>**. The value of **initial<sub>state</sub>** should be a tensor or list of tensors representing the initial state
of the RNN layer.

You can specify the initial state of RNN layers numerically by calling **reset<sub>states</sub>** with the keyword argument
**states**. The value of **states** should be a numpy array or list of numpy arrays representing the initial state of
the RNN layer.

it may be possible to simulate a stateful LSTM with a stateless LSTM using a large batch size.


<a id="org5aecd63"></a>

## plot learning curve

    print(history.history.keys()) # ['loss', 'acc', 'val_loss', 'val_acc']
    
    from matplotlib import pyplot as plt
    
    plt.figure(1)
    
    # summarize history for accuracy
    
    plt.subplot(211)
    plt.plot(history.history['acc'])
    plt.plot(history.history['val_acc'])
    plt.title('model accuracy')
    plt.ylabel('accuracy')
    # plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    
    # summarize history for loss
    
    plt.subplot(212)
    plt.plot(history.history['loss'])
    plt.plot(history.history['val_loss'])
    plt.title('model loss')
    plt.ylabel('loss')
    # plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    plt.show()


<a id="org1ed7730"></a>

## plot CNN layout

-   <https://stackoverflow.com/questions/55421290/tensorflow-2-0-keras-how-to-write-image-summaries-for-tensorboard>

summaryWriter = tf.summary.FileWriter("model<sub>name</sub>")
summaryWriter.add<sub>graph</sub>(sess.graph)

summaryWriter.add<sub>summary</sub>(sess.run(summaryMeanTest0,feed<sub>dict</sub>={testImagePH:testMean[0]}),i+1)


<a id="org23f0ba8"></a>

## Optimizer

softmaxLoss = tf.losses.softmax<sub>cross</sub><sub>entropy</sub>(onehot<sub>labels</sub>=labelOnehot, logits=output) -> float or [batch]

-   labelOnehot - оригиналы
-   logits - то что вернула сеть
-   reduction: str = Reduction.SUM<sub>BY</sub><sub>NONZERO</sub><sub>WEIGHTS</sub> - default

-   optimizer = tf.train.GradientDescentOptimizer(learning<sub>rate</sub>).minimize(cost)
    -   cost - ?
-   sess.run(tf.global<sub>variables</sub><sub>initializer</sub>())
-   sess.run([optim,loss],feed<sub>dict</sub>=batch)

ways:

-   minimize()
    1.  opt = GradientDescentOptimizer(learning<sub>rate</sub>=0.1)
    2.  opt<sub>op</sub> = opt.minimize(cost, var<sub>list</sub>=<list of variables>) - computing the gradients and applying them to
        the variables
    3.  sess.run([opt<sub>op,loss</sub>], feed<sub>dict</sub>=batch) or opt<sub>op.run</sub>()
-   compute<sub>gradients</sub>() - process the gradients before applying them
    1.  opt = GradientDescentOptimizer(learning<sub>rate</sub>=0.1)
    2.  grads<sub>and</sub><sub>vars</sub> = opt.compute<sub>gradients</sub>(loss, <list of variables>)
    3.  capped<sub>grads</sub><sub>and</sub><sub>vars</sub> = [(MyCapper(gv[0]), gv[1]) for gv in grads<sub>and</sub><sub>vars</sub>]
    4.  opt.apply<sub>gradients</sub>(capped<sub>grads</sub><sub>and</sub><sub>vars</sub>)
    5.  sess.run([opt,loss], feed<sub>dict</sub>=batch)

    lrGP_PH, lrC_PH = tf.placeholder(tf.float32, shape=[]), tf.placeholder(tf.float32, shape=[])
    optim = tf.train.AdamOptimizer(learning_rate=lrC_PH).minimize(loss, global_step=tf.train.get_global_step())
    
    
    lrC = opt.lrC*opt.lrCdecay**(i//opt.lrCstep)
    batch[lrC_PH] = lrC
    sess.run


<a id="org438ad07"></a>

## models - tensorflow<sub>models</sub> as tfm

-   <https://github.com/tensorflow/models/>
-   usage guide <https://github.com/tensorflow/models/blob/master/tensorflow_models/tensorflow_models_pypi.ipynb>
-   usage examp <https://colab.research.google.com/github/tensorflow/models/blob/master/docs/vision/image_classification.ipynb>
-   mnist legacy <https://github.com/tensorflow/models/blob/e11f52948a993c8de15c4d87241044bc769e767b/official/legacy/image_classification/mnist_main.py>


<a id="org011511d"></a>

### install

    pip3 install tf-models-official==2.13

/usr/local/lib/python3.8/dist-packages

    pip3 install tf-models-official==2.13 ; apt install -y emacs-nox


<a id="orgd979dca"></a>

### usage

git clone &#x2013;depth=1 <https://github.com/tensorflow/models>

-   Experiment factory (config in JSON/YAML) <https://colab.research.google.com/github/tensorflow/models/blob/master/docs/vision/image_classification.ipynb#scrollTo=5iN8mHEJjKYE>
-   class constructor (tf.keras.Model) <https://github.com/tensorflow/models/blob/master/tensorflow_models/tensorflow_models_pypi.ipynb>
    -   orbit <https://github.com/tensorflow/models/blob/master/docs/orbit/index.ipynb>


<a id="orge7e5e22"></a>

### mnist

cd models/official/legacy/image<sub>classification</sub>
python mnist<sub>main.py</sub>
python mnist<sub>main.py</sub> -ds parameter<sub>server</sub> &#x2013;data<sub>dir</sub> /workspace/mnist

-ds,&#x2013;distribution<sub>strategy</sub>:
    The Distribution Strategy to use for training. Accepted values are 'off',
    'one<sub>device</sub>', 'mirrored', 'parameter<sub>server</sub>', 'collective', case
    insensitive.
    'off' means not to use Distribution Strategy; 'default' means to choose from
    \`MirroredStrategy\` or \`OneDeviceStrategy\` according to the number of GPUs.
    (default: 'mirrored')

-ng,&#x2013;num<sub>gpus</sub>:
    How many GPUs to use at each worker with the DistributionStrategies API. The
    default is 1.
    (default: '1')
    (an integer)

-te,&#x2013;train<sub>epochs</sub>:
    The number of epochs used to train.
    (default: '1')
    (an integer)

official.utils.flags.<sub>base</sub>:
  -bs,&#x2013;batch<sub>size</sub>:
    Batch size for training and evaluation. When using multiple gpus, this is
    the
    global batch size for all devices. For example, if the batch size is 32 and
    there are 4 GPUs, each GPU will get 8 examples on each step.
    (default: '1024')
    (an integer)

-te,&#x2013;train<sub>epochs</sub>:
    The number of epochs used to train.
    (default: '1')
    (an integer)


<a id="orgf211a8a"></a>

### dummy dataset for MNIST

    dummy_data = (
            tf.ones(shape=(10, 28, 28, 1), dtype=tf.int32),
            tf.range(10),
        )
        datasets = (
            tf.data.Dataset.from_tensor_slices(dummy_data),
            tf.data.Dataset.from_tensor_slices(dummy_data),
        )


<a id="org729a10e"></a>

### Mobilenet example

    # https://www.tensorflow.org/api_docs/python/tfm/vision/backbones/MobileNet
    # https://stackoverflow.com/questions/63284471/tensorflow-use-model-inside-another-model-as-layer
    import tensorflow as tf
    import tensorflow_models as tfm
    from tensorflow.keras import Input
    from tensorflow.keras import Model
    
    
    IS = 28
    INPUT_SIZE = (IS, IS)
    OUTPUT_SIZE = 2
    
    input_specs = tf.keras.layers.InputSpec(shape=[None, IS, IS, 3])
    
    sub_model = tfm.vision.backbones.MobileNet(
        input_specs=input_specs,
        filter_size_scale=0.65,
    )
    
    def model_test(input_shape, sub_model):
      inputs = Input(input_shape)
      intermedio = sub_model(inputs)
      iv = list(intermedio.values())
      f0 = tf.keras.layers.Flatten()(iv[0])
      f1 = tf.keras.layers.Flatten()(iv[1])
      f2 = tf.keras.layers.Flatten()(iv[2])
      dense_intr = tf.keras.layers.Concatenate()([f0, f1, f2])
      outputs = tf.keras.layers.Dense(OUTPUT_SIZE, activation=tf.keras.activations.softmax, name="d-out")(dense_intr)
      model = Model(inputs=inputs, outputs=outputs)
      return model
    
    model = model_test((IS, IS, 3), sub_model)
    
    model = model_test(INPUT_SIZE, sub_model)
    
    
    # -- inference with dummy test
    inputs = tf.keras.Input(shape=(IS, IS, 3), batch_size=1)
    endpoints = model(inputs=inputs)
    # -- compile
    model.compile(loss="categorical_crossentropy", optimizer="adam")
    # -- train
    
    print(model.name)
    print(endpoints)


<a id="org421596e"></a>

### RESNET example

    # https://www.tensorflow.org/api_docs/python/tfm/vision/backbones/MobileNet
    # https://stackoverflow.com/questions/63284471/tensorflow-use-model-inside-another-model-as-layer
    import tensorflow as tf
    import tensorflow_models as tfm
    from tensorflow.keras import Input
    from tensorflow.keras import Model
    import os
    import pandas as pd
    import numpy as np
    IS = 736
    INPUT_SIZE = (IS, IS, 3)
    OUTPUT_SIZE = None # lets get count of classes from Data
    BATCH_SIZE = 5
    DROUPOUT_RATE=0.2
    # ---- Data ----
    def get_paths(path="/landmark-retrieval-2020/train", max_count=-1):
        index = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
        paths = []
        for a in index:
            for b in index:
                for c in index:
                    paths.extend([path+f"/{a}/{b}/{c}/" + x for x in os.listdir(path+f"/{a}/{b}/{c}")])
            if max_count > 0 and len(paths) > max_count:
                break
        return paths
    
    paths = get_paths("/landmark-retrieval-2020/train", 150000)
    df = pd.read_csv("/landmark-retrieval-2020/train.csv") # count 1580470 # id  landmark_id
    mapping = {}
    for path in paths:
        mapping[path.split('/')[-1].split('.')[0]] = path
    
    df['path'] = df['id'].map(mapping) # add path column
    df = df[~ df.path.isna()] # select records with "path" column
    # - add probability for ...
    alpha=0.6
    counts_map = dict(df.groupby('landmark_id')['path'].agg(lambda x: len(x)))
    df['counts'] = df['landmark_id'].map(counts_map)
    df['prob'] = (  (1/df.counts**alpha) / (1/df.counts**alpha).max()).astype(np.float32) # ?
    # select classes where we have enough examples
    print("df[df.counts >70].shape", df[df.counts >70].shape) # >>> (4934, 5)
    df = df[df.counts >70]
    uniques = df['landmark_id'].unique() # unique classes
    OUTPUT_SIZE = len(uniques)
    df['label'] = df['landmark_id'].map(dict(zip(uniques, range(len(uniques))))) # scale landmark_id to 0-
    
    image_paths, labels, probs = df.path.to_numpy(), df.label.to_numpy(), df.prob.to_numpy()
    
    
    def split_data(images, labels, train_size=0.9, shuffle=True):
        # 1. Get the total size of the dataset
        size = len(images)
        # 2. Make an indices array and shuffle it, if required
        indices = np.arange(size)
        if shuffle:
            np.random.shuffle(indices)
        # 3. Get the size of training samples
        train_samples = int(size * train_size)
        # 4. Split data into training and validation sets
        x_train, y_train = images[indices[:train_samples]], labels[indices[:train_samples]]
        x_valid, y_valid = images[indices[train_samples:]], labels[indices[train_samples:]]
        return x_train, x_valid, y_train, y_valid
    
    x_train, x_valid, y_train, y_valid = split_data(image_paths, labels)
    
    # ----- Model ----
    # -- sub_model - depend on model
    input_specs = tf.keras.layers.InputSpec(shape=[None, IS, IS, 3])
    
    sub_model = tfm.vision.backbones.resnet.ResNet(
        model_id = 50,
        input_specs = input_specs,
    )
    
    # -- Get outputs tensor of submodel
    inputs = tf.keras.Input(shape=INPUT_SIZE, batch_size=1)
    endpoints = sub_model(inputs=inputs)
    print("endpoints", endpoints)
    print()
    
    # -- wrap sub_model in new Model to add input and output layers
    def wrap_model(input_shape, sub_model):
        """ add inputs and outputs to model """
        inputs = Input(input_shape)
        intermedio = sub_model(inputs)
        # """Merge outputs - depende on model"""
        pooling = tf.keras.layers.GlobalAveragePooling2D(name='head/pooling')
        # dropout = tf.keras.layers.Dropout(DROUPOUT_RATE, name='head/dropout')
        # dense = tf.keras.layers.Dense(dense_units, name='head/dense')
        # x = intermedio
        # x = pooling(x)
        # x = dropout(x)
        # x = dense(x)
        iv = list(intermedio.values())
        f0 = tf.keras.layers.Flatten()(pooling(iv[0]))
        f1 = tf.keras.layers.Flatten()(pooling(iv[1]))
        f2 = tf.keras.layers.Flatten()(pooling(iv[2]))
        f3 = tf.keras.layers.Flatten()(pooling(iv[3]))
        x = tf.keras.layers.Concatenate()([f0, f1, f2, f3])
        # final layout:
        outputs = tf.keras.layers.Dense(OUTPUT_SIZE, activation=tf.keras.activations.softmax, name="d-out")(x)
        model = Model(inputs=inputs, outputs=outputs)
        return model
    
    model = wrap_model(INPUT_SIZE, sub_model)
    model.summary()
    print("model.layers[0]._name", model.layers[0]._name)
    model.layers[0]._name = "image"
    # -- compile
    model.compile(loss="categorical_crossentropy", optimizer="adam")
    
    
    # ---- Dataset class ----
    img_width = 736
    img_height = 736
    
    def encode_single_sample(img_path, label):
        # 1. Read image
        img = tf.io.read_file(img_path)
        # 2. Decode and convert to grayscale
        img = tf.io.decode_jpeg(img, channels=3)
        # 3. Convert to float32 in [0, 1] range
        img = tf.image.convert_image_dtype(img, tf.float32)
        # 4. Resize to the desired size
        img = tf.image.resize(img, [img_height, img_width])
        # 5. Transpose the image because we want the time
        # dimension to correspond to the width of the image.
        img = tf.transpose(img, perm=[1, 0, 2])
        # 7. Return a dict as our model is expecting two inputs
        # layer = tf.keras.layers.CategoryEncoding(num_tokens=OUTPUT_SIZE, output_mode="one_hot")
        label = tf.one_hot(label, OUTPUT_SIZE)
        return img, label
    
    
    train_dataset = tf.data.Dataset.from_tensor_slices((x_train.astype(str), y_train.astype(int))).skip(df.shape[0] - df.shape[0]//4)
    train_dataset = train_dataset.map(lambda x, y: encode_single_sample(x, y), tf.data.experimental.AUTOTUNE)
    
    train_dataset = train_dataset.batch(BATCH_SIZE).prefetch(100)
    
    validation_dataset = tf.data.Dataset.from_tensor_slices((x_valid.astype(str), y_valid.astype(int))).skip(df.shape[0] - df.shape[0]//4)
    validation_dataset = validation_dataset.map(lambda x, y: encode_single_sample(x, y), tf.data.experimental.AUTOTUNE)
    validation_dataset = train_dataset.prefetch(100)
    
    # ---- train ----
    model.fit(train_dataset, epochs=1)
    # -- checks the model's performance
    print("evaluate")
    model.evaluate(validation_dataset, verbose=2)
    # -- inferece
    print("inference", x_valid[0], y_valid[0])
    im, l = encode_single_sample(x_valid[0], y_valid[0])
    im = tf.expand_dims(im, axis=0)
    print("im", im.shape)
    predictions = model.predict(im, batch_size=1)
    print(np.argmax(predictions))
    print("label:", y_valid[0])


<a id="orga301710"></a>

## TensorFlow Serving


<a id="org0c8aa38"></a>

### terms

-   Servables - anything, and multiple independent servables
-   Loaders - manage a servable's life cycle
-   Sources - are plugin modules that find and provide servables
-   Managers - loading, serving, unloading

-   main <https://github.com/tensorflow/serving>
-   basic tutorial <https://www.tensorflow.org/tfx/serving/serving_basic>
-   advanced tutorial <https://www.tensorflow.org/tfx/serving/serving_advanced>

kubernetes install <https://github.com/tensorflow/serving/blob/master/tensorflow_serving/g3doc/serving_kubernetes.md>

<https://pypi.org/project/tensorflow-serving-api/>

-   client: <https://github.com/tensorflow/serving/blob/master/tensorflow_serving/example/resnet_client_grpc.py>
-   build with docker? <https://github.com/tensorflow/serving/blob/master/tensorflow_serving/g3doc/building_with_docker.md>


<a id="org4176fa0"></a>

## TODO TFX pipeline - MLOps

is a portable implementation of an ML workflow that can be run on various orchestrators, such as: Apache Airflow, Apache Beam, and Kubeflow Pipelines.


<a id="orgf68968e"></a>

## loss

-   loss = tf.losses.softmax<sub>cross</sub><sub>entropy</sub>(onehot<sub>labels</sub>=labelOnehot, logits=output,  reduction=tf.losses.Reduction.MEAN)
-   lossm = tf.metrics.mean(loss)


<a id="org81e8a58"></a>

## ctc<sub>loss</sub>

-   <https://programtalk.com/python-more-examples/tensorflow.nn.ctc_loss/>
    -   <https://github.com/lz1313/BlockCIrculantRNN/blob/master/model.py>
    -   <https://github.com/zfxxfeng/cnn_lstm_ctc_ocr_for_ICPR/blob/master/src/model.py>
    -   <https://github.com/mdangschat/ctc-asr/blob/master/asr/model.py>
    -   <https://github.com/nginyc/rafiki/blob/master/examples/models/speech_recognition/TfDeepSpeech.py>


<a id="org5f5647a"></a>

## custom metric

levels:

-   function -> values summarized and divided by count
-   class -> gives full control


<a id="org655f690"></a>

### function

**total categorical accuracy**

    def total_categorical_accuracy(y_true, y_pred):
            # a = tf.cast(tf.math.equal(tf.argmax(y_true, axis=-1), tf.argmax(y_pred, axis=-1)), dtype=y_pred.dtype)
            a = keras.metrics.categorical_accuracy(y_true, y_pred)
            classes = tf.constant(a.shape[1], a.dtype)
            a2 = tf.reduce_sum(a, axis=-1)
            c = tf.cast(tf.math.equal(a2, classes), dtype=classes.dtype)
            return c
    model.compile(loss=loss, optimizer=opt.optimizer, metrics=["categorical_accuracy",total_categorical_accuracy])


<a id="org90df782"></a>

### class

    class ConfusionMatrixMetric(tf.keras.metrics.Metric):
    
    
        def update_state(self, y_true, y_pred,sample_weight=None):
            self.total_cm.assign_add(self.confusion_matrix(y_true,y_pred))
            return self.total_cm
    
        def result(self):
            return self.process_confusion_matrix()
    
        def confusion_matrix(self,y_true, y_pred):
            """
            Make a confusion matrix
            """
            y_pred=tf.argmax(y_pred,1)
            cm=tf.math.confusion_matrix(y_true,y_pred,dtype=tf.float32,num_classes=self.num_classes)
            return cm
    
        def process_confusion_matrix(self):
            "returns precision, recall and f1 along with overall accuracy"
            cm=self.total_cm
            diag_part=tf.linalg.diag_part(cm)
            precision=diag_part/(tf.reduce_sum(cm,0)+tf.constant(1e-15))
            recall=diag_part/(tf.reduce_sum(cm,1)+tf.constant(1e-15))
            f1=2*precision*recall/(precision+recall+tf.constant(1e-15))
            return precision,recall,f1


<a id="org23079be"></a>

## distributed training


<a id="orgc882474"></a>

### API

-   **tf.distribute.Strategy**
-   high-level API Keras **Model.fit**
-   Custom training loop
-   Estimator API (Limited Support)

Notes:

-   Custom training loops: *Eager mode* is only recommended for debugging, in *a graph* recommended using tf.function (custom training loops)


<a id="org4988fc2"></a>

### terms

-   **replica:** copy of the model
-   **Parameter servers:** machines that hold a single copy of parameters/variables
-   **Replica context:** strategy.run function - when executing the computation function that is being replicated.
-   **Cross-replica context:** when you enter a strategy.scope
-   **Update context:** tf.distribute.StrategyExtended.update call
-   **Reductions:** method of aggregating multiple values into one value (sync training)
    -   **All-reduce:** is an algorithm for performing a reduction on values from multiple devices and making the result available on all of those devices
-   **Mirrored variables:** variables that are created on multiple devices, where we keep the variables in sync by applying the same updates to every copy.
-   **Distribute-aware layers:** generally called in a replica context.


<a id="org36d7736"></a>

### Synchronous vs asynchronous training

sync - via **all-reduce**

-   workers train over different slices of input data (Data parallelism)
-   aggregating gradients at each step
-   the updates from each replica are aggregated together before updating the model variables

async - via **parameter server architecture**

-   all workers are independently training over the input data and updating variables asynchronously
-   each replica updates the model variables independently

groups:

-   **replicas partitioned** into groups which are in sync within each group but async between groups.


<a id="org3bff2d9"></a>

### strategies

**MultiWorkerMirroredStrategy** is very similar to MirroredStrategy. It implements synchronous distributed
 training across multiple workers, each with potentially multiple GPUs.

1.  MirroredStrategy

    tf.distribute.MirroredStrategy
    
    mirrors variables to multiple devices.
    
    Each variable in the model is mirrored across all the replicas. These variables are kept in sync with each
     other by applying identical updates.
    
    1.  kubeflow ex MultiWorkerMirroredStrategy
    
            """An example of multi-worker training with Keras model using Strategy API."""
            
            from __future__ import absolute_import, division, print_function
            
            import argparse
            import json
            import os
            
            import tensorflow_datasets as tfds
            import tensorflow as tf
            from tensorflow.keras import layers, models
            
            
            def make_datasets_unbatched():
              BUFFER_SIZE = 10000
            
              # Scaling MNIST data from (0, 255] to (0., 1.]
              def scale(image, label):
                image = tf.cast(image, tf.float32)
                image /= 255
                return image, label
            
              datasets, _ = tfds.load(name='mnist', with_info=True, as_supervised=True)
            
              return datasets['train'].map(scale).cache().shuffle(BUFFER_SIZE)
            
            
            def build_and_compile_cnn_model():
              model = models.Sequential()
              model.add(
                  layers.Conv2D(32, (3, 3), activation='relu', input_shape=(28, 28, 1)))
              model.add(layers.MaxPooling2D((2, 2)))
              model.add(layers.Conv2D(64, (3, 3), activation='relu'))
              model.add(layers.MaxPooling2D((2, 2)))
              model.add(layers.Conv2D(64, (3, 3), activation='relu'))
              model.add(layers.Flatten())
              model.add(layers.Dense(64, activation='relu'))
              model.add(layers.Dense(10, activation='softmax'))
            
              model.summary()
            
              model.compile(optimizer='adam',
                            loss='sparse_categorical_crossentropy',
                            metrics=['accuracy'])
            
              return model
            
            
            def decay(epoch):
              if epoch < 3: #pylint: disable=no-else-return
                return 1e-3
              if 3 <= epoch < 7:
                return 1e-4
              return 1e-5
            
            
            def main(args):
            
              # MultiWorkerMirroredStrategy creates copies of all variables in the model's
              # layers on each device across all workers
              # if your GPUs don't support NCCL, replace "communication" with another
              strategy = tf.distribute.MultiWorkerMirroredStrategy(
                  communication_options=tf.distribute.experimental.CommunicationOptions(implementation=tf.distribute.experimental.CollectiveCommunication.AUTO))
            
              BATCH_SIZE_PER_REPLICA = 64
              BATCH_SIZE = BATCH_SIZE_PER_REPLICA * strategy.num_replicas_in_sync
            
              with strategy.scope():
                ds_train = make_datasets_unbatched().batch(BATCH_SIZE).repeat()
                options = tf.data.Options()
                options.experimental_distribute.auto_shard_policy = \
                    tf.data.experimental.AutoShardPolicy.DATA
                ds_train = ds_train.with_options(options)
                # Model building/compiling need to be within `strategy.scope()`.
                multi_worker_model = build_and_compile_cnn_model()
            
              # Define the checkpoint directory to store the checkpoints
              checkpoint_dir = args.checkpoint_dir
            
              # Name of the checkpoint files
              checkpoint_prefix = os.path.join(checkpoint_dir, "ckpt_{epoch}")
            
              # Function for decaying the learning rate.
              # You can define any decay function you need.
              # Callback for printing the LR at the end of each epoch.
              class PrintLR(tf.keras.callbacks.Callback):
            
                def on_epoch_end(self, epoch, logs=None): #pylint: disable=no-self-use
                  print('\nLearning rate for epoch {} is {}'.format(
                    epoch + 1, multi_worker_model.optimizer.lr.numpy()))
            
              callbacks = [
                  tf.keras.callbacks.TensorBoard(log_dir='./logs'),
                  tf.keras.callbacks.ModelCheckpoint(filepath=checkpoint_prefix,
                                                     save_weights_only=True),
                  tf.keras.callbacks.LearningRateScheduler(decay),
                  PrintLR()
              ]
            
              # Keras' `model.fit()` trains the model with specified number of epochs and
              # number of steps per epoch. Note that the numbers here are for demonstration
              # purposes only and may not sufficiently produce a model with good quality.
              multi_worker_model.fit(ds_train,
                                     epochs=10,
                                     steps_per_epoch=70,
                                     callbacks=callbacks)
            
              # Saving a model
              # Let `is_chief` be a utility function that inspects the cluster spec and
              # current task type and returns True if the worker is the chief and False
              # otherwise.
              def is_chief():
                return TASK_INDEX == 0
            
              if is_chief():
                model_path = args.saved_model_dir
            
              else:
                # Save to a path that is unique across workers.
                model_path = args.saved_model_dir + '/worker_tmp_' + str(TASK_INDEX)
            
              multi_worker_model.save(model_path)
            
            
            if __name__ == '__main__':
              os.environ['NCCL_DEBUG'] = 'INFO'
            
              tfds.disable_progress_bar()
            
              # to decide if a worker is chief, get TASK_INDEX in Cluster info
              tf_config = json.loads(os.environ.get('TF_CONFIG') or '{}')
              TASK_INDEX = tf_config['task']['index']
            
              parser = argparse.ArgumentParser()
              parser.add_argument('--saved_model_dir',
                                  type=str,
                                  required=True,
                                  help='Tensorflow export directory.')
            
              parser.add_argument('--checkpoint_dir',
                                  type=str,
                                  required=True,
                                  help='Tensorflow checkpoint directory.')
            
              parsed_args = parser.parse_args()
              main(parsed_args)

2.  CentralStorageStrategy (experimental)

    tf.distribute.experimental.CentralStorageStrategy
    
    puts all variables on a single device on the same machine (and does sync training).

3.  ParameterServerStrategy (experimental)

    creates variables on the parameter servers.
    
    api
    
    -   Model.fit
    -   custom training loop
        -   tf.distribute.experimental.ParameterServerStrategy (tensorflow 1.0)
        -   tf.distribute.ParameterServerStrategy
    
    notes:
    
    -   data-parallel method
    -   All replicas that want to operate on a variable retrieve parameters/variables from Par server at the
        beginning of a step and send an update to be applied at the end of the step. These can in principle support
        either sync or async training, but right now we only have support for async training with parameter servers.
    -   workers and parameter servers
    -   Variables are created on parameter servers and they are read and updated by workers in each step
    -   workers read and update these variables independently without synchronizing with each other (asynchronous training)
    -   'cluster' with several 'jobs', and each of the jobs may have one or more 'tasks'
    
    recommended to have:
    
    -   One coordinator job (has the job name or task type: **chief**) - creates resources, dispatches training tasks, writes checkpoints, and deals with task failures.
        -   know the addresses and ports of all other TensorFlow servers, except the evaluator.
    -   Multiple worker jobs (job name or task type: **worker**)
        -   need to know which port they need to listen to.
        -   all workers should have the same number of GPUs available.
        -   each worker receives the same dataset, except when it is shuffled differently
    -   Multiple parameter server jobs (job name or task type: **ps**) - tf.distribute.Server
        -   need to know which port they need to listen to.
    -   evaluator (optional) -
    
    **worker** and **ps**
    
    -   run **tf.distribute.Server** instances that listen for requests from the **chief**.
    -   dataset<sub>fn</sub> will be wrapped into a tf.function and then executed on each worker to generate the data pipeline.
    -   apply the transformation inside the dataset<sub>fn</sub> via tf.data.Dataset.map
    
    datasets allowed to use:
    
    -   tf.data.Dataset
    -   tf.distribute.DistributedDataset
    -   tf.keras.utils.experimental.DatasetCreator - the code in dataset<sub>fn</sub> will be invoked on the input device,
        which is usually the CPU, on each of the worker machines.
    
    **repeat and steps<sub>per</sub><sub>epoch</sub>**
    
    -   Dataset.repeat — which repeats a dataset indefinitely when called without an argument—and specify the
        steps<sub>per</sub><sub>epoch</sub> argument in the Model.fit call.
    
    Note from TF (Model.fit):
    
    -   When using a \`tf.keras.utils.experimental.DatasetCreator\`, \`steps<sub>per</sub><sub>epoch</sub>\`, \`validation<sub>steps</sub>\`, \`steps\`,
        or \`pss<sub>evaluation</sub><sub>shards</sub>\` argument must be provided in \`Model.fit\`, \`Model.evaluate\`, or \`Model.predict\`
        -   validation<sub>steps</sub> - for validation data
        -   pss<sub>evaluation</sub><sub>shards</sub> - The number of shards should be at least the number of workers for good performance.
    
    1.  tf.data.experimental.AutoShardPolicy
    
        -   OFF: No sharding will be performed.
        -   AUTO: Attempts FILE-based sharding, falling back to DATA-based sharding.
        -   FILE: Shards by input files (i.e. each worker will get a set of files to process). When this option is selected, make sure that there is at least as many files as workers. If there are fewer input files than workers, a runtime error will be raised.
        -   DATA: Shards by elements produced by the dataset. Each worker will process the whole dataset and discard the portion that is not for itself. Note that for this mode to correctly partitions the dataset elements, the dataset needs to produce elements in a deterministic order.
        -   HINT: Looks for the presence of shard(SHARD<sub>HINT</sub>, &#x2026;) which is treated as a placeholder to replace with shard(num<sub>workers</sub>, worker<sub>index</sub>).
        
        usage:
        
        -   options = tf.data.Options()
        -   options.experimental<sub>distribute.auto</sub><sub>shard</sub><sub>policy</sub> = tf.data.experimental.AutoShardPolicy.OFF
        -   train<sub>dataset</sub> = tf.data.Dataset.from<sub>tensor</sub><sub>slices</sub>((x<sub>train</sub>, y<sub>train</sub>))
        -   train<sub>dataset</sub> = train<sub>dataset.with</sub><sub>options</sub>(options)
        
        AUTO sharding policy will apply DATA sharding policy as it failed to apply FILE sharding policy because of the
         following reason: Did not find a shardable source, walked to a node which is not a dataset: name:
         "FlatMapDataset/<sub>2</sub>"
        
        -   <https://community.intel.com/t5/Intel-DevCloud/How-to-disable-this-waring-message-in-Tensorflow-2-8-training/td-p/1388632>
    
    2.  Evaluation
    
        For users using Model.fit, Model.evaluate uses inline (distributed) evaluation under the hood.
        
        -   inline evaluation
        -   sidecar evaluation
    
    3.  algorithm
    
        explanation 2014 <https://www.usenix.org/system/files/conference/osdi14/osdi14-paper-li_mu.pdf>
        
        useful to compare "parameter server" to more general-purpose distributed systems:
        
        -   which mandate synchronous, iterative communication - iterative MapReduce framework
        -   Distributed GraphLab - asycnronously schedules communication using a graph abstraction.
        
        core goal of parameter server:
        
        -   preserving state between iterations
        
        Мы, как и прежде, создаём копии модели на всех воркерах. [8](#org189f243)
        
        -   парализм данных
    
    4.  model and fit
    
        <https://www.tensorflow.org/api_docs/python/tf/keras/Model>
        
        -   steps<sub>per</sub><sub>epoch</sub> - Total number of steps (batches of samples) before declaring one epoch finished and
            starting the next epoch
        -   
    
    5.  dataset
    
        batches that straddle epoch boundaries - пакетов, которые пересекают границы эпох
        
        -   repeat with no argument - infinity
        
        -   repeat + batch = batches that straddle epoch boundaries
        -   batch + repeat = clear epoch separation
        -   shuffle + repeat = show every element of one epoch before moving to the next
        -   repeat + shuffle =  mixes the epoch boundaries together
    
    6.  usage
    
            # ---- who do what
            cluster_resolver = tf.distribute.cluster_resolver.TFConfigClusterResolver()
            if cluster_resolver.task_type in ("worker", "ps"):
                # Start a TensorFlow server and wait.
                # Set the environment variable to allow reporting worker and ps failure to the
                # coordinator. This is a workaround and won't be necessary in the future.
                os.environ["GRPC_FAIL_FAST"] = "use_caller"
            
                server = tf.distribute.Server(
                    cluster_resolver.cluster_spec(),
                    job_name=cluster_resolver.task_type,
                    task_index=cluster_resolver.task_id,
                    protocol=cluster_resolver.rpc_layer or "grpc",
                    start=True)
                server.join()
            elif cluster_resolver.task_type == "evaluator":   # Run sidecar evaluation
                pass # note used
            else:  # Run the coordinator.
            
            
            
            
            # ---- ParameterServerStrategy object. will use all the available GPUs on each worker
            NUM_PS=1
            variable_partitioner = (
                tf.distribute.experimental.partitioners.MinSizePartitioner(
                    min_shard_bytes=(256 << 10),
                    max_shards=NUM_PS))
            
            strategy = tf.distribute.ParameterServerStrategy(
                cluster_resolver,
                variable_partitioner=variable_partitioner)
            
            # -- trivial model
            with strategy.scope(): # dataset_fn will be wrapped into a tf.function and then executed on each worker to generate the data pipeline.
              model = tf.keras.models.Sequential([tf.keras.layers.Dense(10)])
              model.compile(tf.keras.optimizers.legacy.SGD(), loss="mse", steps_per_execution=10)
    
    7.  usage working parameter server strategy for TF 2.0
    
            import tensorflow as tf
            import os
            # ---- who do what
            cluster_resolver = tf.distribute.cluster_resolver.TFConfigClusterResolver()
            
            # -- set GPU for worker
            def set_gpu():
                gpus = tf.config.list_physical_devices('GPU')
                if gpus:
                    # Restrict TensorFlow to only use the first GPU
                    try:
                        tf.config.set_visible_devices(gpus[0], 'GPU')
                        logical_gpus = tf.config.list_logical_devices('GPU')
                        print(len(gpus), "Physical GPUs,", len(logical_gpus), "Logical GPU")
                    except RuntimeError as e:
                        # Visible devices must be set before GPUs have been initialized
                        print(e)
            
            if cluster_resolver.task_type in ("worker"):
                set_gpu()
            
            # -- wait for task for worker and ps
            if cluster_resolver.task_type in ("worker", "ps"):
                # Start a TensorFlow server and wait.
                # Set the environment variable to allow reporting worker and ps failure to the
                # coordinator. This is a workaround and won't be necessary in the future.
                os.environ["GRPC_FAIL_FAST"] = "use_caller"
            
                server = tf.distribute.Server(
                    cluster_resolver.cluster_spec(),
                    job_name=cluster_resolver.task_type,
                    task_index=cluster_resolver.task_id,
                    protocol=cluster_resolver.rpc_layer or "grpc",
                    start=True)
                print("cluster_resolver.task_type", cluster_resolver.task_type)
                print("cluster_resolver.task_id", cluster_resolver.task_id)
                print("cluster_resolver.rpc_layer", cluster_resolver.rpc_layer or "grpc")
                server.join()
            elif cluster_resolver.task_type == "evaluator":   # Run sidecar evaluation
                pass # note used
            else:  # Run the coordinator.
                # ---- ParameterServerStrategy object. will use all the available GPUs on each worker
                NUM_PS=1
                variable_partitioner = (
                    tf.distribute.experimental.partitioners.MinSizePartitioner(
                        min_shard_bytes=(256 << 10),
                        max_shards=NUM_PS))
            
                strategy = tf.distribute.ParameterServerStrategy(
                    cluster_resolver,
                    variable_partitioner=variable_partitioner)
            
            
                # -- data
                mnist = tf.keras.datasets.mnist
                (x_train, y_train), (x_test, y_test) = mnist.load_data()
                x_train, x_test = x_train / 255.0, x_test / 255.0
            
                # -- trivial model
                with strategy.scope(): # dataset_fn will be wrapped into a tf.function and then executed on each worker to generate the data pipeline.
                    # -- Dataset TF class
                    batch_size=16
                    train_dataset = tf.data.Dataset.from_tensor_slices((x_train, y_train))
                    train_dataset = train_dataset.shuffle(60000).repeat().batch(batch_size)
                    validation_dataset = tf.data.Dataset.from_tensor_slices((x_test, y_test))
                    validation_dataset = validation_dataset.shuffle(60000).batch(batch_size)
                    # -- model
                    model = tf.keras.models.Sequential([
                        tf.keras.layers.Flatten(input_shape=(28, 28)),
                        tf.keras.layers.Dense(128, activation='relu'),
                        tf.keras.layers.Dropout(0.2),
                        tf.keras.layers.Dense(10)
                    ])
            
                    loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)
                    model.compile(optimizer='adam',
                                  loss=loss_fn,
                                  metrics=['accuracy'],
                                  pss_evaluation_shards='auto')
            
                    # -- train
                    model.fit(train_dataset, epochs=5, steps_per_epoch=300)
                    # -- save
                    model.save('aa.keras', overwrite=True, save_format="tf")  # The file needs to end with the .keras extension
                model = tf.keras.models.load_model('aa.keras')
                # -- checks the model's performance
                model.evaluate(validation_dataset, verbose=2)
                # -- inferece
                predictions = model(x_train[:1]).numpy()
                import numpy as np
                print(np.argmax(predictions))
                print(y_train[:1])
    
    8.  usage working parameter server strategy for TF 2.0 v2
    
    9.  usage3 dataset creator (comment several prams)
    
            import tensorflow as tf
            import os
            # ---- who do what
            cluster_resolver = tf.distribute.cluster_resolver.TFConfigClusterResolver()
            
            # -- set GPU for worker
            def set_gpu():
                gpus = tf.config.list_physical_devices('GPU')
                if gpus:
                    # Restrict TensorFlow to only use the first GPU
                    try:
                        tf.config.set_visible_devices(gpus[0], 'GPU')
                        logical_gpus = tf.config.list_logical_devices('GPU')
                        print(len(gpus), "Physical GPUs,", len(logical_gpus), "Logical GPU")
                    except RuntimeError as e:
                        # Visible devices must be set before GPUs have been initialized
                        print(e)
            
            if cluster_resolver.task_type in ("worker"):
                set_gpu()
            
            # -- wait for task for worker and ps
            if cluster_resolver.task_type in ("worker", "ps"):
                # Start a TensorFlow server and wait.
                # Set the environment variable to allow reporting worker and ps failure to the
                # coordinator. This is a workaround and won't be necessary in the future.
                os.environ["GRPC_FAIL_FAST"] = "use_caller"
            
                server = tf.distribute.Server(
                    cluster_resolver.cluster_spec(),
                    job_name=cluster_resolver.task_type,
                    task_index=cluster_resolver.task_id,
                    protocol=cluster_resolver.rpc_layer or "grpc",
                    start=True)
                print("cluster_resolver.task_type", cluster_resolver.task_type)
                print("cluster_resolver.task_id", cluster_resolver.task_id)
                print("cluster_resolver.rpc_layer", cluster_resolver.rpc_layer or "grpc")
                server.join()
            elif cluster_resolver.task_type == "evaluator":   # Run sidecar evaluation
                pass # note used
            else:  # Run the coordinator.
                # def dataset_fn(input_context):
                #     dataset = dataset.map(preprocessing_layer)
                #     return dataset
            
                # dataset_creator = tf.keras.utils.experimental.DatasetCreator(dataset_fn)
            
                # ---- ParameterServerStrategy object. will use all the available GPUs on each worker
                NUM_PS=1
                variable_partitioner = (
                    tf.distribute.experimental.partitioners.MinSizePartitioner(
                        min_shard_bytes=(256 << 10),
                        max_shards=NUM_PS))
            
                strategy = tf.distribute.ParameterServerStrategy(
                    cluster_resolver,
                    variable_partitioner=variable_partitioner)
            
            
                # -- data
                mnist = tf.keras.datasets.mnist
                (x_train, y_train), (x_test, y_test) = mnist.load_data()
                x_train, x_test = x_train / 255.0, x_test / 255.0
            
                # -- trivial model
                with strategy.scope(): # dataset_fn will be wrapped into a tf.function and then executed on each worker to generate the data pipeline.
                    # -- Dataset TF class
                    train_dataset = tf.data.Dataset.from_tensor_slices((x_train, y_train))
                    validation_dataset = tf.data.Dataset.from_tensor_slices((x_test, y_test))
                    # -- model
                    model = tf.keras.models.Sequential([
                        tf.keras.layers.Flatten(input_shape=(28, 28)),
                        tf.keras.layers.Dense(128, activation='relu'),
                        tf.keras.layers.Dropout(0.2),
                        tf.keras.layers.Dense(10)
                    ])
            
                    loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)
            
                    # steps_per_execution=10,
                    ,
                                  pss_evaluation_shards='auto'
                    model.compile(optimizer='adam',
                                  loss=loss_fn,
                                  metrics=['accuracy'])
            
                    # -- train
            
                    model.fit(x_train, y_train, epochs=5, steps_per_epoch=3)
                    model.fit(train_dataset, epochs=5, steps_per_epoch=3000)
                    # -- checks the model's performance
                    model.evaluate(validation_dataset, verbose=2)
                    # # -- inferece
                    # predictions = model(x_train[:1]).numpy()
                    # import numpy as np
                    # print(np.argmax(predictions))
                    # print(y_train[:1])
    
    10. mnist last version
    
            # Disable all GPUs. This prevents errors caused by all workers trying to use the same GPU. In a real-world application, each worker would be on a different machine.
            # import os
            # os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
            
            import tensorflow as tf
            import os
            import logging
            import multiprocessing
            
            tf.get_logger().setLevel(logging.DEBUG)
            
            # ---- who do what
            cluster_resolver = tf.distribute.cluster_resolver.TFConfigClusterResolver()
            
            # -- set GPU for worker
            def set_gpu():
                gpus = tf.config.list_physical_devices('GPU')
                if gpus:
                    # Restrict TensorFlow to only use the first GPU
                    try:
                        for device in gpus:
                            tf.config.experimental.set_memory_growth(device, True)
                        # tf.config.set_logical_device_configuration(
                        #         gpus[0],
                        #         [tf.config.LogicalDeviceConfiguration(memory_limit=3024)])
                        gpu_devices = tf.config.experimental.list_physical_devices('GPU')
                        tf.config.set_visible_devices(gpus[0], 'GPU')
                        logical_gpus = tf.config.list_logical_devices('GPU')
                        print()
                        print(len(gpus), "Physical GPUs,", len(logical_gpus), "Logical GPU")
                        print()
                        cpu_ph = tf.config.list_physical_devices('CPU')
                        cpu_lg = tf.config.list_logical_devices('CPU')
                        print(len(cpu_ph), "Physical CPUs,", len(cpu_lg), "Logical CPU")
            
                    except RuntimeError as e:
                        # Visible devices must be set before GPUs have been initialized
                        print(e)
            
            # if cluster_resolver.task_type in ("worker", "ps"):
            set_gpu() # for all
            
            # -- wait for task for worker and ps
            if cluster_resolver.task_type in ("worker", "ps"):
                # Start a TensorFlow server and wait.
                # Set the environment variable to allow reporting worker and ps failure to the
                # coordinator. This is a workaround and won't be necessary in the future.
                os.environ["GRPC_FAIL_FAST"] = "use_caller"
            
                # # Workers need some inter_ops threads to work properly.
                worker_config = tf.compat.v1.ConfigProto(device_count={'GPU': 1, 'CPU':1})
                if cluster_resolver.task_type in ("worker"):
                    NUM_WORKERS=len(cluster_resolver.cluster_spec().job_tasks('worker'))
                    if multiprocessing.cpu_count() < NUM_WORKERS + 1:
                        worker_config.inter_op_parallelism_threads = NUM_WORKERS + 1
            
                server = tf.distribute.Server(
                    cluster_resolver.cluster_spec(),
                    job_name=cluster_resolver.task_type,
                    task_index=cluster_resolver.task_id,
                    config=worker_config,
                    protocol=cluster_resolver.rpc_layer or "grpc",
                    start=True)
                print("cluster_resolver.task_type", cluster_resolver.task_type)
                print("cluster_resolver.task_id", cluster_resolver.task_id)
                print("cluster_resolver.rpc_layer", cluster_resolver.rpc_layer or "grpc")
                print("server.default_session_config", server.server_def.default_session_config)
                print()
                server.join()
            elif cluster_resolver.task_type == "evaluator":   # Run sidecar evaluation
                pass # note used
            else:  # Run the coordinator.
                # ---- ParameterServerStrategy object. will use all the available GPUs on each worker
                NUM_PS=len(cluster_resolver.cluster_spec().job_tasks('ps'))
                variable_partitioner = (
                    tf.distribute.experimental.partitioners.MinSizePartitioner(
                        min_shard_bytes=(256 << 10),
                        max_shards=NUM_PS))
            
                strategy = tf.distribute.ParameterServerStrategy(
                    cluster_resolver,
                    variable_partitioner=variable_partitioner)
            
            
                # -- data
                mnist = tf.keras.datasets.mnist
                (x_train, y_train), (x_test, y_test) = mnist.load_data()
                x_train, x_test = x_train / 255.0, x_test / 255.0
            
                # -- trivial model
                with strategy.scope(): # dataset_fn will be wrapped into a tf.function and then executed on each worker to generate the data pipeline.
                    # with tf.device('/device:GPU:0'):
                    batch_size=32
            
                    # -- Dataset TF class
                    train_dataset = tf.data.Dataset.from_tensor_slices((x_train, y_train))
            
                    # suppress warning at worker, maybe fix error.
                    options = tf.data.Options()
                    options.experimental_distribute.auto_shard_policy = tf.data.experimental.AutoShardPolicy.DATA
            
                    train_dataset = train_dataset.with_options(options)
                    train_dataset = train_dataset.shuffle(600).repeat().batch(batch_size).prefetch(300)
                    train_dataset = strategy.experimental_distribute_dataset(train_dataset)
                    validation_dataset = tf.data.Dataset.from_tensor_slices((x_test, y_test))
                    validation_dataset = validation_dataset.shuffle(600).batch(batch_size)
                    # -- model
                    model = tf.keras.models.Sequential([
                        tf.keras.layers.Flatten(input_shape=(28, 28)),
                        tf.keras.layers.Dense(400, activation='relu'),
                        # tf.keras.layers.Dense(3420, activation='relu'),
                        # tf.keras.layers.Dense(3420, activation='relu'),
                        tf.keras.layers.Dropout(0.2),
                        tf.keras.layers.Dense(10)
                    ])
            
                    loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)
                    model.compile(optimizer='adam',
                                  loss=loss_fn,
                                  metrics=['accuracy'],
                                  # not required: pss_evaluation_shards='auto'
                                  )
                    # print model
                    model.summary()
            
                    # -- train
                    model.fit(train_dataset, epochs=5, steps_per_epoch=300)
                    # -- save
                    model.save('aa.keras', overwrite=True, save_format="tf")  # The file needs to end with the .keras extension
                model = tf.keras.models.load_model('aa.keras')
                # -- checks the model's performance
                model.evaluate(validation_dataset, verbose=2)
                # -- inferece
                predictions = model(x_train[:1]).numpy()
                import numpy as np
                print(np.argmax(predictions))
                print(y_train[:1])
    
    11. resnet
    
            pip3 install tf-models-official==2.13 ; apt install -y emacs-nox
        
            # Disable all GPUs. This prevents errors caused by all workers trying to use the same GPU. In a real-world application, each worker would be on a different machine.
            # import os
            # os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
            
            import tensorflow as tf
            import os
            import logging
            import multiprocessing
            
            tf.get_logger().setLevel(logging.DEBUG)
            
            # ---- who do what
            cluster_resolver = tf.distribute.cluster_resolver.TFConfigClusterResolver()
            
            # -- set GPU for worker
            def set_gpu():
                gpus = tf.config.list_physical_devices('GPU')
                if gpus:
                    # Restrict TensorFlow to only use the first GPU
                    try:
                        for device in gpus:
                            tf.config.experimental.set_memory_growth(device, True)
                        # tf.config.set_logical_device_configuration(
                        #         gpus[0],
                        #         [tf.config.LogicalDeviceConfiguration(memory_limit=3024)])
                        gpu_devices = tf.config.experimental.list_physical_devices('GPU')
                        tf.config.set_visible_devices(gpus[0], 'GPU')
                        logical_gpus = tf.config.list_logical_devices('GPU')
                        print()
                        print(len(gpus), "Physical GPUs,", len(logical_gpus), "Logical GPU")
                        print()
                        cpu_ph = tf.config.list_physical_devices('CPU')
                        cpu_lg = tf.config.list_logical_devices('CPU')
                        print(len(cpu_ph), "Physical CPUs,", len(cpu_lg), "Logical CPU")
            
                    except RuntimeError as e:
                        # Visible devices must be set before GPUs have been initialized
                        print(e)
            
            # if cluster_resolver.task_type in ("worker", "ps"):
            set_gpu() # for all
            
            # -- wait for task for worker and ps
            if cluster_resolver.task_type in ("worker", "ps"):
                # Start a TensorFlow server and wait.
                # Set the environment variable to allow reporting worker and ps failure to the
                # coordinator. This is a workaround and won't be necessary in the future.
                os.environ["GRPC_FAIL_FAST"] = "use_caller"
            
                # # Workers need some inter_ops threads to work properly.
                worker_config = tf.compat.v1.ConfigProto(device_count={'GPU': 1, 'CPU':1})
                if cluster_resolver.task_type in ("worker"):
                    NUM_WORKERS=len(cluster_resolver.cluster_spec().job_tasks('worker'))
                    if multiprocessing.cpu_count() < NUM_WORKERS + 1:
                        worker_config.inter_op_parallelism_threads = NUM_WORKERS + 1
            
                server = tf.distribute.Server(
                    cluster_resolver.cluster_spec(),
                    job_name=cluster_resolver.task_type,
                    task_index=cluster_resolver.task_id,
                    config=worker_config,
                    protocol=cluster_resolver.rpc_layer or "grpc",
                    start=True)
                print("cluster_resolver.task_type", cluster_resolver.task_type)
                print("cluster_resolver.task_id", cluster_resolver.task_id)
                print("cluster_resolver.rpc_layer", cluster_resolver.rpc_layer or "grpc")
                print("server.default_session_config", server.server_def.default_session_config)
                print()
                server.join()
            elif cluster_resolver.task_type == "evaluator":   # Run sidecar evaluation
                pass # note used
            else:  # Run the coordinator.
                # ---- ParameterServerStrategy object. will use all the available GPUs on each worker
                NUM_PS=len(cluster_resolver.cluster_spec().job_tasks('ps'))
                variable_partitioner = (
                    tf.distribute.experimental.partitioners.MinSizePartitioner(
                        min_shard_bytes=(256 << 10),
                        max_shards=NUM_PS))
            
                strategy = tf.distribute.ParameterServerStrategy(
                    cluster_resolver,
                    variable_partitioner=variable_partitioner)
            
                # ---------------------------------------------------------------------------------------------------
                # ----------------------- Model, Dataset, Training --------------------------------------------------
                with strategy.scope()
                    from importlib import reload
                    reload("./resnet-model-and-data.py")
            
                # ------------ Part require modification for ParameterServer strategy
                train_dataset = tf.data.Dataset.from_tensor_slices((x_train.astype(str), y_train.astype(int))).skip(df.shape[0] - df.shape[0]//4)
                train_dataset = train_dataset.map(lambda x, y: encode_single_sample(x, y), tf.data.experimental.AUTOTUNE)
            
                train_dataset = train_dataset.batch(BATCH_SIZE).prefetch(100)
            
                validation_dataset = tf.data.Dataset.from_tensor_slices((x_valid.astype(str), y_valid.astype(int))).skip(df.shape[0] - df.shape[0]//4)
                validation_dataset = validation_dataset.map(lambda x, y: encode_single_sample(x, y), tf.data.experimental.AUTOTUNE)
                validation_dataset = train_dataset.prefetch(100)
            
                # ---- train ----
                model.fit(train_dataset, epochs=1)
            # -- checks the model's performance
            print("evaluate")
            model.evaluate(validation_dataset, verbose=2)
            # -- inferece
            print("inference", x_valid[0], y_valid[0])
            im, l = encode_single_sample(x_valid[0], y_valid[0])
            im = tf.expand_dims(im, axis=0)
            print("im", im.shape)
            predictions = model.predict(im, batch_size=1)
            print(np.argmax(predictions))
            print("label:", y_valid[0])
    
    12. Variable sharding
    
        for very large embeddings that may not fit in a single machine's memory
    
    13. TF<sub>CONFIG</sub>
    
        'TF<sub>CONFIG</sub>' environment variable if you use TFConfigClusterResolver.
    
    14. logging steps
    
            train_step = model.train_step
            def my_train_step(data):
                tf.print("step:", model._train_counter)
                return train_step(data)
            model.train_step = my_train_step
    
    15. troubleshooting
    
        -   after 1 epoch - TensorFlow device GPU:0 was not registered
            -   <https://github.com/tensorflow/tensorflow/issues/26208>
        
        auto<sub>shard.cc</sub>: AUTO sharding policy will apply DATA sharding policy as it failed to apply FILE sharding policy because of the following reason: Found an unshardable source dataset: name: "TensorSliceDataset/<sub>2</sub>"
        
        -   <https://stackoverflow.com/questions/72740907/tensorflow-cant-apply-sharing-policy-file-when-using-mirrored-strategy>
        -   dataset = # some dataset
        -   options = tf.data.Options()
        -   options.experimental<sub>distribute.auto</sub><sub>shard</sub><sub>policy</sub> = tf.data.experimental.AutoShardPolicy.FILE
        -   dataset = dataset.with<sub>options</sub>(options)  # use this as input for your model
        
        Attempting to perform BLAS operation using StreamExecutor without BLAS support" error occurs
        
        -   tf.config.set<sub>logical</sub><sub>device</sub><sub>configuration</sub>(gpus[0],[tf.config.LogicalDeviceConfiguration(memory<sub>limit</sub>=1024)])
        
        NOT<sub>FOUND</sub>: TensorFlow device GPU:1 was not registered - several times after start
        
        -   all pods should have equal amount of GPU:
            -   in YAML: resources: limits: nvidia.com/gpu: 1
            -   tf.compat.v1.ConfigProto(device<sub>count</sub>={'GPU': 1, 'CPU':1}) - for all pods
        
        SessionOptions: device<sub>count</sub>{key: "CPU", value:1,}, device<sub>count</sub>{key: "GPU", value:0,}
        
        -   enable GPU at chief and PS
        
        Successful NUMA node read from SysFS had negative value (-1)
        
        -   <https://gist.github.com/zrruziev/b93e1292bf2ee39284f834ec7397ee9f>
        -   apt install pciutils
    
    16. links
    
        -   <https://www.tensorflow.org/tutorials/distribute/parameter_server_training>
            -   <https://github.com/tensorflow/docs/blob/master/site/en/tutorials/distribute/parameter_server_training.ipynb>
        -   article tfv1.0 <https://support.huawei.com/enterprise/en/doc/EDOC1100164821/704ae7ed/distributed-training-based-on-the-ps-worker-architecture>
        -   keras faq <https://keras.io/getting_started/faq/#how-can-i-distribute-training-across-multiple-machines>
        -   keras distrib <https://keras.io/guides/distributed_training/>
        -   TF input for distributed training <https://www.tensorflow.org/tutorials/distribute/input>
        -   ps example <https://github.com/tensorflow/tensorflow/issues/57694>
        -   explanation 2014 <https://www.usenix.org/system/files/conference/osdi14/osdi14-paper-li_mu.pdf>
        -   <a id="org189f243"></a><https://habr.com/ru/companies/wunderfund/articles/663104/>


<a id="org724a1a3"></a>

### TF<sub>CONFIG</sub>

'TF<sub>CONFIG</sub>' environment variable is a JSON string

-   what tasks constitute a cluster
-   their addresses
-   each task's role in the cluster


<a id="orgc5ffd7c"></a>

### data sharding

-   <https://www.tensorflow.org/tutorials/distribute/keras>
-   <https://www.tensorflow.org/tutorials/distribute/input>
-   <https://www.tensorflow.org/guide/distributed_training>

tf.data.experimental.AutoShardPolicy

-   AUTO or FILE -  tf.data.Dataset that reads from files.

Note: tf.data.experimental.AutoShardPolicy.FILE - the actual per-step batch size may be smaller than the one
 you defined for the global batch size - when the remaining elements in the file are less than the global
 batch size


<a id="orga16a970"></a>

### links

-   <https://www.tensorflow.org/guide/distributed_training>
-   kubernetes template for TF <https://github.com/tensorflow/ecosystem/tree/master/kubernetes>
-   strategies <https://habr.com/ru/companies/wunderfund/articles/663104/>


<a id="org634a8aa"></a>

### monitor

1.  chargpt

    1.  TensorFlow Extended (TFX): TFX provides a comprehensive end-to-end pipeline for building,
    
    training, and deploying machine learning models. It includes components for monitoring the model
    training process and tracking model metrics during training.
    
    1.  TensorBoard: TensorBoard is a web-based tool provided by TensorFlow that allows you to
    
    visualize and monitor various aspects of your model training, such as loss, accuracy, and
    computational graphs. It can be integrated with Kubernetes to monitor the training process
    running on the cluster.
    
    1.  Kubernetes Dashboard: The Kubernetes dashboard is a web-based user interface that provides a
    
    visual representation of the cluster, including information about deployments, pods, jobs, and
    other resources. It can be used to monitor the status and progress of the neural network training
    on the Kubernetes cluster.
    
    1.  Prometheus and Grafana: Prometheus is a popular open-source monitoring and alerting platform
    
    that can be used to collect and store metrics from your TensorFlow cluster. Grafana is a
    visualization and analytics tool that can be integrated with Prometheus to create customizable
    dashboards for monitoring and analyzing training metrics.
    
    1.  KubeFlow: KubeFlow is an open-source project that provides a platform for end-to-end machine
    
    learning workflows on Kubernetes. It includes components for model training, hyperparameter
    tuning, model packaging, and serving. KubeFlow also provides monitoring capabilities to track the
    progress of your model training and performance metrics.

2.  TODO tensorboard


<a id="org8039652"></a>

## toy model MNIST

\#+NAME <https://www.tensorflow.org/tutorials/distribute/multi_worker_with_keras>

    import tensorflow as tf
    mnist = tf.keras.datasets.mnist
    
    (x_train, y_train), (x_test, y_test) = mnist.load_data()
    x_train, x_test = x_train / 255.0, x_test / 255.0
    # -- dataset
    batch_size=16
    train_dataset = tf.data.Dataset.from_tensor_slices((x_train, y_train))
    train_dataset = train_dataset.shuffle(60000).repeat().batch(batch_size)
    validation_dataset = tf.data.Dataset.from_tensor_slices((x_test, y_test))
    # -- model
    model = tf.keras.models.Sequential([
      tf.keras.layers.Flatten(input_shape=(28, 28)),
      tf.keras.layers.Dense(128, activation='relu'),
      tf.keras.layers.Dropout(0.2),
      tf.keras.layers.Dense(10)
    ])
    
    loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)
    model.compile(optimizer='adam',
                  loss=loss_fn,
                  metrics=['accuracy'])
    
    # -- train
    # model.fit(x_train, y_train, epochs=5)
    model.fit(train_dataset, epochs=5, steps_per_epoch=200)
    # -- checks the model's performance
    model.evaluate(x_test,  y_test, verbose=2)
    # -- inferece
    predictions = model(x_train[:1]).numpy()
    import numpy as np
    print(np.argmax(predictions))
    print(y_train[:1])


<a id="org7c50801"></a>

## logging

<https://stackoverflow.com/questions/40559667/how-to-redirect-tensorflow-logging-to-a-file>

tf.keras.utils.enable<sub>interactive</sub><sub>logging</sub>() When interactive logging is enabled, Keras displays logs via
 stdout. This provides the best experience when using Keras in an interactive environment such as a shell or a
 notebook.

tensor:

-   tf.debugging
-   tf.print

log:

-   tf.get<sub>logger</sub>() return logging.getLogger('tensorflow')


<a id="orgb05256e"></a>

### standard way

<https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/platform/tf_logging.py>


<a id="org657d6ad"></a>

### pipe

**script** allow get full output

    script -c 'python -i <<< "print \"test\""'

freezing at tree: disable buffering:

-   sed -u
-   grep &#x2013;line-buffered
-   perl -ne 'use IO::Handle ; printf "%s %s",  scalar time(), $\_ ; STDOUT->autoflush(1)'


<a id="orgc963607"></a>

### logging

import logging

log = logging.getLogger('tensorflow')
log.setLevel(logging.DEBUG)

formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')

fh = logging.FileHandler('tensorflow.log')
fh.setLevel(logging.DEBUG)
fh.setFormatter(formatter)
log.addHandler(fh)


<a id="orgcc67348"></a>

### links

<https://towardsdatascience.com/debugging-in-tensorflow-392b193d0b8?gi=05647b21a117>


<a id="org7156eac"></a>

## callbacks for model.fit


<a id="orgded9aa5"></a>

## USE CASES


<a id="org36f72bb"></a>

### TF 2.0 convert mode h5 to weight and arch

    from tensorflow import keras
    from tensorflow.keras.models import Model
    import os
    # use CPU
    os.environ['CUDA_VISIBLE_DEVICES'] = '-1'
    # parent_path = os.path.join(os.getcwd(), os.pardir)
    model_path = '/mnt/hit4/hit4user/PycharmProjects/cnn/text_or_not/saved_models/cnn_trained_model2020-09-10 09:26:34.553480.h5'
    print(model_path)
    
    model: Model = keras.models.load_model(model_path)
    import time
    
    name = 'cnn_trained_model2020-09-10 09:26:34.553480'
    os.mkdir(name)
    
    
    with open("./"+name+"/model_to_json.json", "w") as json_file:
        json_file.write(model.to_json(indent=4))
    
    model.save_weights('./'+name+'/')
    print("ok")
    time.sleep(1)


<a id="org179cf61"></a>

### imbalanced dataset

strategy:

-   oversample min to half of max
-   apply class<sub>weight</sub>

1.  class<sub>weight</sub>

    for binary:
    
        weight_for_0 = (1 / neg) * (total / 2.0)
        weight_for_1 = (1 / pos) * (total / 2.0)
        class_weight = {0: weight_for_0, 1: weight_for_1}
    
    for n-classes:
    
        n_samples / (n_classes * np.bincount(y))
    
    -   n<sub>samples</sub> is the total number of instances
    -   n<sub>classes</sub> is the number of classes
    -   np.bincount(y) is an array of the number of instances in each class
    
    apply weights:
    
        
    
        n_classes = sorted(set(y))
        n_samples = len(xy)
        n_samples / (n_classes * np.bincount(y))
        model.fit(class_weight=class_weight)
    
        y = [0]*5 + [1]*2 + [2]*5
        y = np.array(y)
        x = np.array(list(range(len(y))))
        xy= np.vstack([x,y]).transpose()
        # print(xy)
        classes = sorted(set(y))
        n_classes = len(classes)
        n_samples = len(xy)
        print(n_samples)
        print(n_classes)
        print(np.bincount(y))
        import numpy as np
        y = np.array(y)
        weights = n_samples / (n_classes * np.bincount(y))
        class_weight = {c:w for c,w in zip(classes, weights)}
        print(class_weight)
    
        12
        3
        [5 2 5]
        {0: 0.8, 1: 2.0, 2: 0.8}
    
        import numpy as np
        y = [0]*100 + [1]*10 + [2]*300
        u = sorted(set(y))
        n_classes=3
        n_samples=len(y)
        w = n_samples / (n_classes * np.bincount(y))
        class_weight = {x:y for x, y in zip(u, w)}
        print(np.bincount(y), "- np.bincount(y) first sort ASC")
        print("unique", u)
        print(class_weight)
    
        [100  10 300] - np.bincount(y) first sort ASC
        unique [0, 1, 2]
        {0: 1.3666666666666667, 1: 13.666666666666666, 2: 0.45555555555555555}

2.  numpy choose, oversampling

    <https://stackoverflow.com/questions/23391608/balance-numpy-array-with-over-sampling>
    
    1.  1
    
            import numpy as np
            y = [0]*100 + [1]*10 + [2]*300
            u = sorted(set(y))
            print(np.bincount(y), "- np.bincount(y) first sort ASC")
            # -- oversampling
            distrib = np.bincount(y)
            prob = 1/distrib[y].astype(float)
            prob /= prob.sum()
            
            print("distrib =", distrib, distrib[y])
            print("a =", np.arange(len(y)))
            print("count after(size) =", np.count_nonzero(distrib)*distrib.max())
            print("prob =", prob)
            sel = np.random.choice(np.arange(len(y)), size=np.count_nonzero(distrib)*distrib.max(), p=prob).astype(int)
            y = np.array(y)
            print(y[np.random.choice(np.arange(len(y)), size=np.count_nonzero(distrib)*distrib.max(), p=prob)])
            print(np.bincount(y[sel]))
        
            [100  10 300] - np.bincount(y) first sort ASC
            distrib = [100  10 300] [100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100
             100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100
             100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100
             100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100
             100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100 100
             100 100 100 100 100 100 100 100 100 100  10  10  10  10  10  10  10  10
              10  10 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300 300
             300 300 300 300 300 300 300 300 300 300 300 300 300 300]
            a = [  0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
              18  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35
              36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53
              54  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71
              72  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87  88  89
              90  91  92  93  94  95  96  97  98  99 100 101 102 103 104 105 106 107
             108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125
             126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143
             144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161
             162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179
             180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197
             198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215
             216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233
             234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251
             252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269
             270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287
             288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305
             306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323
             324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341
             342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359
             360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377
             378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395
             396 397 398 399 400 401 402 403 404 405 406 407 408 409]
            count after(size) = 900
            prob = [0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.00333333 0.00333333
             0.00333333 0.00333333 0.00333333 0.00333333 0.03333333 0.03333333
             0.03333333 0.03333333 0.03333333 0.03333333 0.03333333 0.03333333
             0.03333333 0.03333333 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111 0.00111111 0.00111111 0.00111111 0.00111111
             0.00111111 0.00111111]
            [2 0 0 2 1 1 2 1 2 0 0 2 1 0 0 0 2 0 1 1 1 2 0 2 1 1 2 2 0 1 0 2 0 1 0 2 0
             2 1 1 0 1 1 1 1 0 2 2 2 1 0 2 0 1 0 0 1 2 1 0 2 1 2 1 0 0 1 1 2 1 2 2 1 2
             2 0 2 1 0 1 1 1 0 0 0 1 2 1 2 1 0 2 2 1 1 2 1 2 1 1 0 1 0 2 2 1 2 2 2 1 2
             0 0 0 0 2 1 2 1 0 0 1 2 2 2 1 2 1 0 0 1 2 1 2 0 0 0 0 2 0 2 1 2 2 2 2 0 2
             2 1 0 0 0 0 2 1 1 2 1 1 0 2 2 2 0 2 2 1 2 2 2 2 2 2 1 0 2 2 0 2 0 1 1 2 2
             2 1 2 1 2 0 1 1 1 1 1 2 0 0 0 1 2 2 2 1 2 2 1 2 1 2 1 2 0 0 0 2 1 2 1 1 2
             0 1 2 2 0 2 1 1 0 2 0 2 0 1 0 0 2 0 2 0 1 0 2 0 1 2 2 0 0 0 1 0 0 1 0 0 0
             2 1 0 2 0 1 2 0 0 1 0 1 1 0 1 2 2 1 0 0 1 0 2 2 2 0 0 2 2 1 2 0 2 1 0 2 0
             2 0 1 0 1 1 0 2 0 1 1 1 0 0 0 0 1 0 1 0 1 2 0 0 0 0 2 0 0 0 2 0 1 2 0 2 1
             1 1 0 1 0 2 1 0 2 1 0 2 1 2 2 0 2 0 1 2 0 1 1 1 2 2 0 0 2 0 1 1 0 2 1 2 1
             0 0 2 1 0 2 0 2 0 2 2 0 0 1 2 0 2 0 1 1 1 0 2 1 2 2 1 0 1 2 0 2 2 1 2 1 2
             0 1 1 2 2 2 1 1 1 1 2 1 0 0 1 1 1 2 2 1 0 0 0 2 1 1 2 0 1 2 1 0 0 2 1 0 2
             2 1 2 0 1 1 0 1 1 1 0 1 2 2 2 2 1 1 2 0 1 1 1 1 0 2 2 0 2 0 2 1 2 1 2 2 0
             1 2 1 0 0 0 0 1 1 1 0 2 0 2 0 2 1 1 2 2 1 1 2 2 1 2 2 1 1 0 2 1 2 0 1 0 1
             0 2 0 2 1 2 2 0 1 2 1 1 1 1 2 0 0 0 2 1 2 2 0 1 2 1 2 0 0 0 2 1 2 0 1 0 0
             0 1 0 2 1 0 0 2 1 1 1 1 0 1 2 2 2 1 2 2 2 0 0 0 0 0 1 1 2 0 2 0 1 0 0 0 1
             1 0 2 2 2 2 0 2 1 2 1 1 1 1 2 2 0 0 1 1 0 0 2 2 2 0 1 2 2 1 0 2 1 1 0 0 1
             0 1 2 2 1 1 0 0 1 0 2 1 2 2 1 1 2 1 2 2 2 2 0 2 1 1 0 1 1 2 1 1 1 0 0 0 0
             2 2 1 0 2 2 1 1 0 2 1 2 2 0 2 0 0 2 0 1 2 2 1 0 1 2 2 0 0 1 1 0 2 0 2 2 1
             0 2 2 2 0 0 1 0 2 2 1 1 1 2 0 1 2 0 0 1 2 0 1 0 2 1 0 1 1 2 0 1 2 2 2 2 2
             2 2 0 2 0 0 1 1 1 0 0 2 0 1 0 0 1 1 2 0 2 0 1 1 2 0 1 0 1 2 1 1 0 2 0 0 0
             0 0 1 2 0 0 1 0 0 0 1 0 1 0 0 1 1 0 2 2 2 2 2 0 1 0 0 0 1 2 2 0 0 1 1 0 1
             0 0 0 1 1 2 0 0 2 0 0 0 1 0 1 2 2 2 0 1 1 0 0 2 0 0 1 0 0 1 1 2 2 2 1 1 2
             1 1 2 2 1 1 1 0 0 1 1 1 0 1 0 0 1 1 1 1 2 0 2 1 1 1 0 0 2 1 2 1 1 2 0 1 0
             2 2 2 0 0 0 0 0 0 2 2 1]
            [328 284 288]
    
    2.  2
    
        1.  simple 1d arrays
        
                import numpy as np
                y = [0]*5 + [1]*2 + [2]*10
                y = np.array(y)
                x = np.array(list(range(len(y))))
                xy= np.vstack([x,y]).transpose()
                # ---------------------
                unq, unq_idx = np.unique(y, return_inverse=True)
                print("unq, unq_idx", unq, unq_idx)
                unq_cnt = np.bincount(unq_idx)
                print("unq_cnt", unq_cnt)
                min = np.min(unq_cnt)
                max = np.max(unq_cnt)
                print("max", max, "min", min)
                # cnt = round((max - min)/2 + min)
                cnt = max
                print("cnt", cnt)
                print("y.shape[1:]", y.shape[1:])
                out = np.empty((cnt*len(unq) - len(y),), y.dtype)
                # # out = np.empty((cnt*len(unq) - len(xy),) + xy.shape[1:], xy.dtype)
                print("out.shape", out.shape, "xy.shape", xy.shape)
                slices = np.concatenate(([0], np.cumsum(cnt - unq_cnt)))
                print(slices)
                for j in range(len(unq)):
                    indices = np.random.choice(np.where(unq_idx==j)[0], cnt - unq_cnt[j])
                    print("indices", indices)
                    out[slices[j]:slices[j+1]] = y[indices]
                    print("out", out)
                # out = np.hstack((y, out))
                print(out)
                print(np.bincount(out), "- np.bincount(out) first sort ASC")
            
                unq, unq_idx [0 1 2] [0 0 0 0 0 1 1 2 2 2 2 2 2 2 2 2 2]
                unq_cnt [ 5  2 10]
                max 10 min 2
                cnt 10
                y.shape[1:] ()
                out.shape (13,) xy.shape (17, 2)
                [ 0  5 13 13]
                indices [0 4 0 4 4]
                out [                 0                  0                  0
                                  0                  0    140160696704256
                    140160713380912    140160696704416    140160696541680
                     94915202709280                  0 172834964494878845
                                240]
                indices [6 6 5 6 5 5 5 6]
                out [0 0 0 0 0 1 1 1 1 1 1 1 1]
                indices []
                out [0 0 0 0 0 1 1 1 1 1 1 1 1]
                [0 0 0 0 0 1 1 1 1 1 1 1 1]
                [5 8] - np.bincount(out) first sort ASC
        
        2.  simple xy
        
                import numpy as np
                y = [0]*5 + [1]*2 + [2]*10
                y = np.array(y)
                x = np.array(list(range(len(y))))
                xy= np.vstack([x,y]).transpose()
                # ---------------------
                unq, unq_idx = np.unique(y, return_inverse=True)
                print("unq, unq_idx", unq, unq_idx)
                unq_cnt = np.bincount(unq_idx)
                print("unq_cnt", unq_cnt)
                cnt = np.max(unq_cnt)
                print("cnt", cnt)
                print("y.shape[1:]", y.shape[1:])
                # out = np.empty((cnt*len(unq) - len(y),), y.dtype)
                out = np.empty((cnt*len(unq) - len(xy),) + xy.shape[1:], xy.dtype)
                print("out.shape", out.shape, "xy.shape", xy.shape)
                slices = np.concatenate(([0], np.cumsum(cnt - unq_cnt)))
                print(slices)
                for j in range(len(unq)):
                    indices = np.random.choice(np.where(unq_idx==j)[0], cnt - unq_cnt[j])
                    print("indices", indices)
                    out[slices[j]:slices[j+1]] = xy[indices]
                    print("out", out)
                # out = np.hstack((y, out))
                print(out)
                # print(np.bincount(out), "- np.bincount(out) first sort ASC")
            
                unq, unq_idx [0 1 2] [0 0 0 0 0 1 1 2 2 2 2 2 2 2 2 2 2]
                unq_cnt [ 5  2 10]
                cnt 10
                y.shape[1:] ()
                out.shape (13, 2) xy.shape (17, 2)
                [ 0  5 13 13]
                indices [2 3 3 2 4]
                out [[2 0]
                 [3 0]
                 [3 0]
                 [2 0]
                 [4 0]
                 [0 0]
                 [0 0]
                 [0 0]
                 [0 0]
                 [0 0]
                 [0 0]
                 [0 0]
                 [0 0]]
                indices [6 6 6 5 5 5 5 6]
                out [[2 0]
                 [3 0]
                 [3 0]
                 [2 0]
                 [4 0]
                 [6 1]
                 [6 1]
                 [6 1]
                 [5 1]
                 [5 1]
                 [5 1]
                 [5 1]
                 [6 1]]
                indices []
                out [[2 0]
                 [3 0]
                 [3 0]
                 [2 0]
                 [4 0]
                 [6 1]
                 [6 1]
                 [6 1]
                 [5 1]
                 [5 1]
                 [5 1]
                 [5 1]
                 [6 1]]
                [[2 0]
                 [3 0]
                 [3 0]
                 [2 0]
                 [4 0]
                 [6 1]
                 [6 1]
                 [6 1]
                 [5 1]
                 [5 1]
                 [5 1]
                 [5 1]
                 [6 1]]
        
        3.  full
        
                import numpy as np
                # ---------------------
                def calc_oversampl(xy):
                    unq, unq_idx = np.unique(xy[:, -1], return_inverse=True)
                    unq_cnt = np.bincount(unq_idx)
                    cnt = np.max(unq_cnt)
                    out = np.empty((cnt*len(unq) - len(xy),) + xy.shape[1:], xy.dtype)
                    slices = np.concatenate(([0], np.cumsum(cnt - unq_cnt)))
                    for j in range(len(unq)):
                        indices = np.random.choice(np.where(unq_idx==j)[0], cnt - unq_cnt[j])
                        out[slices[j]:slices[j+1]] = xy[indices]
                        # print(out)
                    return np.vstack((xy, v))
                
                out = [0]*5 + [1]*2 + [2]*1
                v = np.array(v)
                x = np.array(list(range(len(v))))
                xy= np.vstack([x,v]).transpose()
                print(xy)
                print(np.bincount(xy[:,1]))
                out = calc_oversampl(xy)
                # print(out)
                print(np.bincount(out[:,1]))
            
                [[0 0]
                 [1 0]
                 [2 0]
                 [3 1]
                 [4 0]
                 [5 1]
                 [6 2]
                 [7 0]
                 [8 0]
                 [9 0]]
                [7 2 1]
                [7 7 7]
        
        4.  half
        
                import numpy as np
                def oversample(xy, maxc=None):
                    unq, unq_idx = np.unique(xy[:, -1], return_inverse=True)
                    unq_cnt = np.bincount(unq_idx)
                    if maxc:
                        cnt = maxc
                    else:
                        cnt = np.max(unq_cnt)
                    out = np.empty((cnt*len(unq) - len(xy),) + xy.shape[1:], xy.dtype)
                    slices = np.concatenate(([0], np.cumsum(cnt - unq_cnt)))
                    for j in range(len(unq)):
                        indices = np.random.choice(np.where(unq_idx==j)[0], cnt - unq_cnt[j])
                        out[slices[j]:slices[j+1]] = xy[indices]
                    return np.vstack((xy, out))
                
                
                def oversamples_half(xy):
                    # - separate part of xy with classes which count of examples > max(count of examples)//2
                    unq, unq_idx = np.unique(xy[:, -1].astype(int), return_inverse=True)
                    unq_cnt = np.bincount(unq_idx)
                    cnt_half = np.max(unq_cnt) //2
                    use_u = unq[unq_cnt<cnt_half]
                    use_i = np.vectorize(lambda x: x in use_u)(xy[:,-1])
                    use = xy[use_i]
                    not_use = xy[~use_i]
                    # print("use", np.bincount(use[:,1].astype(int)))
                    out = oversample(use, maxc=cnt_half)
                    # print("out", np.bincount(out[:,1].astype(int)))
                    return np.vstack((out, not_use))
                
                xy = np.array(
                [[0,0],
                [1,0],
                [2,0],
                [3,1],
                [4,0],
                [5,1],
                [6,3],
                [7,0],
                [8,0],
                [9,0]]
                )
                # xy[:,1].astype(int)
                print(np.bincount(xy[:,1].astype(int)))
                out = calc_oversamples_half(xy)
                print(np.bincount(out[:,1].astype(int)))
                print(out)
                # print(np.bincount(out[:,1].astype(int)))
            
                [7 2 0 1]
                use [0 2 0 1]
                out [0 3 0 3]
                [7 3 0 3]
                [[3 1]
                 [5 1]
                 [6 3]
                 [3 1]
                 [6 3]
                 [6 3]
                 [0 0]
                 [1 0]
                 [2 0]
                 [4 0]
                 [7 0]
                 [8 0]
                 [9 0]]


<a id="org7f4d5ef"></a>

## common errors:

ValueError: Input 0 of layer "model" is incompatible with the layer: expected shape=(None, 200, 60, 1), found shape=(None, 60, 1)

-   print(type(input))
-   input: class =
-   tf.expand<sub>dims</sub>(encsample["image"], axis=0)

tf.data.Dataset	data = next(iterator)	Cannot add tensor to the batch: number of elemets does not match. Shapes are: [tensor]: [4], [batch]: [5]

-   solutions:
    -   .padded<sub>patch</sub>
    -   .apply(tf.data.experimental.dense<sub>to</sub><sub>ragged</sub><sub>batch</sub>(&#x2026;))


<a id="orgdfb5e41"></a>

# PyTorch

<data_science>
install: <https://pytorch.org/get-started/locally/>
examples <https://github.com/pytorch/examples/>

-   GPU Tensors, Dynamic Neural Networks and deep Python integration
-   This is closer to writing code in any language as a for loop in code will behave as a for loop inside the
    graph structure as well.
-   TensorFlow doesn’t handle dynamic graphs very well though there are some not so flexible and frankly quite
    limiting primitive dynamic constructs.
-   Intel MKL and NVIDIA (CuDNN, NCCL) support
-   have their own official model repositories,

PyTorch:

-   replacement for NumPy to use the power of GPUs
-   deep learning research platform

HuggingFace: most models Pytorch


<a id="orga7c25a1"></a>

## install

May 8, 2023

    pip3 install torch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 --index-url https://download.pytorch.org/whl/cu118

2024

    emerge --ask sci-libs/pytorch


<a id="org6fdfd4d"></a>

## history

-   2002 - Torch (picked up by Facebook AI Research). Lua + C. three key features:
    -   ease the development of numerical algorithms.
    -   easily extended
    -   fast
-   2017 PyTorch beta.
-   Caffe2 was merged into PyTorch at the end of March 2018
-   1.13
    -   BetterTransformer supports fastpath execution for common Transformer models during Inference
        out-of-the-box, without the need to modify the model.
    -   Functorch now in PyTorch Core Library - composable vmap (vectorization) and autodiff transforms.
-   PyTorch 2.0 has been released on 15 March 2023 (2-series)
-   PyTorch 2.2 SDPA FlashAttention-2, TorchInductor, device<sub>mesh</sub>, TORCH<sub>LOGS</sub>.


<a id="org5ab7a2d"></a>

### PyTorch 2.0

-   fundamentally changing and supercharging how PyTorch operates at compiler level under the hood.
-   faster performance and support for Dynamic Shapes and Distributed.
-   torch.compile -  from C++ back into Python - additive (and optional) feature
-   2.0 is 100% backward compatible

TorchDynamo

AOTAutograd

PrimTorch

TorchInductor

Compilation steps:

-   graph acquisition - TorchDynamo + AOTAutograd
-   graph lowering - ATen/ Prim IR
-   graph compilation - TorchInductor(default) powered by Triton. Features:
    -   your own backend
    -   nvFuser
    -   TVM
    -   XLA
    -   AITemplate
    -   TensorRT


<a id="org6020764"></a>

### FlashAttention-2 - approximate attention method

FlashAttention: Fast and Memory-Efficient Exact Attention with IO-Awareness

-   <https://arxiv.org/abs/2205.14135>

Transformers: time and memory complexity of **self-attention** are quadratic in sequence length.

FlashAttention trains Transformers faster than existing baselines: 15% end-to-end wall-clock speedup on BERT-large


<a id="orgb745fdf"></a>

## deployment

-   TorchServe
    -   endpoint specification, model archiving, and observing metrics
    -   provide REST and gRPC APIs
    -   still in its infancy
-   PyTorch Live - build upon old PyTorch Mobile
    -   uses JavaScript and React Native to create cross-platform iOS and Android AI-powered apps
    -   focuses on mobile only


<a id="org20d61c8"></a>

## ecosystem

<https://pytorch.org/ecosystem/>

-   PyTorch Hub <https://pytorch.org/docs/stable/hub.html>
    -   sharing repositories with pre-trained models
-   PyTorch-XLA <https://pytorch.org/xla/release/1.9/index.html>
    -   train PyTorch models on Google's Cloud TPUs
-   TorchVision - Computer Vision library <https://github.com/pytorch/vision> <https://pytorch.org/vision>
    -   example models TIMM (pyTorch IMage Models)  <https://github.com/rwightman/pytorch-image-models>
-   TorchText - Natural Language Processing <https://pytorch.org/text/stable/index.html>
    -   utilities and datasets
    -   Facebook AI Research Sequence-to-Sequence Toolkit <https://github.com/pytorch/fairseq>
-   TorchAudio -  ASR - <https://pytorch.org/audio/stable/index.html> and <https://github.com/pytorch/audio>
    -   includes popular audio models like DeepSpeech and Wav2Vec
    -   <https://pytorch.org/audio/stable/tutorials/speech_recognition_pipeline_tutorial.html>
    -   <https://pytorch.org/audio/stable/pipelines.html>
-   SpeechBrain - speech toolkit for PyTorch
    -   ASR, speaker recognition, verification and diarization, and more!
-   ESPnet - toolkit for end-to-end speech processing.
    -   speech recognition, translation, diarization,
-   AllenNLP - open-source NLP research library
-   


<a id="org7e7b397"></a>

## PyTorch 2.0

<https://pytorch.org/get-started/pytorch-2.0>

features:

-   model compilation or **compiled mode** - wraps your model and returns a compiled model.
    -   will allow models to be ahead-of-time compiled for lightning-fast execution.
    -   compiles the forward function to a more optimized version.
    -   When compiling the model, we give a few knobs to adjust it.
    -   drop-in replacement for torch.jit.script()
-   make distributed training simpler too
-   TorchDynamo allow access model attributes like weight and modify them.

famous models:

-   DALL-E 2
-   Stable Diffusion
-   ChatGPT.

torch.distributed

-   DistributedDataParallel (DDP) - relies on overlapping AllReduce communications with backwards computation
-   FullyShardedDataParallel (FSDP) - “beta”


<a id="org44e6a5c"></a>

## device


<a id="org5c7c00d"></a>

### HIP

    if torch.cuda.is_available() and torch.version.hip:
        # do something specific for HIP
    elif torch.cuda.is_available() and torch.version.cuda:
        # do something specific for CUDA


<a id="org8cf998a"></a>

### cuda test

    import torch
    
    # Set the device
    device = "cuda" if torch.cuda.is_available() else "cpu"
    # Set the device globally
    torch.set_default_device(device)
    
    if device == "cuda":
        GPU_SCORE = torch.cuda.get_device_capability()
        # optimization - perform faster matrix multiplications
        if GPU_SCORE >= (8, 0):
            print(f"[INFO] Using GPU with score: {GPU_SCORE}, enabling TensorFloat32 (TF32) computing (faster on new GPUs)")
            torch.backends.cuda.matmul.allow_tf32 = True
        else:
            print(f"[INFO] Using GPU with score: {GPU_SCORE}, TensorFloat32 (TF32) not available, to use it you need a GPU with score >= (8, 0)")
            torch.backends.cuda.matmul.allow_tf32 = False


<a id="org66edfdd"></a>

### TPU

torch<sub>xla</sub> - enable pytorch on XLA devices, like TPUs


<a id="org948ba54"></a>

## models - torchvision.models

    import torchvision.models as models
    # from torchvision.models import resnet50
    resnet = models.resnet50(weights=None) # random initialization

Torch Hub

    import torch
    
    # Option 1: passing weights param as string
    model = torch.hub.load("pytorch/vision", "resnet50", weights="IMAGENET1K_V2")


<a id="orgd650ff3"></a>

## nn.Module

-   model.parameters() - the learnable parameters (i.e. weights and biases
-   model.state<sub>dict</sub>() is simply a Python dictionary object that maps each layer to its parameter tensor.


<a id="org477f828"></a>

### nn.Linear

y = x\*(A<sup>T</sup>) + b , idk why ^T

    import numpy as np
    m = np.random.random((2,3)) # Linear(in_features=2, out_features=5)
    input = np.random.random((10,2))
    print(np.matmul(input,m).shape)

    (10, 3)


<a id="org501c7f4"></a>

### links

<https://pytorch.org/docs/stable/generated/torch.nn.Module.html>


<a id="orgd32d014"></a>

## Dataset and DataLoader, transform

-   Dataset - retrieves our dataset’s features and labels one sample at a time.
    
    -   from torch.utils.data import Dataset (**must be created**)
    -   Dataset - map-style datasets, - \_<sub>getitem</sub>\_<sub>()</sub> and \_<sub>len</sub>\_<sub>()</sub>, accessible with dataset[idx]
    -   IterableDataset - iterable-style datasets. - \_<sub>iter</sub>\_<sub>()</sub> - when called iter(dataset), could return a stream
    
    of data reading from a database, a remote server, or even logs generated in real time.
    
    -   multi-process data loading.
-   DataLoader - minibatches, reshuffle the data at every epoch to reduce model overfitting, and use Python’s multiprocessing to speed up data retrieval.
    -   Dataset -> Sampler -> BatchSampler + Dataset -> Data batch
    -   from torch.utils.data import DataLoader (**accept Dataset as constructor argument**)

samplers is to determine how batches should be formed. they are passed to a PyTorch Dataloader

-   When the dataloader is initialized, the sampler is also passed to it ( RandomSampler by default) which first
    create the sequence order in which the the samples in dataset is accessed using index.ie (1,2,3..N) where N =
    size of the dataset.

test Dataset:

    img, lab = train_dataset.__getitem__(0)

test DataLoader:

    img, lab = iter(train_loader).next()

Trnasform - part of Dataset implementation, applyed in \_<sub>getitem</sub>\_<sub>()</sub>

-   from torchvision import transforms <https://pytorch.org/vision/stable/transforms.html>

    sample = self.transform(sample) ; return sample

Approach 2):

-   train<sub>dataset</sub> = torchvision.datasets.ImageFolder(root='aa/train', transform=MyTransform)


<a id="org7c1ae89"></a>

### code

    import torch
    import torchvision.models as models
    from torch.utils.data import Dataset
    from torch.utils.data import DataLoader
    from torchvision.io import read_image
    from torchvision import transforms
    
    IMG_WIDTH = 64
    IMG_HEIGHT = 64
    
    # - image format
    default_float_dtype = torch.get_default_dtype()
    
    
    class LandmarkDataset(Dataset):
        def __init__(self, paths, labels, transform=None, target_transform=None):
            self.paths = paths
            self.labels = labels
            self.transform = transform
            self.target_transform = target_transform
    
        def __len__(self):
            return len(self.labels)
    
        def __getitem__(self, idx):
            image = read_image(self.paths[idx])
            image = image.to(dtype=default_float_dtype).div(255)
            label = self.labels[idx]
            if self.transform:
                image = self.transform(image)
            if self.target_transform:
                label = self.target_transform(label)
            return image, label
    
    def main():
        x_train, y_train = get_dataset()
        data_transform = transforms.Compose([
            transforms.RandomResizedCrop((IMG_HEIGHT, IMG_WIDTH)),
            # transforms.ToTensor()  # to [0.0, 1.0]
            ])
        train_dataset: Dataset = LandmarkDataset(x_train, y_train,
                                                 transform=data_transform)
        train_loader: DataLoader = DataLoader(train_dataset)
        # img, lab = train_dataset.__getitem__(0)
        img, lab = next(iter(train_loader))
        print(img, lab)


<a id="orgfff504a"></a>

### links

-   <https://pytorch.org/tutorials/beginner/basics/data_tutorial.html>
-   <https://pytorch.org/tutorials/beginner/data_loading_tutorial.html>
-   <https://pytorch.org/docs/stable/data.html>


<a id="org6cb2806"></a>

## Built-in datasets

all datasets return PIL Image: Image.fromarray(img.numpy(), mode="L")

-   from PIL import Image

training.pt We no longer cache the data in a custom binary, but simply read from the raw data directly.


<a id="orgaf4fafe"></a>

## train

    from datetime import datetime
    import torch
    import torchvision.models as models
    from torch.utils.data import Dataset
    from torch.utils.data import DataLoader
    from torchvision.io import read_image
    from torchvision import transforms
    
    
    class LandmarkDataset(Dataset):
        def __init__(self, paths, labels, transform=None, target_transform=None):
            self.paths = paths
            self.labels = labels
            self.transform = transform
            self.target_transform = target_transform
    
        def __len__(self):
            return len(self.labels)
    
        def __getitem__(self, idx):
            image = read_image(self.paths[idx])
            image = image.to(dtype=default_float_dtype).div(255)
            label = self.labels[idx]
            if self.transform:
                image = self.transform(image)
            if self.target_transform:
                label = self.target_transform(label)
            # return image, label
            return image.to(device), torch.tensor(label, dtype=torch.long).to(device)
    
    def train_one_epoch(epoch_index, training_loader, optimizer, model, loss_fn, tb_writer=None):
        """ training_loader is (inputs, labels) """
        running_loss = 0.
        last_loss = 0.
        avg_loss = 0.
    
        for i, data in enumerate(training_loader):
            inputs, labels = data
            optimizer.zero_grad()
            outputs = model(inputs)
            loss = loss_fn(outputs, labels)
            loss.backward()
            optimizer.step()
    
            running_loss += loss.item()
    
            if i % 10 == 9:
                avg_loss = running_loss / (1 if i // 10 == 0 else i // 10)
                print('  batch {} loss: {}'.format(i + 1, round(avg_loss,2)))
                # tb_x = epoch_index * len(training_loader) + i + 1
                # tb_writer.add_scalar('Loss/train', last_loss, tb_x)
                # running_loss = 0.
    
        return avg_loss
    
    def train(model, training_loader, validation_loader, loss_fn, wirter=None): # require import datetime
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        # writer = SummaryWriter('runs/fashion_trainer_{}'.format(timestamp))
        epoch_number = 0
        EPOCHS = 2
        best_vloss = 1_000_000.
    
        for epoch in range(EPOCHS):
            print('EPOCH {}:'.format(epoch_number + 1))
            # ---- train ----
            model.train(True)
            avg_loss = train_one_epoch(epoch_number,
                                       training_loader=training_loader,
                                       # optimizer=torch.optim.SGD(model.parameters(), lr=0.001, momentum=0.9),
                                       optimizer=torch.optim.Adam(model.parameters()),
                                       model=model,
                                       loss_fn=loss_fn,
                                       tb_writer=None)
    
            running_vloss = 0.0
            # ---- validate ----
            model.eval()
    
            # - Disable gradient computation and reduce memory consumption.
            with torch.no_grad():
                for i, vdata in enumerate(validation_loader):
                    vinputs, vlabels = vdata
                    voutputs = model(vinputs)
                    vloss = loss_fn(voutputs, vlabels)
                    running_vloss += vloss
    
            avg_vloss = running_vloss / (i + 1)
            print('LOSS train {} valid {}'.format(avg_loss, avg_vloss))
    
            # writer.add_scalars('Training vs. Validation Loss',
            #                 { 'Training' : avg_loss, 'Validation' : avg_vloss },
            #                 epoch_number + 1)
            # writer.flush()
    
            if avg_vloss < best_vloss:
                best_vloss = avg_vloss
                model_path = 'model_{}_{}'.format(timestamp, epoch_number)
                torch.save(model.state_dict(), model_path)  # save the model's state
    
            epoch_number += 1
    
    def create_model(classes) -> torch.nn.Module:
        resnet = models.resnet50(weights=None)
        num_ftrs = resnet.fc.in_features
        resnet.fc = torch.nn.Linear(num_ftrs, out_features=classes)
        return resnet
    
    
    def main():
        x_train, x_valid, y_train, y_valid, OUTPUT_SIZE = get_dataset()
        data_transform = transforms.Compose([
            transforms.RandomResizedCrop((IMG_HEIGHT, IMG_WIDTH)),
            # transforms.ToTensor()  # to [0.0, 1.0]
            ])
        train_dataset: Dataset = LandmarkDataset(x_train, y_train,
                                                 transform=data_transform)
        from torch.utils.data.dataloader import default_collate
        generator = torch.Generator(device=device)
        train_loader: DataLoader = DataLoader(train_dataset,
                                              shuffle=True, batch_size=BATCH_SIZE,
                                              generator=generator)  # , pin_memory_device=device, pin_memory=True
    
        # collate_fn=lambda x: (default_collate(x[0]).to(device), default_collate(torch.from_numpy(x[1])).to(device))
        valid_dataset: Dataset = LandmarkDataset(x_valid, y_valid,
                                                 transform=data_transform)
        valid_loader: DataLoader = DataLoader(valid_dataset)
        # img, lab = train_dataset.__getitem__(0)
        # img, lab = next(iter(train_loader))
        # print(img, lab)
        # -- train
        model: torch.nn.Module = create_model(OUTPUT_SIZE)  # load model definition
        print(model)
        train(model, training_loader=train_loader, validation_loader=valid_loader,
              loss_fn=torch.nn.CrossEntropyLoss())
        # -- save, load and inference
        import os
        PATH = os.path.join(os.getcwd(), 'savedmodel')
        torch.save(model.state_dict(), PATH)


<a id="org953bd45"></a>

### links

<https://pytorch.org/tutorials/beginner/introyt/trainingyt.html>


<a id="org9cf146a"></a>

## train (old)

data, target = data.to(device), target.to(device)

optimizer.zero<sub>grad</sub>()

output = model(data)

loss = F.nll<sub>loss</sub>(output, target)

loss.backward(retain<sub>graph</sub>=True)

optimizer.step()

When we call **loss.backward()** - all Tensors in the graph that has requires<sub>grad</sub>=True will have their .grad
Tensor accumulated with the gradient.


<a id="org2d2bcba"></a>

## loss, inference, accuracy

    import torch
    loss = torch.nn.CrossEntropyLoss()
    input = torch.randn(3, 5, requires_grad=True)
    target = torch.empty(3, dtype=torch.long).random_(5)
    output = loss(input, target)
    output.backward()
    print(output)
    
    
    # after save:
    model = create_model(OUTPUT_SIZE)
    model.load_state_dict(torch.load(PATH))
    model.eval()
    # -- inference
    img, lab = next(iter(DataLoader(valid_dataset, shuffle=True, batch_size=1
                                    ,generator=generator
                                    )))  # get random item
    print("lab", lab)
    result: torch.Tensor = model(img)
    import numpy as np
    print("result", np.argmax(result.cpu().detach().numpy()))

Accuracy:

    import torch
    target = torch.tensor([0, 1, 1])
    preds = torch.tensor([[0.1, 0.9, 0], [0.3, 0.1, 0.6], [0.2, 0.5, 0.3]])
    accuracy = torch.metrics.Accuracy(task="multiclass", num_classes=3, top_k=2)
    print(accuracy(preds, target))


<a id="orgb2dee08"></a>

## numpy

    import torch
    x = torch.empty(5, 3)
    print(x)
    
    print(x.size())
    >> torch.Size([5, 3])
    # Converting a Torch Tensor to a NumPy Array
    n = torch.ones(5).numpy()
    # Converting NumPy Array to Torch Tensor
    t = torch.from_numpy(a)
    # tensors on CUDA
    if torch.cuda.is_available():
        device = torch.device("cuda")          # a CUDA device object
        y = torch.ones_like(x, device=device)
        x = x.to(device)
        z = x + y
        print(z.to("cpu", torch.double)) # back to cpu
    
    # random
    x = torch.randn(4, 4) # from a normal distribution - mean 0 and variance 1
    x = torch.rand(4, 4) # on the interval [0,1)
    
    # resize/reshape
    y = x.view(16) # line
    z = x.view(-1, 8) # column:  torch.Size([2, 8])
    
    # torch.squeeze(input, dim=None, out=None) → Tensor
    # tensor(A×1×B×C×1×D)
    >>> x = torch.zeros(2, 1, 2, 1, 2)
    torch.Size([2, 1, 2, 1, 2])
    # выжимать remove 1 size dimensions
    >>> y = torch.squeeze(x) #
    torch.Size([2, 2, 2])
    >>> y = torch.squeeze(x, 0)
    torch.Size([2, 1, 2, 1, 2])
    >>> y = torch.squeeze(x, 1)
    torch.Size([2, 2, 1, 2])
    
    # Concatenates sequence of tensors along a new dimension:
    torch.stack(tensors: list, dim=0, out=None) → Tensor
    
    # transpose
    t = torch.tensor([[1,2,3],[4,5,6]])
    torch.transpose(t,0,1)
    >tensor([[1, 4],
            [2, 5],
            [3, 6]])
    
    # add dimension
    >> torch.Size([1, 2])
    a.unsqueeze(0).size()
    >> torch.Size([1, 1, 2])
    a.unsqueeze(-1).size()
    >> torch.Size([1, 2, 1])


<a id="orgeb38424"></a>

## layers

    import torch.nn as nn
    import torch.nn.functional as F # activation

-   CNN
    -   nn.Conv2d(1, 32, kernel<sub>size</sub>=(3, 3), stride=(1, 1)) -
-   


<a id="org3c6e4f2"></a>

## noise

           r = (0.1**0.9)*torch.randn(self.levels, batch, self.hidden_size//2, dtype=dtype, device=self.device)
    self.hidden1 = (self.hidden1[0] + r, self.hidden1[1] + r)


<a id="orgcb88a32"></a>

## basic nn and gradient

input 32x32

torch.Size([64, 32, 26, 26]) - batch<sub>size</sub>, output<sub>channels</sub>, Height, Width

Trainable parameters:

    params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"Trainable parameters: {params:,}")

Recap:

-   torch.Tensor - A multi-dimensional array with support for autograd operations like backward(). Also holds
    the gradient w.r.t. the tensor.
    -   IF .requires<sub>grad</sub> as True - it starts to track all operations on it. accumulated into .grad
    -   with torch.no<sub>grad</sub>(): - for testing
-   nn.Module - Neural network module. Convenient way of encapsulating parameters, with helpers for moving them
    to GPU, exporting, loading, etc.
-   nn.Parameter - A kind of Tensor, that is automatically registered as a parameter when assigned as an
    attribute to a Module.
-   autograd.Function - Implements forward and backward definitions of an autograd operation. Every Tensor
    operation creates at least a single Function node that connects to functions that created a Tensor and
    encodes its history.


<a id="org564bdcd"></a>

### first

    import torch
    import torch.nn as nn # layer
    import torch.nn.functional as F # activation
    
    
    class Net(nn.Module):
    
        def __init__(self):
            super(Net, self).__init__()
            # 1 input image channel, 6 output channels, 3x3 square convolution
            # kernel
            self.conv1 = nn.Conv2d(1, 6, 3) # input 1 image to 6, 3x3 kernel, stride=1 default
            self.conv2 = nn.Conv2d(6, 16, 3)
            self.dropout1 = nn.Dropout2d(0.25)
            # an affine operation: y = Wx + b
            self.fc1 = nn.Linear(16 * 6 * 6, 120)  # 6*6 from image dimension
            self.fc2 = nn.Linear(120, 84)
            self.fc3 = nn.Linear(84, 10)
    
        def forward(self, x):
            # Max pooling over a (2, 2) window
            x = F.max_pool2d(F.relu(self.conv1(x)), (2, 2))
            # If the size is a square you can only specify a single number
            x = F.max_pool2d(F.relu(self.conv2(x)), 2)
            x = x.view(-1, self.num_flat_features(x))
            x = F.relu(self.fc1(x))
            x = self.dropout1(x)
            x = F.relu(self.fc2(x))
            x = self.fc3(x)
            return x
    
        def num_flat_features(self, x):
            size = x.size()[1:]  # all dimensions except the batch dimension
            num_features = 1
            for s in size:
                num_features *= s
            return num_features
    
    
    net = Net()
    print(net) # print all layers
    params = list(net.parameters()) # learnable parameters of a model
    
    
    
    
    import torch.optim as optim
    
    # create your optimizer
    optimizer = optim.SGD(net.parameters(), lr=0.01)
    
    # in your training loop:
    optimizer.zero_grad()   # zero the gradient buffers
    output = net(input)
    loss = criterion(output, target)
    loss.backward()
    optimizer.step()    # Does the updatee


<a id="org75c8bff"></a>

### second

    import argparse
    import torch
    import torch.nn as nn
    import torch.nn.functional as F
    import torch.optim as optim
    from torchvision import datasets, transforms
    from torch.optim.lr_scheduler import StepLR
    
    
    class Net(nn.Module):
        def __init__(self):
            super(Net, self).__init__()
            self.conv1 = nn.Conv2d(1, 32, 3, 1)
            self.conv2 = nn.Conv2d(32, 64, 3, 1)
    
            self.dropout1 = nn.Dropout2d(0.25)
            self.dropout2 = nn.Dropout2d(0.5)
            self.fc1 = nn.Linear(9216, 128)
            self.fc2 = nn.Linear(128, 10)
    
        def forward(self, x):
            x = self.conv1(x)
            x = F.relu(x)
            x = self.conv2(x)
            x = F.max_pool2d(x, 2)
            x = self.dropout1(x)
            x = torch.flatten(x, 1)
            x = self.fc1(x)
            x = F.relu(x)
            x = self.dropout2(x)
            x = self.fc2(x)
            output = F.log_softmax(x, dim=1)
            return output
    
    
    def train(args, model: nn.Module, device, train_loader, optimizer, epoch):
        model.train()
        for batch_idx, (data, target) in enumerate(train_loader):
            data, target = data.to(device), target.to(device)
            optimizer.zero_grad()
            output = model(data)
            loss = F.nll_loss(output, target)
            loss.backward()
            optimizer.step()
            if batch_idx % args.log_interval == 0:
                print('Train Epoch: {} [{}/{} ({:.0f}%)]\tLoss: {:.6f}'.format(
                    epoch, batch_idx * len(data), len(train_loader.dataset),
                    100. * batch_idx / len(train_loader), loss.item()))
    
    
    def test(args, model: nn.Module, device, test_loader):
        model.eval()
        test_loss = 0
        correct = 0
        with torch.no_grad():
            for data, target in test_loader:
                data, target = data.to(device), target.to(device)
                output = model(data)
                test_loss += F.nll_loss(output, target, reduction='sum').item()  # sum up batch loss
                pred = output.argmax(dim=1, keepdim=True)  # get the index of the max log-probability
                correct += pred.eq(target.view_as(pred)).sum().item()
    
        test_loss /= len(test_loader.dataset)
    
        print('\nTest set: Average loss: {:.4f}, Accuracy: {}/{} ({:.0f}%)\n'.format(
            test_loss, correct, len(test_loader.dataset),
            100. * correct / len(test_loader.dataset)))
    
    
    def main():
        # Training settings
        parser = argparse.ArgumentParser(description='PyTorch MNIST Example')
        parser.add_argument('--batch-size', type=int, default=64, metavar='N',
                            help='input batch size for training (default: 64)')
        parser.add_argument('--test-batch-size', type=int, default=1000, metavar='N',
                            help='input batch size for testing (default: 1000)')
        parser.add_argument('--epochs', type=int, default=14, metavar='N',
                            help='number of epochs to train (default: 14)')
        parser.add_argument('--lr', type=float, default=1.0, metavar='LR',
                            help='learning rate (default: 1.0)')
        parser.add_argument('--gamma', type=float, default=0.7, metavar='M',
                            help='Learning rate step gamma (default: 0.7)')
        parser.add_argument('--no-cuda', action='store_true', default=False,
                            help='disables CUDA training')
        parser.add_argument('--seed', type=int, default=1, metavar='S',
                            help='random seed (default: 1)')
        parser.add_argument('--log-interval', type=int, default=10, metavar='N',
                            help='how many batches to wait before logging training status')
    
        parser.add_argument('--save-model', action='store_true', default=False,
                            help='For Saving the current Model')
        args = parser.parse_args()
        use_cuda = not args.no_cuda and torch.cuda.is_available()
        # random seed
        torch.manual_seed(args.seed)
    
        device = torch.device("cuda" if use_cuda else "cpu")
    
        kwargs = {'num_workers': 1, 'pin_memory': True} if use_cuda else {}
        train_loader = torch.utils.data.DataLoader(
            datasets.MNIST('../data', train=True, download=True,
                           transform=transforms.Compose([
                               transforms.ToTensor(),
                               transforms.Normalize((0.1307,), (0.3081,))
                           ])),
            batch_size=args.batch_size, shuffle=True, **kwargs)
        test_loader = torch.utils.data.DataLoader(
            datasets.MNIST('../data', train=False, transform=transforms.Compose([
                               transforms.ToTensor(),
                               transforms.Normalize((0.1307,), (0.3081,))
                           ])),
            batch_size=args.test_batch_size, shuffle=True, **kwargs)
    
        # load model to GPU
        model: nn.Module = Net()
        # print(model.shape)
        # print(model.parameters())
        # params = list(model.)
        # print('params', params)
        params = sum(p.numel() for p in model.parameters() if p.requires_grad)
        print(f"Trainable parameters: {params:,}")
        model = Net().to(device)
    
        # optimizer
        optimizer = optim.Adadelta(model.parameters(), lr=args.lr)
    
        scheduler = StepLR(optimizer, step_size=1, gamma=args.gamma)
        for epoch in range(1, args.epochs + 1):
    h        test(args, model, device, test_loader)
            scheduler.step()
    
        if args.save_model:
            torch.save(model.state_dict(), "mnist_cnn.pt")
    
    
    if __name__ == '__main__':
        main()


<a id="org4bdfebe"></a>

## LSTM

-   tutor <https://pytorch.org/tutorials/beginner/nlp/sequence_models_tutorial.html>
-   doc <https://pytorch.org/docs/stable/nn.html#recurrent-layers>
-   from Stratch <https://mlexplained.com/2019/02/15/building-an-lstm-from-scratch-in-pytorch-lstms-in-depth-part-1/>
-   article <https://towardsdatascience.com/lstm-for-time-series-prediction-de8aeb26f2ca>
-   article <https://stackabuse.com/time-series-prediction-using-lstm-with-pytorch-in-python/>
-   github chinese <https://github.com/TankZhouFirst/Pytorch-LSTM-Stock-Price-Predict/blob/master/LSTM%E5%AE%9E%E7%8E%B0%E8%82%A1%E7%A5%A8%E9%A2%84%E6%B5%8B--pytorch%20%E7%89%88%E6%9C%AC-V2.0.ipynb>


<a id="org05e574f"></a>

### nn.LSTM

expects all of its inputs to be 3D tensors:

-   sequence itself
-   indexes instances in the mini-batch
-   indexes elements of the input

    rnn = nn.LSTM(input_size=10, hidden_size=20, num_layers=2)
    input = torch.randn(5, 3, 10)
    h0 = torch.randn(2, 3, 20) # layers, batch size, hidden
    c0 = torch.randn(2, 3, 20)
    output, (hn, cn) = rnn(input, (h0, c0))

If the following conditions are satisfied, persistent algorithm can be selected to improve performance:

1.  cudnn is enabled
2.  input data is on the GPU
3.  input data has dtype torch.float16
4.  V100 GPU is used,
5.  input data is not in PackedSequence format


<a id="org3c2df0d"></a>

### nn.LSTMCell

    rnn = nn.LSTMCell(input_size=10, hidden_size=20)
    input = torch.randn(6, 3, 10) # 3=batch size
    hx = torch.randn(3, 20) # batch_size, hidden_size
    cx = torch.randn(3, 20)
    output = []
    for i in range(6):
      hx, cx = rnn(input[i], (hx, cx))
      output.append(hx)


<a id="org8bbd3f2"></a>

### numbers of parameters

    gate_size = 4 * hidden_size # = 4
    w_ih = Parameter(torch.Tensor(gate_size, layer_input_size))
    w_hh = Parameter(torch.Tensor(gate_size, hidden_size))
    b_ih = Parameter(torch.Tensor(gate_size))

    b_hh = Parameter(torch.Tensor(gate_size))
    layer_params = (w_ih, w_hh, b_ih, b_hh) # one lstm

4\*4 = 16 parameters

    4*(4*is + 4*hs  + 4 + 4) # for first layer


<a id="org1697acc"></a>

### basic

    import torch
    import torch.nn as nn
    
    # num_layers = 1, bias=True, bidirectional=False
    lstm = nn.LSTM(input_size=1, hidden_size=1)
    inputs = [torch.randn(1, 1) for _ in range(5)]  # make a sequence of length 5
    
    # initialize the hidden state.
    hidden = (torch.randn(1, 1, 1),
              torch.randn(1, 1, 1))
    for i in inputs:
        # Step through the sequence one element at a time.
        # after each step, hidden contains the hidden state.
        out, hidden = lstm(i.view(1, 1, -1), hidden)
    
    # alternatively, we can do the entire sequence all at once.
    # the first value returned by LSTM is all of the hidden states throughout
    # the sequence. the second is just the most recent hidden state
    # (compare the last slice of "out" with "hidden" below, they are the same)
    # The reason for this is that:
    # "out" will give you access to all hidden states in the sequence
    # "hidden" will allow you to continue the sequence and backpropagate,
    # by passing it as an argument  to the lstm at a later time
    # Add the extra 2nd dimension
    inputs = torch.cat(inputs).view(len(inputs), 1, -1)
    hidden = (torch.randn(1, 1, 1), torch.randn(1, 1, 1))  # clean out hidden state
    out, (hn, cn) = lstm(inputs, hidden)
    params = sum(p.numel() for p in lstm.parameters())
    print(list(lstm.parameters()))
    print(f"Trainable parameters: {params:,}")
    print(out)
    print(hn)
    print(cn)


<a id="orgdee7d34"></a>

### tagging model

    class LSTMTagger(nn.Module):
    
        def __init__(self, embedding_dim, hidden_dim, vocab_size, tagset_size):
            super(LSTMTagger, self).__init__()
            self.hidden_dim = hidden_dim
    
            self.word_embeddings = nn.Embedding(vocab_size, embedding_dim)
    
            # The LSTM takes word embeddings as inputs, and outputs hidden states
            # with dimensionality hidden_dim.
            self.lstm = nn.LSTM(embedding_dim, hidden_dim)
    
            # The linear layer that maps from hidden state space to tag space
            self.hidden2tag = nn.Linear(hidden_dim, tagset_size)
    
        def forward(self, sentence):
            embeds = self.word_embeddings(sentence)
            lstm_out, _ = self.lstm(embeds.view(len(sentence), 1, -1))
            tag_space = self.hidden2tag(lstm_out.view(len(sentence), -1))
            tag_scores = F.log_softmax(tag_space, dim=1)
            return tag_scores
    
    model = LSTMTagger(EMBEDDING_DIM, HIDDEN_DIM, len(word_to_ix), len(tag_to_ix))
    loss_function = nn.NLLLoss()
    optimizer = optim.SGD(model.parameters(), lr=0.1)
    
    # See what the scores are before training
    # Note that element i,j of the output is the score for tag j for word i.
    # Here we don't need to train, so the code is wrapped in torch.no_grad()
    with torch.no_grad():
        inputs = prepare_sequence(training_data[0][0], word_to_ix)
        tag_scores = model(inputs)
        print(tag_scores)
    
    for epoch in range(300):  # again, normally you would NOT do 300 epochs, it is toy data
        for sentence, tags in training_data:
            # Step 1. Remember that Pytorch accumulates gradients.
            # We need to clear them out before each instance
            model.zero_grad()
    
            # Step 2. Get our inputs ready for the network, that is, turn them into
            # Tensors of word indices.
            sentence_in = prepare_sequence(sentence, word_to_ix)
            targets = prepare_sequence(tags, tag_to_ix)
    
            # Step 3. Run our forward pass.
            tag_scores = model(sentence_in)
    
            # Step 4. Compute the loss, gradients, and update the parameters by
            #  calling optimizer.step()
            loss = loss_function(tag_scores, targets)
            loss.backward()
            optimizer.step()
    
    # See what the scores are after training
    with torch.no_grad():
        inputs = prepare_sequence(training_data[0][0], word_to_ix)
        tag_scores = model(inputs)
    
        # The sentence is "the dog ate the apple".  i,j corresponds to score for tag j
        # for word i. The predicted tag is the maximum scoring tag.
        # Here, we can see the predicted sequence below is 0 1 2 0 1
        # since 0 is index of the maximum value of row 1,
        # 1 is the index of maximum value of row 2, etc.
        # Which is DET NOUN VERB DET NOUN, the correct sequence!
        print(tag_scores)


<a id="org027b681"></a>

### variable-sized mini-batches

<https://towardsdatascience.com/taming-lstms-variable-sized-mini-batches-and-why-pytorch-is-good-for-your-health-61d35642972e>


<a id="orgf1f7f1e"></a>

### GPU CUDA

device = torch.device("cuda:0" if torch.cuda.is<sub>available</sub>() else "cpu")
if torch.cuda.is<sub>available</sub>():
    input = input.cuda()  # GPU
    target = target.cuda()  # GPU
    test<sub>input</sub> = test<sub>input.cuda</sub>()
    test<sub>target</sub> = test<sub>target.cuda</sub>()

seq: Model = Sequence()
seq.double()
seq = seq.to(device)  # GPU

self.hidden = (torch.rand(self.levels, input.size(0), 51, dtype=torch.double),  # layers, batch, hidden
		   torch.rand(self.levels, input.size(0), 51, dtype=torch.double))
if torch.cuda.is<sub>available</sub>():
    self.hidden = (self.hidden[0].cuda(), self.hidden[1].cuda())


<a id="org8066327"></a>

### SGD

optim = torch.optim.SGD(model.parameters(), lr=0.01)
lr = 0.5 \* 1.2
    optimizer = torch.optim.SGD(seq.parameters(), lr=lr, momentum=0.2)
    for s in range(STEPS):
        lr = lr / 1.2
        print("lr", lr)

for g in optimizer.param<sub>groups</sub>:
    g['lr'] = lr


<a id="orgbda20a7"></a>

## Distributed - torch.distributed


<a id="org9f766d5"></a>

### overview

-   DistributedDataParallel (DDP)
    -   torch.nn.parallel.DistributedDataParallel
-   FullyShardedDataParallel (FSDP) - “beta”  higher level of complexity
    
    -   indicate which submodules of their model to wrap together in an FSDP instance used for state sharding, or
    
    manually wrap submodules in FSDP instances
    
    -   If FSDP is used without wrapping submodules in separate instances, it falls back to operating similarly to
    
    DDP, but without bucketing
    
    -   torch.distributed.fsdp

torch.distributed

Two approaches to run:

-   torch.distributed.launch
-   torchrun (elastic)

model is wrapped with DistributedDataParallel:

-   add hooks in forward() and backward() - for communicating

torch.distributed.launch


<a id="org33e3cb5"></a>

### torch.distributed.rpc

1.  links

    -   tutorial <https://pytorch.org/tutorials/intermediate/rpc_tutorial.html>
    -   tutorial <https://pytorch.org/tutorials/intermediate/dist_pipeline_parallel_tutorial.html>


<a id="org4e6c035"></a>

### FSDP

<https://pytorch.org/tutorials/intermediate/FSDP_tutorial.html>
<https://github.com/pytorch/examples/blob/main/distributed/FSDP/T5_training.py>

FSDP units - parts of model that will be sharded

1.  performance optimizations

    -   Mixed Precision - with BFloat16 resulted in ~5x improvement versus FP32
    -   Activation Checkpointing (AC) - reinvesting the freed memory from the checkpoints into larger batch size
    -   Transformer Wrapping Policy vs default wrapping policy. 20-25%
        slower! free 33-38% GPU memory! Freed up memory can be used to increase
        batch size for speed.
    -   Full Shard Strategy versus zero2 (DDP) resulted in 1.5x improvement.
        
        transformer wrapping policy and activation checkpointing - required for 3 nodes - T5 11B model
        
        sharding<sub>strategy</sub> -
    -   FULL<sub>SHARD</sub> - default -
    -   SHARD<sub>GRAD</sub><sub>OP</sub> - Zero2 mode - model parameters are not freed after forward pass, reducing communication needs
    -   NO<sub>SHARD</sub> - DDP mode , just copy of model, only grad synch needed

2.  ex tutorial

        
        import torch.distributed as dist
        
        
        world_size = 2
        rank = 0 # per worker 0 ... ?
        
        fsdp_main(rank, world_size, batch_size, test_batch_size
        
        def fsdp_main(rank, world_size, args):
            setup(rank, world_size)
        
            transform=transforms.Compose([
                transforms.ToTensor(),
                transforms.Normalize((0.1307,), (0.3081,))
            ])
        
            dataset1 = datasets.MNIST('../data', train=True, download=True,
                                transform=transform)
            dataset2 = datasets.MNIST('../data', train=False,
                                transform=transform)
        
            sampler1 = DistributedSampler(dataset1, rank=rank, num_replicas=world_size, shuffle=True)
            sampler2 = DistributedSampler(dataset2, rank=rank, num_replicas=world_size)
        
            train_kwargs = {'batch_size': args.batch_size, 'sampler': sampler1}
            test_kwargs = {'batch_size': args.test_batch_size, 'sampler': sampler2}
            cuda_kwargs = {'num_workers': 2,
                            'pin_memory': True,
                            'shuffle': False}
            train_kwargs.update(cuda_kwargs)
            test_kwargs.update(cuda_kwargs)
        
            train_loader = torch.utils.data.DataLoader(dataset1,**train_kwargs)
            test_loader = torch.utils.data.DataLoader(dataset2, **test_kwargs)
            my_auto_wrap_policy = functools.partial(
                size_based_auto_wrap_policy, min_num_params=100
            )
            torch.cuda.set_device(rank)
        
        
            init_start_event = torch.cuda.Event(enable_timing=True)
            init_end_event = torch.cuda.Event(enable_timing=True)
        
            model = Net().to(rank)
        
            model = FSDP(model,
                         fsdp_auto_wrap_policy=my_auto_wrap_policy,
                         cpu_offload=CPUOffload(offload_params=True))
        
            optimizer = optim.Adadelta(model.parameters(), lr=args.lr)
        
            scheduler = StepLR(optimizer, step_size=1, gamma=args.gamma)
            init_start_event.record()
            for epoch in range(1, args.epochs + 1):
                train(args, model, rank, world_size, train_loader, optimizer, epoch, sampler=sampler1)
                test(model, rank, world_size, test_loader)
                scheduler.step()
        
            init_end_event.record()
        
            if rank == 0:
                print(f"CUDA event elapsed time: {init_start_event.elapsed_time(init_end_event) / 1000}sec")
                print(f"{model}")
        
            if args.save_model:
                # use a barrier to make sure training is done on all ranks
                dist.barrier()
                # state_dict for FSDP model is only available on Nightlies for now
                states = model.state_dict()
                if rank == 0:
                    torch.save(states, "mnist_cnn.pt")
        
            cleanup()

3.  ex t5

        from torch.distributed.fsdp import (
            FullyShardedDataParallel as FSDP,
            CPUOffload,
            MixedPrecision,
            BackwardPrefetch,
            ShardingStrategy,
            FullStateDictConfig,
            StateDictType,
        )
        from torch.utils.data.distributed import DistributedSampler
        
        class train_config:
            model_name: str="t5-base"
            run_validation: bool=True
            batch_size_training: int=4
            num_workers_dataloader: int=2
            lr: float=0.002
            weight_decay: float=0.0
            gamma: float= 0.85
            use_fp16: bool=False
            mixed_precision: bool=True
            save_model: bool=False
        
        
        
        class fsdp_config:
            mixed_precision: bool=True
            use_fp16: bool=False
            seed: int=42
            fsdp_activation_checkpointing: bool=True
            limit_all_gathers: bool=True
            sharding_strategy: ShardingStrategy = ShardingStrategy.FULL_SHARD #HYBRID_SHARD, SHARD_GRAD_OP
            checkpoint_type: StateDictType = StateDictType.FULL_STATE_DICT # alternatively can use SHARDED_STATE_DICT to avoid OOMs
            save_optimizer: bool=False
        
        
        from torch.distributed.fsdp import (
            # FullyShardedDataParallel as FSDP,
            # CPUOffload,
            MixedPrecision,
            # BackwardPrefetch,
            # ShardingStrategy,
        )
        
        # requires grad scaler in main loop
        fpSixteen = MixedPrecision(
            param_dtype=torch.float16,
            # Gradient communication precision.
            reduce_dtype=torch.float16,
            # Buffer precision.
            buffer_dtype=torch.float16,
        )
        
        bfSixteen = MixedPrecision(
            param_dtype=torch.bfloat16,
            # Gradient communication precision.
            reduce_dtype=torch.bfloat16,
            # Buffer precision.
            buffer_dtype=torch.bfloat16,
        )
        
        bfSixteen_working = MixedPrecision(
            param_dtype=torch.float32,
            reduce_dtype=torch.bfloat16,
            buffer_dtype=torch.bfloat16,
        )
        
        fp32_policy = MixedPrecision(
            param_dtype=torch.float32,
            reduce_dtype=torch.float32,
            buffer_dtype=torch.float32,
        )
        
        
        def get_policies(cfg, rank):
        
            """establish current policies for mixed precision and fsdp wrapping"""
        
            mixed_precision_policy = None
            wrapping_policy = None
        
            # mixed precision -----
            if cfg.mixed_precision:
                bfloat_available = bfloat_support()
                if bfloat_available and not cfg.use_fp16:
                    mixed_precision_policy = policies.bfSixteen
                    if rank == 0:
                        print(f"bFloat16 enabled for mixed precision - using bfSixteen policy")
                elif cfg.use_fp16:
                    mixed_precision_policy = policies.fpSixteen
                    if rank == 0:
                        print(f"FP16 enabled. ")
                else:
                    # mixed_precision_policy = policies.fpSixteen
                    print(
                        f"bFloat16 support not present. Will use FP32, and not mixed precision"
                    )
        
            wrapping_policy = policies.get_t5_wrapper()
        
            return mixed_precision_policy, wrapping_policy
        
        
        def setup():
            # initialize the process group
            dist.init_process_group("nccl")
        
        
        def cleanup():
            dist.destroy_process_group()
        
        local_rank = int(os.environ['LOCAL_RANK'])
        rank = int(os.environ['RANK'])
        world_size = int(os.environ['WORLD_SIZE'])
        
        run_validation = True
        track_memory = True
        epochs = 1
        batch_size = 1
        test_batch_size = 1
        
        sampler1 = DistributedSampler(train_dataset, rank=rank, num_replicas=world_size, shuffle=True)
        sampler2 = DistributedSampler(val_dataset, rank=rank, num_replicas=world_size)
        
        setup()
        
        train_kwargs = {'batch_size': batch_size, 'sampler': sampler1}
        test_kwargs = {'batch_size': test_batch_size, 'sampler': sampler2}
        cuda_kwargs = {'num_workers': 2,
                       'pin_memory': True,
                       'shuffle': False}
        train_kwargs.update(cuda_kwargs)
        test_kwargs.update(cuda_kwargs)
        
        train_loader = torch.utils.data.DataLoader(train_dataset,**train_kwargs)
        val_loader = torch.utils.data.DataLoader(val_dataset, **test_kwargs)
        
        torch.cuda.set_device(local_rank)
        
        mixed_precision_policy, t5_auto_wrap_policy = get_policies(train_config, rank)
        
        # Apply FSDP wrapping to the model
        model = FSDP(model,
                auto_wrap_policy=t5_auto_wrap_policy,
                mixed_precision=mixed_precision_policy,
                sharding_strategy=fsdp_config.sharding_strategy,
                device_id=torch.cuda.current_device(),
                limit_all_gathers=fsdp_config.limit_all_gathers)
        
        # if fsdp_config.fsdp_activation_checkpointing:
        #         policies.apply_fsdp_checkpointing(model)
        
        # Set up optimizer and scheduler
        optimizer = optim.AdamW(model.parameters(), lr=train_config.lr)
        
        scheduler = StepLR(optimizer, step_size=1, gamma=train_config.gamma)
        
        best_val_loss = float("inf")
        curr_val_loss = float("inf")
        file_save_name = "T5-model-"
        
        if rank == 0:
            time_of_run = get_date_of_run()
            dur = []
            train_acc_tracking = []
            val_acc_tracking = []
            training_start_time = time.time()
        
        if rank == 0 and track_memory:
            mem_alloc_tracker = []
            mem_reserved_tracker = []
        
        
        for epoch in range(1, epochs + 1):
            t0 = time.time()
            train_accuracy = train(model, rank, world_size, train_loader, optimizer, epoch, sampler=sampler1)
            if run_validation:
                curr_val_loss = validation(model, rank, world_size, val_loader)
            scheduler.step()
        
            if rank == 0:
                print(f"--> epoch {epoch} completed...entering save and stats zone")
        
               dur.append(time.time() - t0)
               train_acc_tracking.append(train_accuracy.item())
        
               if run_validation:
                   val_acc_tracking.append(curr_val_loss.item())

4.  troubleshooting

    RuntimeError: Expected a 'cuda' device type for generator but found 'cpu'
    
    -   'cuda' is set with torch.set<sub>default</sub><sub>device</sub>("cuda")
    -   shuffled Sampler always create generator = torch.Generator()
    -   Solution: disable shuffle or set torch.set<sub>default</sub><sub>device</sub>("cpu")
    
    RuntimeError: cannot pin 'torch.cuda.FloatTensor' only dense CPU tensors can be pinned
    
    -   solution: place everythin of CPU according to tutorial
    -   save dataset items to CPU
    
    CUDA error: invalid device ordinal
    
    -   1694694477 worker-0: CUDA kernel errors might be asynchronously reported at some other API call, so the
        stacktrace below might be incorrect.
    -   1694694477 worker-0: For debugging consider passing CUDA<sub>LAUNCH</sub><sub>BLOCKING</sub>=1.
    -   1694694477 worker-0: Compile with \`TORCH<sub>USE</sub><sub>CUDA</sub><sub>DSA</sub>\` to enable device-side assertions.
    -   Solution: ? I forgot, set .to(device) not .to(rank)
    
    Timed out initializing process group in store based barrier on rank
    
    -   increase: torch.distributed.init<sub>process</sub><sub>group</sub>(timeout=datetime.timedelta(seconds=1800))
    
    RuntimeError: Cannot re-initialize CUDA in forked subprocess. To use CUDA with multiprocessing, you must use the 'spawn' start method
    
    -   pickle.load problem with read<sub>image</sub> no problem
    
        try:
            torch.multiprocessing.set_start_method('spawn',force=True)
        except RuntimeError:
            pass


<a id="org2fedcc0"></a>

### elastic (launch)

torchrun -  superset of the functionality as **torch.distributed.launch**


<a id="orgde5d2e5"></a>

### torch.distributed.launch

1.  dist.init<sub>process</sub><sub>group</sub>(backend, init<sub>method</sub>)

links

-   <https://lambdalabs.com/blog/multi-node-pytorch-distributed-training-guide>
-   <https://pytorch.org/tutorials/intermediate/dist_tuto.html>
-   <https://pytorch.org/docs/2.0/distributed.html#initialization>


<a id="orga0720b1"></a>

### KubeFlow PyTorchJob

$ env for pod/pytorch-simple-worker-0:

    KUBERNETES_SERVICE_PORT_HTTPS=443
    NVIDIA_VISIBLE_DEVICES=all
    KUBERNETES_SERVICE_PORT=443
    PYTHONUNBUFFERED=0
    HOSTNAME=pytorch-simple-worker-0
    MASTER_PORT=23456
    PWD=/workspace
    NVIDIA_DRIVER_CAPABILITIES=compute,utility
    WORLD_SIZE=2
    HOME=/root
    KUBERNETES_PORT_443_TCP=tcp://10.96.0.1:443
    PYTORCH_VERSION=2.0.1
    MASTER_ADDR=pytorch-simple-master-0
    TERM=xterm
    SHLVL=1
    KUBERNETES_PORT_443_TCP_PROTO=tcp
    KUBERNETES_PORT_443_TCP_ADDR=10.96.0.1
    LD_LIBRARY_PATH=/usr/local/nvidia/lib:/usr/local/nvidia/lib64
    RANK=1
    KUBERNETES_SERVICE_HOST=10.96.0.1
    KUBERNETES_PORT=tcp://10.96.0.1:443
    KUBERNETES_PORT_443_TCP_PORT=443


<a id="orgb97bf0a"></a>

### investiage

    import torch
    print("distributed available", torch.distributed.is_available())
    print("distributed initilized", torch.distributed.is_initialized())
    # -- CUDA
    torch.cuda.is_available() # True
    torch.cuda.device_count() # 1
    torch.cuda.current_device() # 0
    torch.cuda.device(0) # <torch.cuda.device at 0x7efce0b03be0>
    torch.cuda.get_device_name(0) # 'GeForce GTX 950M'
    print("cuda")
    print(torch.cuda.is_available()) # True
    print(torch.cuda.device_count()) # 1
    print(torch.cuda.current_device()) # 0
    print(torch.cuda.device(0)) # <torch.cuda.device at 0x7efce0b03be0>
    print(torch.cuda.get_device_name(0)) # 'GeForce GTX 950M'
    print()


<a id="org8f747ad"></a>

### links

-   main <https://pytorch.org/docs/stable/distributed.html>
-   tutorial <https://pytorch.org/tutorials/beginner/dist_overview.html>
-   <https://pyimagesearch.com/2021/10/18/introduction-to-distributed-training-in-pytorch/>
    -   ![img](https://b2633864.smushcdn.com/2633864/wp-content/uploads/2021/08/dp_gif.gif?size=650x265&lossy=2&strip=1&webp=1)
-   overview of torch.distributed <https://pytorch.org/tutorials/beginner/dist_overview.html>
-   2.0 news <https://pytorch.org/get-started/pytorch-2.0/#distributed>
-   DDP <https://pytorch.org/docs/stable/notes/ddp.html>


<a id="orgbcd85cf"></a>

## retain<sub>graph</sub>

<https://pytorch.org/docs/stable/autograd.html>

    loss.backward(retain_graph=True)

LSTM slowed becouse of hidden state saved between. Solutions:

-   detach/repackage the hidden state in between batches.
    -   hidden.detach<sub>()</sub>
    -   hidden = hidden.detach()


<a id="org62c503d"></a>

## memory management

if a is a tensor:

-   a.to(torch.device("cpu"/"cuda:0"))  - move tensor around

making sure t2 is on the same device as t2

-   a = t1.get<sub>device</sub>()
-   b = torch.tensor(a.shape).to(dev)

Using Multiple GPUs:

-   Data Parallelism, where we divide batches into smaller batches, and process these smaller batches in parallel on multiple GPU.
-   Model Parallelism, where we break the neural network into smaller sub networks and then execute these sub networks on different GPUs.

    del out, loss - free tensor/model
    torch.cuda.empy_cache() - empty garbage

with torch.no<sub>grad</sub>(): - PyTorch, by default, will create a computational graph during the forward pass. During
creation of this graph, it will allocate buffers to store gradients and intermediate values which are used for
computing the gradient during the backward pass.

CuDNN can provided a lot of optimisation which can bring down your space usage,

-   torch.backends.cudnn.benchmark = True
-   torch.backends.cudnn.enabled = True

Using 16-bit Floats

-   model = model.half()     # convert a model to 16-bit
-   input = input.half()     # convert a model to 16-bit
-   issues:
    -   batch-norm layers have convergence issues with half precision floats. If that's the case with you, make
        sure that batch norm layers are float32
    -   You can have overflow issues with 16-bit float. Once, I remember I had such an overflow while trying to
        store the Union area of two bounding boxes (for computation of IoUs) in a float16.  So make sure you have
        a realistic bound on the value you are trying to save in a float16.


<a id="orgfb4fd3f"></a>

## troubleshooting

Input type (torch.FloatTensor) and weight type (torch.cuda.FloatTensor)

-   dataset on CPU, model on GPU
-   solution: Dataset.\_<sub>getItem</sub>\_<sub>(self, idx)</sub>: return image.to(device), torch.tensor(label, dtype=torch.long).to(device)

"RuntimeError: Expected a 'cuda' device type for generator but found 'cpu'"

-   solution:

    generator = torch.Generator(device=device)
    train_loader: DataLoader = DataLoader(train_dataset, shuffle=True, batch_size=BATCH_SIZE, generator=generator)

AttributeError: 'collections.OrderedDict' object has no attribute 'eval'

    model = TempModel()
    model.load_state_dict(torch.load(file_path))

torch.cuda.OutOfMemoryError: CUDA out of memory. If reserved memory is >> allocated memory try setting max<sub>split</sub><sub>size</sub><sub>mb</sub> to avoid fragmentation.

    os.environ["PYTORCH_CUDA_ALLOC_CONF"] = "max_split_size_mb:256"


<a id="orgeb094b9"></a>

## plot learning curve

    LOGFILE=torch/logs/log-2023-09-10-local.txt
    cat $LOGFILE | grep "loss" | cut -d ' ' -f 4 | cut -d ',' -f 1 > /tmp/loss
    cat $LOGFILE | grep "loss" | cut -d ' ' -f 7 | cut -d ',' -f 1 > /tmp/acc
    
    python -c "
    acc = [float(x[:-1]) for x in open('/tmp/acc', 'r').readlines()]
    loss = [float(x[:-1]) for x in open('/tmp/loss', 'r').readlines()]
    import numpy as np
    acc = np.array(acc)
    loss = np.array(loss)
    acc = (acc - np.min(acc)) / (np.max(acc) - np.min(acc))
    loss = (loss - np.min(loss)) / (np.max(loss) - np.min(loss))
    import matplotlib.pyplot as plt
    plt.plot(list(range(len(acc))), acc, label='accuracy')
    plt.plot(list(range(len(loss))), loss, label='loss')
    plt.legend()
    plt.title('Scaled accuracy and loss')
    plt.savefig('/tmp/a.png')
    "


<a id="org963376f"></a>

## Finetuning

You should not rely on the order returned by the model.parameters() method as it does not necessarily match
 the order of the layers in your model. Instead, you should use it on specific part of your models:

    modules = [model.embeddings, model.encoder.layer[:5]] #Replace 5 by what you want
    for module in modules:
        for param in module.parameters():
            param.requires_grad = False

explore:

    print(model)
    print(list(model.modules()[0:4]))


<a id="org4e79769"></a>

## links

-   docs <https://pytorch.org/docs/stable/index.html>
    -   Module <https://pytorch.org/docs/stable/generated/torch.nn.Module.html>
-   tutorial <https://pytorch.org/tutorials/>

-   examples <https://github.com/pytorch/examples/>


<a id="org0d8c6ae"></a>

# ONNX


<a id="org941a1c3"></a>

## Terms

-   graph - (IR) internal replresentation of neural network computational flow
    -   graph have: inputs, output, and initializer (set inputs which never changes - constants)
-   ONNX interpreter (or runtime) - can be implemented, to make it easier to deploy a machine learning model in production. to
    evaluate ONNX **models** and to evaluate ONNX **ops**.
-   **onnx** implements a **python runtime** - not intended to be used for production and performance is not a goal
-   learning framework - used to build the model, without runtime.
-   ONNX Operators - a functions that is units of graph.
-   Operators domains - set of operators: ai.onnx and ai.onnx.ml (tree bases models, preprocessing, SVM, imputer)
-   **protobuf** - used to serialize the graph into one single block, programming language independant. It aims at
    optimizing the model size as much as possible.
-   Tensor - multidimensional array (dense full array with no stride) with:
    
    -   type - element type, the same for all elements in the tensor.  **strongly typed** and its definition does
    
    not support implicit cast.
    
    -   shape - array with all dimension
    -   contiguous array - represents all the values
-   Sparse Tensor - dims, indices (int64) and values.
-   SequenceProto, MapProto - sequences of tensors, map of tensors, sequences of map of tensors
-   External data - storing large tensors in separate files, rather than within the main ONNX model file. This
    is particularly useful for models larger than 2GB, which cannot be stored in a single file due to size
    limitations.
-   **Shape Inference** - analyzing the model's architecture and the shapes of the input tensors to infer the
    shapes of the output tensors.  automatic determination of tensor shapes within a model. Shape inference only
    with constants and simple variables.
-   onnx.onnx<sub>ml</sub><sub>pb2.ModelProto</sub> - main class for model
-   onnx.onnx<sub>ml</sub><sub>pb2.NodeProto</sub> - main class of graph.node[0:10]


<a id="org3bac016"></a>

## CASE: Get version

also attached to every ONNX graphs

    import onnx
    import numpy as np
    from onnx import numpy_helper
    from onnx import helper
    # - current
    from onnx import __version__, IR_VERSION
    from onnx.defs import onnx_opset_version
    print(f"onnx.__version__={__version__!r}, opset={onnx_opset_version()}, IR_VERSION={IR_VERSION}")
    # - path
    mp = "/var/tmp/u/t5-encoder/t5-encoder.onnx"
    # - checking
    onnx.checker.check_model(mp)
    # - loading
    m = onnx.load(mp)
    print("Model type:", type(m))
    print()
    print("**Opset Version**.\n",
          f"- model_opset={m.opset_import}\n",
          f"- opset={onnx_opset_version()}")
    print()
    print("**IR versions**.\n",
          f"- model={m.ir_version}\n",
          f"- current={onnx.IR_VERSION}")
    print()
    print(f"Model: doc_string={m.doc_string}, domain={m.domain}, metadata_props={m.metadata_props}")
    print()
    print(f"producer_name={m.producer_name}")
    print(f"producer_version={m.producer_version}")
    
    graph = m.graph
    for node in graph.node[0:10]:
        print(type(node))
        # # -
        # # node inputs
        # for idx, node_input_name in enumerate(node.input):
        #     print(idx, node_input_name)
        # # node outputs
        # for idx, node_output_name in enumerate(node.output):
        #     print(idx, node_output_name)
        # # -
        print(helper.printable_node(node))
        # -
        # print(f"Node Name, type: {node.name}, {node.op_type}")
        # print(f"- Inputs/output: {node.input}, {node.output}")
    
    print("----------- Graph --------")
    
    total_parameters = 0
    for initializer in m.graph.initializer:
        total_parameters += np.prod(numpy_helper.to_array(initializer).shape)
    
    print("Total Parameters:", total_parameters)
    print()
    print([input.name for input in m.graph.input])
    print([output.name for output in m.graph.output])
    print()
    
    print("----------- Graph detailed 1 --------")
    from onnx import shape_inference
    inferred_model = shape_inference.infer_shapes(m)
    print(inferred_model.graph.value_info)
    print("----------- Graph detailed 2 --------")
    print('Model :\n\n{}'.format(onnx.helper.printable_graph(m.graph)))

<https://www.programmersought.com/article/639110832206/>


<a id="org21bc9d4"></a>

## Usage

If model larger than 2G:

-   (If the external data is under the same directory of the model, simply use

    onnx.load()

-   If the external data is under another director:

    from onnx.external_data_helper import load_external_data_for_model
    onnx_model = onnx.load("path/to/the/model.onnx", load_external_data=False)
    load_external_data_for_model(onnx_model, "data/directory/path/")

Saving an ONNX Model:

    import onnx
    # onnx_model is an in-memory ModelProto
    onnx_model = ...
    onnx.save(onnx_model, "path/to/the/model.onnx")

    onnx.checker.check_model(onnx_model)

    import onnx
    onnx.checker.check_model("path/to/the/model.onnx") # will fail if given >2GB model


<a id="org5f57470"></a>

## Visualization - netron


<a id="org118f1c3"></a>

## ONNX format


<a id="orgf2c2554"></a>

## doc:

-   doc <https://github.com/onnx/onnx/tree/main/docs>
-   doc <https://onnx.ai/onnx/>
-   python <https://github.com/onnx/onnx/blob/main/docs/PythonAPIOverview.md>
-   model zoo <https://github.com/onnx/models/>
-   tutorial for ONNX models <https://github.com/onnx/tutorials>
-   huggingface <https://onnxruntime.ai/docs/tutorials/huggingface.html>
-   main usage of NN in ONNX <https://github.com/onnx/onnx/blob/rel-1.9.1/onnx/examples/Protobufs.ipynb>


<a id="org94c5497"></a>

# LangChain

<https://github.com/gkamradt/langchain-tutorials/blob/main/chatapi/ChatAPI%20%2B%20LangChain%20Basics.ipynb>


<a id="orgd421049"></a>

## terms

-   LLMs: Definition: Pure text completion models.  Input/Output: Take a text string as input and return a text
    string as output.
-   Chat Models - Definition: Models that use a language model as a base but differ in input and output formats.
    Input/Output: Accept a list of chat messages as input and return a Chat Message.
-   Prompts: Templatize, dynamically select, and manage model inputs. Allows for the creation of flexible and
    context-specific prompts that guide the language model's responses.
-   Output Parsers: Extract and format information from model outputs. Useful for converting the raw output of
    language models into structured data or specific formats needed by the application.


<a id="orgc796dcb"></a>

## GigaChat

-   <https://pypi.org/project/gigachat/>
-   langchain module <https://python.langchain.com/v0.1/docs/integrations/chat/gigachat/>


<a id="org19cc490"></a>

## Chat Models

LLMs are stateless by nature, meaning they do not maintain the state of the conversation. So, if you want to
 support multi-turn conversations, you should take care of managing the state of the conversation.

-   HumanMessage: A message sent from the perspective of the human
-   AIMessage: A message sent from the perspective of the AI the human is interacting with
-   SystemMessage: A message setting the objectives the AI should follow
-   ChatMessage: A message allowing for arbitrary setting of role. You won’t be using this too much


<a id="org6d8c11e"></a>

## messages and batch messages

    messages = [
        SystemMessage(content="Say the opposite of what the user says"),
        HumanMessage(content="I love programming."),
        AIMessage(content='I hate programming.'),
        HumanMessage(content="What is the first thing that I said?")
    ]
    chat(messages)

    batch_messages = [
        [
            SystemMessage(content="You are a helpful word machine that creates an alliteration using a base word"),
            HumanMessage(content="Base word: Apple")
        ],
        [
            SystemMessage(content="You are a helpful word machine that creates an alliteration using a base word"),
            HumanMessage(content="Base word: Dog")
        ],
    ]
    chat.generate(batch_messages)


<a id="org9eca397"></a>

## Prompt Templates

    # Make SystemMessagePromptTemplate
    prompt=PromptTemplate(
        template="Propose creative ways to incorporate {food_1} and {food_2} in the cuisine of the users choice.",
        input_variables=["food_1", "food_2"]
    )
    
    system_message_prompt = SystemMessagePromptTemplate(prompt=prompt)
    # Output of system_message_prompt
    system_message_prompt.format(food_1="Bacon", food_2="Shrimp")

Make HumanMessagePromptTemplate

    
    human_template="{text}"
    human_message_prompt = HumanMessagePromptTemplate.from_template(human_template)
    # Create ChatPromptTemplate: Combine System + Human
    chat_prompt = ChatPromptTemplate.from_messages([system_message_prompt, human_message_prompt])
    
    chat_prompt_with_values = chat_prompt.format_prompt(food_1="Bacon", \
                                                       food_2="Shrimp", \
                                                       text="I really like food from Germany.")
    
    chat_prompt_with_values.to_messages()
    
    response = chat(chat_prompt_with_values.to_messages()).content
    print (response)


<a id="orge4f69ce"></a>

## Memory Types in Langchain

<https://nanonets.com/blog/langchain/#module-v-memory>

-   Conversation Buffer Memory
-   Conversation Buffer Window Memory
-   Conversation Entity Memory
-   Conversation Knowledge Graph Memory
-   Conversation Summary Memory
-   Conversation Summary Buffer Memory
-   Conversation Token Buffer Memory
-   VectorStoreRetrieverMemory


<a id="org4226c04"></a>

# MLFlow - experiment tracking


<a id="org640d676"></a>

## features

-   **centralized repository** -  parameters, metrics, artifacts, data, and environment
    configurations, giving teams insight into their models’ evolution over time.
    -   logging of results either to local files or a server - to compare multiple runs across different users.
-   **Model Registry** - model store,  UI to collaboratively manage - model lineage, versioning, aliasing, tagging, and annotations
-   **LLM** - offers a common set of APIs for prominent LLMs.

for

-   Experiment Tracking
-   Model Selection and Deployment
-   Model Performance Monitoring (in production)
-   "MLflow Project." - format for sharing and parameter modifications

distributed

-   Apache Spark, Databricks.
-   Interoperability with Distributed Storage - Azure ADLS, Azure Blob Storage, AWS S3, Cloudflare R2 and DBFS


<a id="org1a5b1c6"></a>

## terms

-   **Runs:** executions of some piece of data science code (python train.py), Each run records metadata and artifacts
    -   **metadata:** metrics, parameters, start and end times.
    -   **artifacts:** output files from the run such as model weights, images, etc
-   **Experiments:** group of runs
-   **MLflow Tracking APIs:** mlflow.start<sub>run</sub>(), mlflow.log<sub>param</sub>(), mlflow.log<sub>metric</sub>()
-   **Auto-logging:** Tracking APIs variat that don't require any command
-   **Tracking Datasets:** mlflow.log<sub>input</sub>()
-   **Tracking UI:** local "mlflow ui &#x2013;port 5000" or with "MLflow Tracking Server" <http://><IP address of your MLflow tracking server>:5000
-   **MlflowClient:** library to access Tracking UI functions.
-   **Dataset:** abstraction is a metadata tracking object that holds the information about a given logged
    dataset.  features, targets, and predictions
-   **Backend Store:** main storage. can be file-system-based like local files and database-based like PostgreSQL. By default in ./mlruns
-   **Artifact Store:** Another compotent for storage. By default in ./mlruns
-   **tracking URI:** path to save Backend Store and Artifact Store


<a id="org1d424de"></a>

## installation

    pip install mlflow
    mlflow ui  - test by starting web server


<a id="org9e6faa7"></a>

## framework styles:

-   high-level “fluent” API
-   Context manager syntax
-   Auto-logging: mlflow.autolog()

    # high-level “fluent” API
    import mlflow
    
    mlflow.start_run()
    mlflow.log_param("my", "param")
    mlflow.log_metric("score", 100)
    mlflow.end_run()
    
    # context manager syntax
    with mlflow.start_run() as run:
        mlflow.log_param("my", "param")
        mlflow.log_metric("score", 100)
    
    # Auto-logging
    mlflow.autolog()


<a id="orgd44d2df"></a>

## Usage


<a id="org6438eff"></a>

### monitor experiment locally

    mlflow ui

    import mlflow
    
    mlflow.set_tracking_uri("http://localhost:5000")
    mlflow.set_experiment("check-localhost-connection")
    
    with mlflow.start_run():
        mlflow.log_metric("foo", 1)
        mlflow.log_metric("bar", 2)


<a id="org106c032"></a>

### store first locally

By default, MLflow stores artifacts in a local directory named mlruns.

1.  export MLFLOW<sub>TRACKING</sub><sub>URI</sub>=sqlite:///mlruns.db
2.  mlflow.autolog() in Python
3.  mlflow ui &#x2013;port 8080 &#x2013;backend-store-uri $MLFLOW<sub>TRACKING</sub><sub>URI</sub>

Alternative:

    import mlflow
    experiment_name = "your_experiment_name"
    mlflow.create_experiment(experiment_name, artifact_location="s3://your-bucket")
    mlflow.set_experiment(experiment_name)


<a id="org6aa0b2c"></a>

## tracking URI

-   <file:///my/local/dir>
-   A Database, encoded as
    <dialect>+<driver>://<username>:<password>@<host>:<port>/<database>. <https://docs.sqlalchemy.org/en/latest/core/engines.html#database-urls>
-   HTTP server <https://my-server:5000>
-   Databricks workspace  databricks://<profileName>


<a id="org365c801"></a>

## tracking API

start<sub>run</sub>

-   calling one of the logging functions with no active run automatically starts a new one.

mlflow.end<sub>run</sub>() - required with autolog too.

<https://mlflow.org/docs/latest/tracking/tracking-api.html>


<a id="org7f8f758"></a>

## MlflowClient


<a id="orgb4dc526"></a>

### model registry - list models, register model

    from mlflow.exceptions import MlflowException
    
    from mlflow.tracking import MlflowClient
    client = MlflowClient()
    
    try:
        list = client.list_registered_models()
    except MlflowException:
        print("It's not possible to access the model registry :(")
    
    
    run_id = client.list_run_infos(experiment_id='1')[0].run_id
    mlflow.register_model(
        model_uri=f"runs:/{run_id}/models",
        name='iris-classifier'
    )


<a id="org4d2ecce"></a>

### model registry - search<sub>runs</sub>

    runs = client.search_runs(
        experiment_ids='1',
        filter_string="metrics.rmse < 7",
        run_view_type=ViewType.ACTIVE_ONLY,
        max_results=5,
        order_by=["metrics.rmse ASC"]
    )
    
    for run in runs:
        print(f"run id: {run.info.run_id}, rmse: {run.data.metrics['rmse']:.4f}")

bbest active run

    from mlflow import MlflowClient
    from mlflow.entities import ViewType
    
    run = MlflowClient().search_runs(
        experiment_ids="0",
        filter_string="",
        run_view_type=ViewType.ACTIVE_ONLY,
        max_results=1,
        order_by=["metrics.accuracy DESC"],
    )[0]


<a id="orgf2f46b1"></a>

### runs

-   

-   run.data: RunData
    -   metrics: dict
    -   params: dict
    -   tags: dict

    from mlflow.entities import ViewType
    
    runs = client.search_runs(
        experiment_ids='1',
        filter_string="metrics.rmse < 7",
        run_view_type=ViewType.ACTIVE_ONLY,
        max_results=5,
        order_by=["metrics.rmse ASC"]
    )
    for run in runs:
        print(f"run id: {run.info.run_id}, rmse: {run.data.metrics['rmse']:.4f}")


<a id="org471758c"></a>

## MLflow Tracing - @mlflow.trace

For

-   enabling better debugging
-   performance monitoring
-   insights into complex workflow

What is captured?

-   Inputs
-   Response
-   Trace Name

    import mlflow
    
    mlflow.set_experiment("Tracing Demo")
    
    @mlflow.trace
    def my_function(x, y):
        return x + y

This is equivalent to:

    import mlflow
    
    mlflow.set_experiment("Tracing Demo")
    
    def my_function(x, y):
        return x + y
    
    with mlflow.start_span("my_function") as span:
        x = 1
        y = 2
        span.set_inputs({"x": x, "y": y})
        result = my_function(x, y)
        span.set_outputs({"output": result})


<a id="org981306e"></a>

## Not supported:

-   Security - impossible to restrict access to server, you should use VPS or other tools
-   Scalability - limited - AWS Fargate
-   Isolation - you should use own standards and naming rules. To restrict access to artifacts use s3 buckets
    living in different AWS account.
-   Data versioning - require for full reproducibility. Ways?
-   Model/Data monitoring & Alerting

Alternatives: Neptune, Comet, Weights & Biases

Metrics to select experiment tracking tool:

-   Focus - main features
-   Price - Free or license
-   Standalone component or a part of a broader ML platform?
-   Commercial, open-source or managed cloud service software?
-   Hosted version or deployd on-premise? Which part where hosted?
-   How much do you have to change in your training process? Lines of code
-   Web UI or console-based?
-   Features: custom dashboards, table format diff, comparing experiments and metadata,
    -   reproducibility and traceability
        -   one-command experiment re-run
        -   Experiment lineage
        -   experiment versioning


<a id="orga151793"></a>

# Perfect

Prefect server instance

require - Self-hosted Prefect server instance


<a id="orga902ae4"></a>

## terms

-   **@task:** function. the smallest unit of observed and orchestrated work in Prefect.
-   **flow run:** function, bigges unit of ovservation
-   **Results:** The data returned by a flow or a task.
-   **Artifacts:** ormatted outputs rendered in the Prefect UI, such as markdown, tables, or links.
-   **Deployments:** A server-side concept that encapsulates flow metadata, allowing it to be scheduled and triggered via API.


<a id="orgf412dc0"></a>

## links

-   <https://docs.prefect.io>
-   <https://docs.prefect.io/latest/getting-started/quickstart/>


<a id="orgd108ee5"></a>

# TODO PaddlePaddle 飞桨

PArallel Distributed Deep LEarning
<https://www.paddlepaddle.org.cn/>


<a id="org86c8dd8"></a>

# huggingface.co

-   <https://github.com/huggingface>

goal of democratising AI, collection of models and datasets


<a id="orga3233cc"></a>

## Dateset


<a id="orga904d4c"></a>

### load

from datasets import load<sub>dataset</sub>

dataset = load<sub>dataset</sub>("username/my<sub>dataset</sub>")

optional:

-   split="train"*"validation"*"test"


<a id="org4d9ab80"></a>

### explore

-   print(dataset)
-   print(dataset.info) - detailed
-   print(dataset.column<sub>names</sub>) - names and types
-   print(dataset.data)
-   print(dataset.data['train'].table) # ConcatenatedTable, pyarrow.lib.Table
-   df = dataset.data['train'].table.to<sub>pandas</sub>() # no copying


<a id="orgd40e713"></a>

## pip packages

<https://github.com/orgs/huggingface/repositories?q=sort%3Astars>


<a id="orgeb6d5b0"></a>

### huggingface-hub

-   pypi.org/project/huggingface-hub/
    -   The Hugging Face Hub is a platform with over 90K models, 14K datasets, and 12K demos
    -   use Cloudfront (a CDN) to geo-replicate downloads
    -   Inference API - require API<sub>TOKEN</sub>
    -   Repository class - wrapper around the git command
    -   HfApi client -  HTTP requests


<a id="org5767311"></a>

### transformers <a id="orge4984e7"></a>

for Pytorch, TensorFlow, and JAX.

    pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
    pip install transformers[torch] --user
    pip install transformers[tf-cpu] --user
    python -c "from transformers import pipeline; print(pipeline('sentiment-analysis')('I hate you'))"

Transformers is natural language processing library to all ML models, with support from libraries like Flair,
 Asteroid, ESPnet, Pyannote, and more to come.

Inference API ( free tier is rate-limited and supports models up to 10GB in size.)

-   A service-level agreement (SLA) is a contract between two companies or internal teams.
-   Use the Inference API shared infrastructure for free, or switch to dedicated Inference Endpoints for production
-   plans:
    -   free - up to 1M input characters /mo, up to 2 hours of audio. Shared resources, no auto-scaling, standard latency
    -   Enterprise support for Inference Endpoints. Custom pricing based on volume commit. Starts at $2k/mo, annual contracts
-   API that allow the programmer to engage with the library at various levels of abstraction.
-   **pipeline**, which handles everything for us, namely converting raw text into a set of predictions from a fine-tuned model.


<a id="orga8b2fc4"></a>

### pytorch-image-models

PyTorch image encoders / backbones


<a id="orgeceba2c"></a>

### diffusers

diffusion models for image and audio generation in PyTorch and FLAX.


<a id="orgb815b0d"></a>

### datasets


<a id="org3eda8d9"></a>

### peft - Parameter-Efficient Fine-Tuning


<a id="orga6f28db"></a>

### candle - ML framework for Rust


<a id="org84ee71f"></a>

### trl - reinforcement learning for Transformers.


<a id="org9ccc224"></a>

### tokenizers


<a id="org8734e48"></a>

### text-generation-inference - LLMs

A Rust, Python and gRPC server


<a id="org525155a"></a>

### accelerate

utomatic mixed precision (including fp8), and easy-to-configure FSDP and DeepSpeed support

Accelerate - is a library that enables the same PyTorch code to be run across any distributed configuration


<a id="orgeb72451"></a>

### lerobot - Learning for Real-World Robotics in Pytorch


<a id="org1ae8db2"></a>

### text-embeddings-inference

deploying and serving open source text embeddings and sequence classification models

features such as:

-   No model graph compilation step
-   Metal support for local execution on Macs
-   Small docker images and fast boot times. Get ready for true serverless!
-   Token based dynamic batching
-   Optimized transformers code for inference using Flash Attention, Candle and cuBLASLt
-   Safetensors weight loading
-   Production ready (distributed tracing with Open Telemetry, Prometheus metrics)

<https://huggingface.co/docs/text-embeddings-inference/en/local_cpu>


<a id="org1da0e25"></a>

## pages

huggingface.co/models -

huggingface.co/datasets

huggingface.co/spaces

huggingface.co/collections - allows users to group and curate repositories from the Hub, including models,
 datasets, Spaces, and papers, on a dedicated page.

-   Organization


<a id="org6a8a1f8"></a>

## reduce inference


<a id="orga12f678"></a>

### quantization

Discrete quantization: Going beyond 16-bit down to 8 or 4 bits

quantize transformers model from scratch: ~5 min on a Google colab for facebook/opt-350m model

-   load models that has been already quantized by other users
-   

1.  links

    -   <https://huggingface.co/docs/transformers/main_classes/quantization>
    -   <https://arxiv.org/abs/2210.17323>


<a id="orgc6f01d1"></a>

### TODO pruning

removing weights, filters, neurons or even layers that are not necessary after learning.

model distilation: original network teach another shallow network.

magnitude pruning - unstructured pruning method

1.  links

    -   model distillation [Hinton et al., 2015] <https://doi.org/10.1126/science.1127647>
    -   Knowledge Distillation [Gou et al., 2020] <https://arxiv.org/abs/2006.05525>
    -   <https://pytorch.org/tutorials/intermediate/pruning_tutorial.html>


<a id="org2c92bd3"></a>

## transformers

see [20.2.2](#orge4984e7)


<a id="orgf837a7b"></a>

### theory

Configuration Class - configuration of the model, including hyperparameter

    from transformers import AutoConfig
    config = AutoConfig.from_pretrained("bert-base-uncased")

Model Class -  represents the pre-trained model itself

    from transformers import AutoModelForSequenceClassification
    model = AutoModelForSequenceClassification.from_pretrained("bert-base-uncased")

Tokenizer Class - preprocessing text data into a format that the model can understand.

    from transformers import AutoTokenizer
    tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")

Pipeline Class - NLP tasks: text classification, named entity recognition, and sentiment analysis.

    from transformers import pipeline
    classifier = pipeline("sentiment-analysis")
    result = classifier("I've been waiting for a HuggingFace course my whole life.")

steps modes (other ways with pipeline):

    inputs = tokenizer("I've been waiting for a HuggingFace course my whole life.", return_tensors="pt")
    outputs = model(**inputs)
    logits = outputs.logits


<a id="orgf804502"></a>

### base

pipeline -  easiest and fastest way to use a pretrained model

AutoClass - automatically infer and load the correct architecture from a given checkpoint

-   work under hood
-   There is one class of AutoModel for each task, and for each backend (PyTorch, TensorFlow, or Flax).

AutoModel

-   for text: AutoModelForSequenceClassification or TFAutoModelForSequenceClassification
-   TFAutoModel for TF

transformers.Trainer

-   supports distributed training and mixed precision,

    import torch
    # - pipeline:
    from transformers import pipeline
    speech_recognizer = pipeline("automatic-speech-recognition", model="facebook/wav2vec2-base-960h")
    
    # - AutoModel
    from transformers import AutoModelForSequenceClassification
    model_name = "nlptown/bert-base-multilingual-uncased-sentiment"
    pt_model = AutoModelForSequenceClassification.from_pretrained(model_name)
    # - ?
    from transformers import AutoTokenizer
    model_name = "nlptown/bert-base-multilingual-uncased-sentiment"
    tokenizer = AutoTokenizer.from_pretrained(model_name)
    pt_batch = tokenizer(
        ["We are very happy to show you the 🤗 Transformers library.", "We hope you don't hate it."],
        padding=True,
        truncation=True,
        max_length=512,
        return_tensors="pt",
    )
    pt_outputs = pt_model(**pt_batch) # preprocessed batch of inputs
    pt_predictions = nn.functional.softmax(pt_outputs.logits, dim=-1) # probobilitices for classes
    
    # - Train
    model = AutoModelForSequenceClassification.from_pretrained(model_name)
    from transformers import TrainingArguments, Trainer
    training_args = TrainingArguments(output_dir="test_trainer")  # where to save the checkpoints from your training:
    trainer = Trainer(
        model=model,
        args=training_args,
        train_dataset=small_train_dataset,
        eval_dataset=small_eval_dataset,
        compute_metrics=compute_metrics,
    )
    trainer.train()
    
    
    # - Fine-tuning:


<a id="orgd55a2d4"></a>

### scipts

<https://huggingface.co/docs/transformers/run_scripts>

-   <https://github.com/huggingface/transformers/examples/pytorch/summarization/run_summarization.py>

**TensorFlow** scripts utilize a **MirroredStrategy** for distributed training

Accelerate:

-   pip install git+<https://github.com/huggingface/accelerate>
-   $ accelerate config
-   $ accelerate test

    # - single
    python examples/pytorch/summarization/run_summarization.py \
        --model_name_or_path t5-small \
        --do_train \
        --do_eval \
        --dataset_name cnn_dailymail \
        --dataset_config "3.0.0" \
        --source_prefix "summarize: " \
        --output_dir /tmp/tst-summarization \
        --per_device_train_batch_size=4 \
        --per_device_eval_batch_size=4 \
        --overwrite_output_dir \
        --predict_with_generate
    
    # - distributed
    python -m torch.distributed.launch \
        --nproc_per_node 8 pytorch/summarization/run_summarization.py \
        --fp16 \
        --model_name_or_path t5-small \
        --do_train \
        --do_eval \
        --dataset_name cnn_dailymail \
        --dataset_config "3.0.0" \
        --source_prefix "summarize: " \
        --output_dir /tmp/tst-summarization \
        --per_device_train_batch_size=4 \
        --per_device_eval_batch_size=4 \
        --overwrite_output_dir \
        --predict_with_generate
    
    # - acelerate
    accelerate launch run_summarization_no_trainer.py \
        --model_name_or_path t5-small \
        --dataset_name cnn_dailymail \
        --dataset_config "3.0.0" \
        --source_prefix "summarize: " \
        --output_dir ~/tmp/tst-summarization


<a id="orgd028c53"></a>

### installation log

    pip3 install transformers==4.24.0 --user
    /usr/lib/python3/dist-packages/secretstorage/dhcrypto.py:15: CryptographyDeprecationWarning: int_from_bytes is deprecated, use int.from_bytes instead
      from cryptography.utils import int_from_bytes
    /usr/lib/python3/dist-packages/secretstorage/util.py:19: CryptographyDeprecationWarning: int_from_bytes is deprecated, use int.from_bytes instead
      from cryptography.utils import int_from_bytes
    Collecting transformers==4.24.0
      Downloading transformers-4.24.0-py3-none-any.whl (5.5 MB)
         ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 5.5/5.5 MB 349.8 kB/s eta 0:00:00
    Requirement already satisfied: tqdm>=4.27 in ./.local/lib/python3.8/site-packages (from transformers==4.24.0) (4.48.2)
    Requirement already satisfied: packaging>=20.0 in ./.local/lib/python3.8/site-packages (from transformers==4.24.0) (22.0)
    Requirement already satisfied: tokenizers!=0.11.3,<0.14,>=0.11.1 in ./.local/lib/python3.8/site-packages (from transformers==4.24.0) (0.12.1)
    Requirement already satisfied: requests in ./.local/lib/python3.8/site-packages (from transformers==4.24.0) (2.28.1)
    Requirement already satisfied: numpy>=1.17 in ./.local/lib/python3.8/site-packages (from transformers==4.24.0) (1.24.0)
    Requirement already satisfied: filelock in ./.local/lib/python3.8/site-packages (from transformers==4.24.0) (3.0.12)
    Requirement already satisfied: huggingface-hub<1.0,>=0.10.0 in ./.local/lib/python3.8/site-packages (from transformers==4.24.0) (0.10.0)
    Requirement already satisfied: regex!=2019.12.17 in ./.local/lib/python3.8/site-packages (from transformers==4.24.0) (2022.9.13)
    Requirement already satisfied: pyyaml>=5.1 in ./.local/lib/python3.8/site-packages (from transformers==4.24.0) (5.4.1)
    Requirement already satisfied: typing-extensions>=3.7.4.3 in ./.local/lib/python3.8/site-packages (from huggingface-hub<1.0,>=0.10.0->transformers==4.24.0) (4.4.0)
    Requirement already satisfied: idna<4,>=2.5 in ./.local/lib/python3.8/site-packages (from requests->transformers==4.24.0) (3.4)
    Requirement already satisfied: charset-normalizer<3,>=2 in ./.local/lib/python3.8/site-packages (from requests->transformers==4.24.0) (2.1.1)
    Requirement already satisfied: certifi>=2017.4.17 in ./.local/lib/python3.8/site-packages (from requests->transformers==4.24.0) (2022.12.7)
    Requirement already satisfied: urllib3<1.27,>=1.21.1 in ./.local/lib/python3.8/site-packages (from requests->transformers==4.24.0) (1.26.13)
    Installing collected packages: transformers
      Attempting uninstall: transformers
        Found existing installation: transformers 4.22.2
        Uninstalling transformers-4.22.2:
          Successfully uninstalled transformers-4.22.2
    Successfully installed transformers-4.24.0


<a id="org7f883d5"></a>

## accelerate - DISTRIBUTED <a id="orgb43b5bc"></a>

1.  accelerator.prepare(
2.  replace   loss.backward() with accelerator.backward(loss)

The "correct" way to launch multi-node training is running $ accelerate launch my<sub>script.py</sub>
 &#x2013;accelerate<sub>config.yml</sub> on each machine


<a id="org6198b22"></a>

### hello world

    from accelerate import Accelerator
    
    accelerator = Accelerator()
    
    train_dataloader, eval_dataloader, model, optimizer = accelerator.prepare(
        train_dataloader, eval_dataloader, model, optimizer
    )
    
    for epoch in range(num_epochs):
        for batch in train_dataloader:
            outputs = model(**batch)
            loss = outputs.loss
            accelerator.backward(loss)
    
            optimizer.step()
            lr_scheduler.step()
            optimizer.zero_grad()
            progress_bar.update(1)
    # -- replace the typical loss.backward() in your training loop with 🤗 Accelerate’s backwardmethod:


<a id="orgd462ba6"></a>

### links

-   <https://huggingface.co/docs/transformers/accelerate>
-   <https://huggingface.co/blog/accelerate-large-models>
-   <https://huggingface.co/docs/accelerate/usage_guides/big_modeling>
-   multi-GPU <https://huggingface.co/docs/accelerate/v0.12.0/en/basic_tutorials/notebook>
-   <https://github.com/huggingface/accelerate/issues/1242>
-   <https://github.com/huggingface/accelerate/issues/1185>


<a id="org3bd00f2"></a>

## PEFT - DISTRIBUTED

Parameter-Efficient Fine Tuning
methods freeze the pretrained model parameters during fine-tuning and add a small number of trainable
 parameters (the adapters) on top of it

-   very memory-efficient with lower compute usage while producing results comparable to a fully fine-tuned model.
-   leveraging DeepSpeed and Big Model Inference

severl Methods

integrated with **Accelerate** for large scale models leveraging **DeepSpeed** and Accelerate's Big Model Inferencing capabilities.


<a id="org2845444"></a>

### links

-   <https://huggingface.co/docs/peft/index>
-   <https://github.com/huggingface/peft>


<a id="org7bab1cb"></a>

## TRL <a id="org6b34e92"></a>

Transformer Reinforcement Learning

train transformer language models and stable diffusion models with Reinforcement Learning, from the Supervised

-   Fine-tuning step (SFT)
-   Reward Modeling step (RM)
-   Proximal Policy Optimization (PPO)

see [[<data_science>]]

also to fine-tune a model to

-   generate positive movie reviews, <https://huggingface.co/docs/trl/sentiment_tuning>
-   do controlled generation <https://github.com/lvwerra/trl/blob/main/examples/sentiment/notebooks/gpt2-sentiment-control.ipynb>
-   make the model less toxic. <https://huggingface.co/docs/trl/detoxifying_a_lm>

**Allow distributed** - leverage accelerate from the Hugging Face ecosystem to make this possible


<a id="org662c3cc"></a>

### links

-   <https://pypi.org/project/trl/>
-   <https://huggingface.co/docs/trl/main/en/index>
-   <https://huggingface.co/blog/trl-peft>


<a id="orgab4302d"></a>

## Spaces

showcase your work in the form of self contained ML demo apps

you can choose any licence type

SDK. At the time of writing you can pick from two Python based frameworks for hosting apps: Gradio or
Streamlit. Alternatively you can just use custom HTML.


<a id="org6a55e8d"></a>

## cache and offline mode


<a id="orgaa82573"></a>

### transformers

-   ~/.cache/huggingface/hub <https://huggingface.co/docs/transformers/installation?highlight=transformers_cache#cache-setup>

offline

1.  env: TRANSFORMERS<sub>OFFLINE</sub>=1 HF<sub>DATASETS</sub><sub>OFFLINE</sub>=1.

    HF_DATASETS_OFFLINE=1 TRANSFORMERS_OFFLINE=1 python examples/pytorch/translation/run_translation.py --model_name_or_path t5-small --dataset_name wmt16 --dataset_config ro-en ...

1.  save<sub>pretrainde</sub> and from<sub>pretrained</sub>
    -   default with download:

    AutoTokenizer.from_pretrained("bigscience/T0_3B") ; AutoModelForSeq2SeqLM.from_pretrained("bigscience/T0_3B")

-   save:

    .save_pretrained("./your/path/bigscience_t0") ; .save_pretrained("./your/path/bigscience_t0")

-   offline use:

    .from_pretrained("./your/path/bigscience_t0") ; .from_pretrained("./your/path/bigscience_t0")

1.  huggingface<sub>hub</sub>
    1.  python -m pip install huggingface<sub>hub</sub>
    2.  from huggingface<sub>hub</sub> import hf<sub>hub</sub><sub>download</sub>
    3.  hf<sub>hub</sub><sub>download</sub>(repo<sub>id</sub>="bigscience/T0<sub>3B</sub>", filename="config.json", cache<sub>dir</sub>="./your/path/bigscience<sub>t0</sub>")


<a id="org6369f81"></a>

## Main concepts

**Model classes**

-   PyTorch models (torch.nn.Module
-   Keras models (tf.keras.Model)
-   JAX/Flax models (flax.linen.Module)

**Configuration classes** - store the hyperparameters required to build a model (such as the number of layers
  and hidden size).

-   pretrained model has Configuration class inside

**Preprocessing classes** - convert the raw data into a format accepted by the model.

-   tokenizer - strings
-   Image processors - vision inputs
-   feature extractors - audio inputs
-   processor - multimodal inputs


<a id="org64530ee"></a>

## problems:

requests.exceptions.SSLError: HTTPSConnectioPool(host='huggingface.co', port=443): Max retries exceeded with url


<a id="orgb1f7a3d"></a>

## pip install gradio<sub>client</sub>

to quickly build a demo or web application for your machine learning model

<https://github.com/gradio-app/gradio>

    import sys
    import time
    from gradio_client import Client
    
    client = Client("ysharma/Explore_llamav2_with_TGI", hf_token="hf_...")
    # client = Client("abidlabs/my-private-space", hf_token="...")
    result = client.predict(
    				"Howdy!",	# str in 'parameter_6' Textbox component
    				api_name="/chat"
    )
    job = client.submit(str(sys.argv[1:]), api_name="/chat")
    while not job.done():
        time.sleep(0.5)
        print(job.outputs()[-1])
    # info about api:
    client.view_api(return_format="dict")
    # not working:
    result = client.predict("How are you, I am fine, can you cum?")
    print(result)

-   upload<sub>url</sub> = self.src, utils.UPLOAD<sub>URL</sub>)
-   reset<sub>url</sub> = self.src, utils.RESET<sub>URL</sub>)
-   api<sub>url</sub> = self.src, utils.API<sub>URL</sub>
-   api<sub>info</sub><sub>url</sub> = self.src, API<sub>INFO</sub><sub>URL</sub> or utils.RAW<sub>API</sub><sub>INFO</sub><sub>URL</sub>


<a id="org11732d0"></a>

## sci-libs/huggingface<sub>hub</sub>

pip install huggingface<sub>hub</sub>[inference] An async version of the client is also provided, based on asyncio and aiohttp. You can either install aiohttp directly or use the [inference].

    pip install huggingface_hub[inference]
    export HUGGINGFACE_TOKEN=?? # not password
    huggingface-cli login --token $HUGGINGFACE_TOKEN
    # Your token has been saved to ~/.cache/huggingface/token

text-generation-inference backend (TGI) - ? <https://github.com/huggingface/text-generation-inference>.

 transformers + api-inference solution is still in use. - ?
from huggingface<sub>hub</sub> import **InferenceClient** access to:

-   Inference API -  Hugging Face’s infrastructure for free >10GB
-   Inference Endpoints -  a cloud provider of your choice.

tasks:

-   question-answering
-   text-generation

**client.text<sub>generation</sub>** calls **client.post**

1.  tasks

        from huggingface_hub import InferenceClient
        client = InferenceClient()
        [print(x) for x in client.list_deployed_models()]
    
        image-to-image
        text-to-image
        automatic-speech-recognition
        fill-mask
        feature-extraction
        summarization
        translation
        text-to-audio
        text-to-speech
        text-generation
        image-classification
        image-segmentation
        image-to-text
        object-detection
        question-answering
        text2text-generation
        token-classification
        table-question-answering
        text-classification
        zero-shot-classification
        zero-shot-image-classification
        image-text-to-text
        sentence-similarity

2.  tasks-model <a id="org0b86f38"></a>

        alias curl="proxychains -f /home/u/proxychains.conf curl 2>/dev/null"
        curl https://huggingface.co/api/tasks |jq -M

3.  url from model and task:

    \_HF<sub>DEFAULT</sub><sub>ENDPOINT</sub> = "<https://huggingface.co>"
    
    INFERENCE<sub>ENDPOINT</sub> <https://api-inference.huggingface.co>
    
    if task in ("feature-extraction", "sentence-similarity")
    
    -   f"{INFERENCE<sub>ENDPOINT</sub>}/pipeline/{task}/{model}"
    -   else f"{INFERENCE<sub>ENDPOINT</sub>}/models/{model}"

4.  InferenceClient

        from huggingface_hub import InferenceClient
        client = InferenceClient()
        image = client.text_to_image("An astronaut riding a horse on the moon.")
        image.save("astronaut.png")

5.  InferenceClient my

        from huggingface_hub import InferenceClient
        client = InferenceClient(model="upstage/llama-30b-instruct-2048", token=True, timeout=25, headers={}, cookies={})
        o = client.text_generation(prompt="An astronaut riding a horse on the moon?")

6.  InferenceClient Async my

        from huggingface_hub import AsyncInferenceClient
        client = AsyncInferenceClient(model="upstage/llama-30b-instruct-2048", token=True, timeout=25, headers={}, cookies={})
        o = await client.text_generation(prompt="An astronaut riding a horse on the moon?")

7.  InferenceClient post

        from huggingface_hub import InferenceClient
        client = InferenceClient(model="meta-llama/Meta-Llama-3-8B", token=True, timeout=25, headers={}, cookies={})
        o = client.text_generation(prompt="An astronaut riding a horse on the moon?")
        # response = client.post(json={"inputs": "An astronaut riding a horse on the moon."}, model="stabilityai/stable-diffusion-2-1")
        response.content

8.  curl

    curl -X POST
    -H “Authorization: Bearer api<sub>xxxxxxxxxxxxxxxxxxxxxxx</sub>”
    -H “Content-Type: application/json”
    -d ‘“My name is Mariama, my favorite”’
    <https://api-inference.huggingface.co/models/gpt2>
    
    " curl -X POST
    -H “Authorization: Bearer api<sub>xxxxxxxxxxxxxxxxxxxxxxx</sub>”
    -H “Content-Type: application/json”
    -d ‘“My name is Mariama, my favorite”’
    -d “max<sub>length</sub> = 30”
    htt/api-inference.huggingface.co/models/gpt2 "
    
    curl -N 127.0.0.1:8080/generate<sub>stream</sub> \\
        -X POST \\
        -d '{"inputs":"What is Deep Learning?","parameters":{"max<sub>new</sub><sub>tokens</sub>":20}}' \\
        -H 'Content-Type: application/json'
    
    import requests
    
    def query(payload, model<sub>id</sub>, api<sub>token</sub>):
    	headers = {"Authorization": f"Bearer {api<sub>token</sub>}"}
    	API<sub>URL</sub> = f"<https://api-inference.huggingface.co/models/{model_id>}"
    	response = requests.post(API<sub>URL</sub>, headers=headers, json=payload)
    	return response.json()
    
    model<sub>id</sub> = "distilbert-base-uncased"
    api<sub>token</sub> = "hf<sub>XXXXXXXX</sub>" # get yours at hf.co/settings/tokens
    data = query("The goal of life is [MASK].", model<sub>id</sub>, api<sub>token</sub>)
    
    GET "<https://huggingface.co/api/tasks>"

9.  links

    -   <file:///var/db/repos/gentoo/sci-libs/huggingface_hub/huggingface_hub-0.15.1.ebuild>
    -   <https://huggingface.co/docs/huggingface_hub/v0.16.3/en/package_reference/inference_client>
    -   <https://huggingface.co/docs/huggingface_hub/v0.16.3/en/guides/inference>
    -   <https://github.com/huggingface/huggingface_hub/blob/v0.16.3/src/huggingface_hub/inference/_client.py#L239>


<a id="orgb85662c"></a>

### links

free inference with spaces:

-   <https://huggingface.co/spaces>
-   <https://huggingface.co/spaces/lmsys/chatbot-arena-leaderboard>
-   .local/lib/python3.11/site-packages/huggingface<sub>hub</sub>/inference/<sub>client.py</sub>


<a id="org30b1daf"></a>

## autotrain

1.  <https://huggingface.co/autotrain>
2.  <https://ui.autotrain.huggingface.co/>

workflow

1.  Task
    -   Vision
        -   Image Classification - 	is the task of classifying images into an arbitrary number of groups.
    -   Text
        -   Text Classification (Binary) -  is the task of classifying texts into two distinct groups.
        -   Text Classification (Multi-class) - 	is the task of classifying texts into an arbitrary number of groups, each sample belonging to only one group
        -   Token Classification - is the task of classifying certain entities (persons, locations, nouns, verbs&#x2026;) present in a text into a given number of groups.
        -   Question Answering (Extractive) - 	is the task of retrieving the answer to a question from a context
        -   Translation - 	is the task of translating a text from a language to another
        -   Summarization - 	is the task of summarizing a document or an article into a shorter text.
        -   Text Regression - 	is the task of attributing a score to a text.
    -   Tabular
        -   Tabular Data Classification (Binary)  is the task of classifying tabular data into an arbitrary number of groups, each sample belonging to only one group.
        -   Tabular Data Classification (Multi-class) 	is the task of classifying tabular data into an arbitrary number of groups, and each sample can belong to several groups.
        -   Tabular Data Regression 	is the task of attributing a score to tabular data.
2.  Model choice (Automatic, Manual)
3.  Data
    -   Method 1: Pre-arranged folders
    -   Method 2: CSV/JSONL with associated images


<a id="orgdf53d5f"></a>

## AutoTokenizer.from<sub>pretrained</sub>

    from transformers import AutoTokenizer, AutoModel

Vocabulary Loading: Load the vocabulary from vocab.json.
Merges Loading: Load the merges file if applicable (e.g., for WordPiece tokenizers).
Configuration Loading: Load the tokenizer configuration from tokenizer<sub>config.json</sub>.
Encoding Logic: Implement the encoding logic within the encode method. This example is simplified and may need additional handling for special tokens, padding, and other edge cases.


<a id="org2b8d4ac"></a>

## AutoModel.from<sub>pretrained</sub>


<a id="org6152c69"></a>

## gentoo transformers installation

emerge &#x2013;ask sci-libs/transformers

    [ebuild  N    ~] sci-libs/transformers-4.37.2  USE="-test" PYTHON_SINGLE_TARGET="python3_12 -python3_10 -python3_11"
    [ebuild  N    ~]  sci-libs/safetensors-0.4.3  USE="-debug -test" PYTHON_TARGETS="python3_12 -python3_10 -python3_11"
    [ebuild  N    ~]  sci-libs/tokenizers-0.15.2-r1  USE="-debug -test" PYTHON_SINGLE_TARGET="python3_12 -python3_10 -python3_11"
    [ebuild  N    ~]  sci-libs/huggingface_hub-0.21.4  USE="-test" PYTHON_TARGETS="python3_12 -python3_10 -python3_11"
    [ebuild  N     ]   dev-python/filelock-3.15.4  USE="-test" PYTHON_TARGETS="python3_12 (-pypy3) -python3_10 -python3_11 (-python3_13)"
    [ebuild  N     ]   dev-python/tqdm-4.66.4  USE="-examples -test" PYTHON_TARGETS="python3_12 (-pypy3) -python3_10 -python3_11 (-python3_13)"
    [ebuild  N     ]  dev-python/regex-2024.7.24  USE="-debug -doc -test" PYTHON_TARGETS="python3_12 -python3_10 -python3_11 (-python3_13)"

^0.2.143 - at least the specified version but can be any version that does not break backward compatibility.

<https://github.com/huggingface/transformers>

-   safetensors <https://github.com/huggingface/safetensors>
    -   store and distribute tensors
    -   Big amount of Rust Carge open-source dependencies.
    -   <https://github.com/huggingface/safetensors/blob/main/safetensors/Cargo.toml>
        -   numpy>=1.21.6
        -   torch>=1.10
        -   pyo3 version = "0.21.1", features = ["extension-module"] c v0.22.2 <https://github.com/PyO3/pyo3/blob/v0.21.1/Cargo.toml>
            -   pyo3-build-config v0.21.1
                -   target-lexicon ^0.12 c v0.12.16
                -   once<sub>cell</sub> ^1 c v1.19.0
            -   cfg-if ^1.0 c v1.0.0
            -   libc ^0.2.62 c v0.2.158
            -   memoffset ^0.9 c v0.9.1
                -   autocfg ^1 c v1.3.0
            -   parking<sub>lot</sub> >=0.11 <0.13 (for old) c v0.12.3
                -   lock<sub>api</sub> ^0.4.6 c v0.4.12
                    -   scopeguard ^1.1.0 c v1.2.0
                -   parking<sub>lot</sub><sub>core</sub> ^0.9.0 c v0.9.10 <https://github.com/Amanieu/parking_lot/tree/master/core>
                    -   cfg-if ^1.0.0 c v1.0.0
                    -   libc
                    -   redox<sub>syscall</sub> ^0.5 c v0.5.3
                        -   bitflags ^2.4
                    -   smallvec ^1.6.1 c v1.13.2
                    -   windows-targets ^0.52.0 c v0.52.6
            -   (once<sub>cell</sub> for new version ^1.13 c v1.19.0)
            -   portable-atomic ^1.0 c v1.7.0
            -   pyo3-ffi =0.21.1 c =0.22.2 (it is features = ["extension-module"])
            -   indexmap (optional) c >=1.6 <3
        -   memmap2 "0.9" c v0.9.4https://crates.io/crates/memmap2
            -   libc ^0.2.143 c v0.2.158
        -   serde  ="1.0", features = ["derive"]} c v1.0.209 l v1.0.197 <https://github.com/serde-rs/serde>  <https://crates.io/crates/serde>
            -   serde<sub>derive</sub> ="1.0" (optional) <https://crates.io/crates/serde_derive>
                -   proc-macro2 (for new version) ^1.0.74 v1.0.86
                    -   unicode-ident ^1.0 c v1.0.12
                -   quote ^0.3.8 c v0.3.15
                -   serde<sub>derive</sub><sub>internals</sub> = v0.15.0 (for old)
                -   syn ^2.0.46 c v2.0.77
            -   syn ^0.11 c v0.11.11 (for old)
        -   serde<sub>json</sub> 1.0 c v1.0.127 <https://github.com/serde-rs/json> <https://crates.io/crates/serde_json>
            -   itoa ^1.0 c v1.0.11
            -   memchr ^2 c v2.7.4
            -   ryu ^1.0 c v1.0.18
            -   indexmap (optional) ^2.2.3 c v2.5.0 - A hash table with consistent order and fast iteration.
                -   equivalent
                -   hashbrown
                -   arbitrary
                -   borsh
                -   quickcheck
                -   rayon
                -   rustc-rayon (optional)
-   tokenizers <https://github.com/huggingface/tokenizers>
    -   Provides an implementation of today's most used tokenizers,
    -   Big amount of Rust Carge open-source dependencies.
-   huggingface<sub>hub</sub> <https://github.com/huggingface/huggingface_hub>
    -   Python client for the Huggingface Hub.
-   dev-python/regex


<a id="orgd408956"></a>

### setup.py and gentoo ebuild

    install_requires = [
        deps["filelock"],  # filesystem locks, e.g., to prevent parallel downloads
        deps["huggingface-hub"],
        deps["numpy"],
        deps["packaging"],  # utilities from PyPA to e.g., compare versions
        deps["pyyaml"],  # used for the model cards metadata
        deps["regex"],  # for OpenAI GPT
        deps["requests"],  # for downloading models over HTTPS
        deps["tokenizers"],
        deps["safetensors"],
        deps["tqdm"],  # progress bars in model download and training scripts
    ]

    RDEPEND="
    	sci-libs/tokenizers[${PYTHON_SINGLE_USEDEP}]
    	$(python_gen_cond_dep '
    		dev-python/filelock[${PYTHON_USEDEP}]
    		dev-python/numpy[${PYTHON_USEDEP}]
    		dev-python/packaging[${PYTHON_USEDEP}]
    		dev-python/pyyaml[${PYTHON_USEDEP}]
    		dev-python/regex[${PYTHON_USEDEP}]
    		dev-python/requests[${PYTHON_USEDEP}]
    		dev-python/tqdm[${PYTHON_USEDEP}]
    		sci-libs/huggingface_hub[${PYTHON_USEDEP}]
    		>=sci-libs/safetensors-0.4.1[${PYTHON_USEDEP}]
    	')
    "


<a id="orgf08a4d3"></a>

## troubleshooting


<a id="org46fa40c"></a>

### TypeError: unhashable type: 'AddedToken' in transformers/tokenization<sub>utils.py</sub>", line 437

-   if we use fast version of Tokenizer. from tokenizers import AddedToken - used, which have hash function

to tokenization<sub>utils</sub><sub>base.py</sub>::84 we just add to class AddedToken

    def __hash__(self):
        return hash((self.content, self.single_word, self.lstrip, self.rstrip, self.special, self.normalized))
    
    def __eq__(self, other):
        if not isinstance(other, AddedToken):
            return False
        return (self.content, self.single_word, self.lstrip, self.rstrip, self.special, self.normalized) == (
            other.content, other.single_word, other.lstrip, other.rstrip, other.special, other.normalized
        )


<a id="org60a2365"></a>

### AttributeError: 'AddedToken' object has no attribute '<span class="underline"><span class="underline">setstate</span></span>'. Did you mean: '<span class="underline"><span class="underline">getstate</span></span>'?

    token.__setstate__({"special": True, "normalized": token.normalized})

add to class AddedToken tokenization<sub>utils.py</sub>

    def __setstate__(self, state):
        self.__dict__.update(state)


<a id="org9033e28"></a>

## distributed

<https://huggingface.co/docs/accelerate/index>

-   <https://github.com/microsoft/DeepSpeed/>


<a id="orge6ebf08"></a>

## Text embeddings models

<https://huggingface.co/thenlper/gte-small>

output - class BaseModelOutputWithPoolingAndCrossAttentions(ModelOutput)

-   class ModelOutput(OrderedDict)

file: transformers/modeling<sub>outputs.py</sub>::70

doc <https://huggingface.co/docs/transformers/main_classes/output>


<a id="org507be70"></a>

## links

-   <https://huggingface.co/docs/transformers/create_a_model>
-   <https://huggingface.co/docs/huggingface_hub/index>

