
# Table of Contents

1.  [NumPy](#org005e421)
    1.  [basic](#org89df137)
    2.  [round округление](#org200b750)
    3.  [image to batch](#org4dd63eb)
    4.  [keras.utils.to<sub>categorical</sub>](#org6e6b893)
        1.  [basic](#org307c3bd)
        2.  [add sum category](#orga2bec6c)
    5.  [save and saves](#org81cef33)
2.  [pandas](#org9ba5524)
    1.  [read csv](#org05d96b8)
    2.  [sort](#orgd16bd71)
    3.  [row number by group - добавить сложную номерацию по группам](#org8c13ec1)
    4.  [**analysis**](#org8fa3305)
    5.  [Series](#org197241f)
    6.  [DataFrame](#org0b39799)
    7.  [index and levels](#org84cc22a)
    8.  [DISTICT groupby](#org1b7e49f)
    9.  [WHERE AND FILTERS](#orgc24c7ae)
        1.  [filter by date](#orgeb9a4af)
    10. [COUNT](#orgced671b)
        1.  [get unique rows with count](#orgf074d30)
        2.  [count example](#orga943848)
        3.  [most frequent](#org0e56203)
    11. [Merge, join, and concatenate](#org902c472)
    12. [Map, Apply, Applymap](#org9673fc2)
        1.  [Comparing map, applymap and apply: Context Matters](#org35ee95a)
        2.  [apply to column](#org00fdd95)
        3.  [return multiple rows](#org6e19b16)
        4.  [example](#org79eb197)
    13. [save and load](#orgf819b38)
        1.  [read<sub>csv</sub>](#org3ad7731)
        2.  [json](#org682ab47)
    14. [NaN](#org775da27)
        1.  [check](#orgbb59a91)
        2.  [replace](#orga6211a5)
        3.  [drop](#org9681101)
        4.  [get not na](#orgb6fe8e0)
        5.  [other](#org285dbb9)
    15. [Categorical encoding](#org30f6cff)
        1.  [replace values](#org2f7d8d7)
        2.  [label encoding](#orgf36e93f)
        3.  [encode binary](#org4b0fded)
        4.  [onehot encode](#org21cfc66)
    16. [mem usage](#org1ab0dc4)
    17. [Resample for timeseries](#orgcfd77f8)
    18. [rename column](#org0c37738)
    19. [delete column](#orgd870f80)
    20. [delete row](#org114db78)
    21. [type](#orge02b02f)
        1.  [types https://numpy.org/doc/stable/reference/arrays.scalars.html](#org1d9fc61)
        2.  [Display types](#org78e8854)
        3.  [float to int](#orgd56ce87)
        4.  [string to date](#orgf8467ad)
        5.  [Category type](#org0340910)
    22. [if a>5 c = True else False](#org836f2ad)
    23. [pivot tables](#orgef8a0c4)
    24. [OTHER USE CASES](#org34b2deb)
        1.  [dictionary for panda](#orgca0d9ba)
        2.  [Example from dictionary to onehot](#orga1ad237)
        3.  [remove meanless columns](#orgd69499d)
        4.  [Sum two columns containing NaN values](#org6d603d6)
        5.  [reorder columns](#org6236cb6)
        6.  [remove duplicates](#orge3339a3)
3.  [matplotlib](#org7217982)
    1.  [x axis labels range](#org18a705f)
    2.  [Matplotlib is currently using agg, which is a non-GUI backend, so cannot show the figure.](#orgaedbf88)
        1.  [TkAgg](#org8dca228)
        2.  [GTK3Agg](#orga671b6c)
    3.  [usage](#orgf09e763)
    4.  [do not close](#org4226d3b)
    5.  [Multiple Curves](#orgfb98652)
    6.  [separate legend](#orgb74fade)
    7.  [custom histogram](#org9898614)
    8.  [rotate x ticks](#org1c833b5)
    9.  [CASES](#orgd39ab1a)
        1.  [bar plot with two y axes](#org46c48b5)
        2.  [varible in time](#orgd47242b)
4.  [SciPy](#org82c22e2)
5.  [Scikit-learn](#org77825cd)
    1.  [sklearn.tree.DecisionTreeClassifier](#org2f75b8b)
        1.  [usage](#org13d4803)
    2.  [Tuning the hyper-parameters https://scikit-learn.org/stable/modules/grid\_search.html](#orga5fc4c9)

-**- mode: Org; fill-column: 110; coding: utf-8; -**-
\#+TITLE  Python for data science


<a id="org005e421"></a>

# NumPy

-   <https://docs.scipy.org/doc/numpy/reference/>
-   <https://docs.scipy.org/doc/numpy/reference/arrays.ndarray.html>

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

properties:

-   ndarray.shape
-   ndarray.size - произведение чисел в shape
-   ndarray.dtype - bool\_, character, int8, int16, int32, int64, float8, float16, float32, float64, complex64, object\_
-   ndarray.itemsize - размер элемента в байтах
-   ndarray.data - обратно в python - не рекомендуется пользоваться

&#x2026; = : - Ellipse ones[:,5] - пятый слобец


<a id="org89df137"></a>

## basic

    import numpy as np
    a = np.array([1, 2, 3])
    a[[1,2]] # array([2, 3])

    x = np.arange(12).reshape((2,2,3))
    #array([[[ 0,  1,  2],
    #        [ 3,  4,  5]],

    #       [[ 6,  7,  8],
    #        [ 9, 10, 11]]])
    x.sum(axis=0)
    #array([[ 6,  8, 10],
    #       [12, 14, 16]])
    x.sum(axis=1)
    #array([[ 3,  5,  7],
    #       [15, 17, 19]])
    x.sum(axis=2)
    #array([[ 3, 12],
    #       [21, 30]])
    x = np.array([[1,2],[3,4]])
    x[:,0] # array([1, 3])

    np.zeros((3, 5), dtype=float) # dtype - по умолчанию float
    np.ones((2, 2, 2))
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


<a id="org200b750"></a>

## round округление

    a = np.array([1.1, 1.5, 1.9], float)
    >>> np.floor(a)
    array([ 1.,  1.,  1.])
    >>> np.ceil(a)
    array([ 2.,  2.,  2.])
    >>> np.rint(a)
    array([ 1.,  2.,  2.])


<a id="org4dd63eb"></a>

## image to batch

    im = cv.imread('./train/passport_ranee/_0_353.png')
    im = cv.cvtColor(im, cv.COLOR_BGR2GRAY)
    im = im.reshape(im.shape + (1,))  # channels
    im = im.reshape((1,) + im.shape)  # batches


<a id="org6e6b893"></a>

## keras.utils.to<sub>categorical</sub>


<a id="org307c3bd"></a>

### basic

    y_classes = keras.utils.to_categorical(range(len(paths))) # classes array in one-hot
    train_y.append(y_classes[i]) #to set
    # back
    out = model.predict
    i = np.argmax(out, axis=-1)[0] #id
    paths[i] # original


<a id="orga2bec6c"></a>

### add sum category

    >>> c
    array([[1., 0.],
           [0., 1.]], dtype=float32)
    np.append(c, [c[0]+c[1]], axis=0)
    # result:
    array([[1., 0.],
           [0., 1.],
           [1., 1.]], dtype=float32)


<a id="org81cef33"></a>

## save and saves

    np.save('123', data) # 123.npy
    data = np.load('../123.npy', mmap_mode=None)


<a id="org9ba5524"></a>

# pandas


<a id="org05d96b8"></a>

## read csv

    pd.read_csv(p, index_col=0, sep='\t')

-   sep='\t' иногда встречается разделение столбцов по \t. обычно запятой


<a id="orgd16bd71"></a>

## sort

    df.sort_values(by=df['Клиент'], axis=1) # 0 we gave columns, 1 we gave row indexes and sort columns


<a id="org8c13ec1"></a>

## row number by group - добавить сложную номерацию по группам

    df['Номер_контракта'] = df.groupby(['Клиент'])['Дата_заключения_контракта'].cumcount()+1


<a id="org8fa3305"></a>

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


<a id="org197241f"></a>

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


<a id="org0b39799"></a>

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


<a id="org84cc22a"></a>

## index and levels

-   default - created autoincrement int
-   df.set<sub>index</sub>('c')
-   df.reset<sub>index</sub>() - index to column, create new index
-   df.index = Series - ad hoc index
-   df.index.name - index column name

index and columns may have multiple levels

-   multilevel index reated by groupby

-   df.loc[index, (column|:)] - get values at index
-   df.iloc[integer] - get values at position


<a id="org1b7e49f"></a>

## DISTICT groupby

    print(df.groupby('shop_id').item_id.value_counts())
    print(df.groupby('shop_id').item_id.nunique())

    dfg = df[['shop_id', 'item_id'] ].groupby('shop_id')
    print(dfg.agg(['mean', 'count', 'min']))


<a id="orgc24c7ae"></a>

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


<a id="orgeb9a4af"></a>

### filter by date

    df = df.dropna(subset=['Дата_заключения_контракта_d'])
    d0101 = pd.to_datetime('20190101', format='%Y%m%d', errors='ignore')
    d0731 = pd.to_datetime('20190731', format='%Y%m%d', errors='ignore')
    df = df[d0101 >= df['Дата_заключения_контракта_d'] >= d0731]


<a id="orgced671b"></a>

## COUNT


<a id="orgf074d30"></a>

### get unique rows with count

    a = pd.DataFrame(a.groupby(['Коды отказа', 'Описание кодов отказа']).size().reset_index(name="count"))
    a = pd.DataFrame(a)
    c_row = a.pop('count')
    a.insert(0, 'count', c_row)
    a.sort_values(by=['count'], ascending=False).to_csv('kod_otkaza.csv')


<a id="orga943848"></a>

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


<a id="org0e56203"></a>

### most frequent

    pd.Series([2,3,4,5,6].value_counts().idxmax()


<a id="org902c472"></a>

## Merge, join, and concatenate

<https://pandas.pydata.org/pandas-docs/stable/user_guide/merging.html>

Одну таблицу разделенную на две части:

-   верх и низ: pd.concat([s1, s2], ignore<sub>index</sub>=True)
-   лево и право ?

-   concatenate - по умолчанию добавляются строки, default axis=0, join='outer', ignore<sub>index</sub> = False
    -   pd.concat([df1, df4], axis=1, sort=False)  - подбираются столбцы с одинаковым значением, добавляются NaN-s
    -   join='outer' -  NaN-s не добавляются

SQL style

1.  merge - ignore index, uses specified column
    -   pd.merge(playdata,genetic<sub>train</sub>, on="SK<sub>ID</sub><sub>CURR</sub>",how="left" ) - если есть дупликаты справа, то они все
        войдут даже справа
    -   "on" must be found in both DataFrames
    -   indicator=True - adds \_merge field with ['left<sub>only</sub>', 'right<sub>only</sub>', 'both']
2.  join - uses index column
    -   first you should set index to joined columns
    -   table1.join(table2, lsuffix='<sub>table1</sub>', rsuffix='<sub>table2</sub>',how="left")

new column:

    df['asd'] = list


<a id="org9673fc2"></a>

## Map, Apply, Applymap

-   <https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.map.html>
-   <https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.apply.html>
-   <https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.applymap.html>


<a id="org35ee95a"></a>

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
    works better.
-   **map** is optimised for elementwise mappings and transformation. Operations that involve
    dictionaries or Series will enable pandas to use faster code paths for better performance.
-   **Series.apply** returns a scalar for aggregating operations, Series otherwise. Similarly for
    DataFrame.apply. Note that apply also has fastpaths when called with certain NumPy functions such
    as mean, sum, etc.


<a id="org00fdd95"></a>

### apply to column

    df['A'] = df['A'].apply(lambda x: str.strip(x) if pd.notna(x) else x)


<a id="org6e19b16"></a>

### return multiple rows

1.

    return pd.Series([1,2,3]) ; df['a'].apply(f).to_numpy()[:,1] - time 13 sec

1.

    return [1,2,3] ; list(zip(*df['a'].apply(f).to_list()) - time 28.6 sec


<a id="org79eb197"></a>

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


<a id="orgf819b38"></a>

## save and load

    df.to_pickle('b')
    df: pandas.DataFrame = pandas.read_pickle('b')


<a id="org3ad7731"></a>

### read<sub>csv</sub>

    # Имена переменных
    columns = ['age', 'workclass', 'fnlwgt', 'education', 'education-num',
               'marital-status', 'occupation', 'relationship', 'race', 'sex',
               'capital-gain', 'capital-loss', 'hours-per-week', 'native-country', 'income']
    df = pd.read_csv('adult.data', header=None, names=columns, na_values=' ?')


<a id="org682ab47"></a>

### json

    pd.read_json('test_data.txt') - {"Клиент":"customer_3567","Дата_заключения_контракта":"2018-05-12","Дата_закрытия_контракта":"2018-06-13","Плановая_дата_закрытия_контракта":"2018-06-13","Сумма_выдачи_по_контракту":21891},{"Клиент":"customer_39200","Дата_заключения_контракта":"2019-03-29","Дата_закрытия_контракта":"2019-04-05","Плановая_дата_закрытия_контракта":"2019-04-05","Сумма_выдачи_по_контракту":11480},{"Клиент":"customer_26509","Дата_заключения_контракта":"2019-03-29","Дата_закрытия_контракта":"2019-04-30","Плановая_дата_закрытия_контракта":"2019-04-28","Сумма_выдачи_по_контракту":2640},{"Клиент":"customer_26623","Дата_заключения_контракта":"2019-03-06","Дата_закрытия_контракта":"2019-03-29","Плановая_дата_закрытия_контракта":"2019-04-06","Сумма_выдачи_по_контракту":25038},{"Клиент":"customer_14647","Дата_заключения_контракта":"2019-03-29","Дата_закрытия_контракта":"2019-04-15","Плановая_дата_закрытия_контракта":"2019-04-15","Сумма_выдачи_по_контракту":6369},{"Клиент":"customer_29658","Дата_заключения_контракта":"2019-12-05","Плановая_дата_закрытия_контракта":"2019-12-27","Сумма_выдачи_по_контракту":24172},{"Клиент":"customer_37798","Дата_заключения_контракта":"2019-11-18","Дата_закрытия_контракта":"2019-12-05","Плановая_дата_закрытия_контракта":"2019-12-18","Сумма_выдачи_по_контракту":9867},


<a id="org775da27"></a>

## NaN

выбрать

-   df.loc[df.index.isnull()]


<a id="orgbb59a91"></a>

### check

-   df.isnull().values.any() # true or false
-   df.isnull().sum() # кол-во по столбцам
-   df.hasna - # true or false


<a id="orga6211a5"></a>

### replace

-   df.dropna(subset=['column<sub>name</sub>'], inplace=True)
-   df['col'].fillna(0, inplace=True)


<a id="org9681101"></a>

### drop

    df.dropna(subset=['col1', 'col2'],inplace=True) # remove rows if NaN in col1 or col2 column


<a id="orgb6fe8e0"></a>

### get not na

    df = df[~df['col'].isna()]


<a id="org285dbb9"></a>

### other


    # MEAN
    from sklearn.preprocessing import Imputer
    # Define the values to replce and the strategy of choosing the replacement value
    imp = Imputer(missing_values="NaN", strategy="mean")
    cols = [1, 13]
    df[cols] = imp.fit_transform(applicants[cols])

    # REMOVE string -> NaN
    applicants[cols] = applicants[cols].apply(pd.to_numeric, errors='coerce')


<a id="org30f6cff"></a>

## Categorical encoding


<a id="org2f7d8d7"></a>

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


<a id="orgf36e93f"></a>

### label encoding

    for c in label_e_columns:
        df[c] = df[c].astype('category').cat.codes

    # get  velues before encoding
    print(dict(enumerate(df[c].astype('category').cat.categories)))


<a id="org4b0fded"></a>

### encode binary

    df['income'] = df['income'].map({' <=50K': 0, ' >50K': 1})
    df['income'] = df['income'].notnull().astype(int)


<a id="org21cfc66"></a>

### onehot encode


    df = pd.get_dummies(df, dummy_na=False)  # dummy_na=True for debug

    s = pd.Series(list('abca'))
    pd.get_dummies(s)
       a  b  c
    0  1  0  0
    1  0  1  0
    2  0  0  1
    3  1  0  0


<a id="org1ab0dc4"></a>

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


<a id="orgcfd77f8"></a>

## Resample for timeseries

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


<a id="org0c37738"></a>

## rename column

    df.columns.str.replace("original_column", "APP_SRC_REF")

may rename several columns!

-   ('doggod', 'god')
-   df.columns.str.replace("god", "war")
-   ('dogwar', 'war')


<a id="orgd870f80"></a>

## delete column

1.

2.  df.drop('education', axis=1, inplace=True)
3.  df.drop(['education', 'fabrication'], axis=1, inplace=True)

or

-   df.drop(columns=['education', 'fabrication'], inplace=True)
-   df.drop(df.iloc[:,1:3], axis=1)
-

-   del df['education']


<a id="org114db78"></a>

## delete row

delete NA

    df.dropna(axis='index', subset=['column1'])

    for x in ['sd', 'a2']:
      ids = df.index[(df["code"] == x) & (df["something"] == 1)]
      if len(ids) != 0:
         df.drop(ids, inplace=True)


<a id="orge02b02f"></a>

## type

automatic types

error= {‘ignore’, ‘raise’, ‘coerce’}, default ‘raise’

-   ignore - invalid parsing will return the input
-   coerce - invalid parsing will be set as NaN.


<a id="org1d9fc61"></a>

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
<td class="org-left">string\_, unicode\_, mixed types</td>
</tr>


<tr>
<td class="org-left">Int64/Int32</td>
<td class="org-left">int</td>
<td class="org-left">int\_, int8, int16, int32, int64, uint8, uint16, uint32, uint64</td>
</tr>


<tr>
<td class="org-left">float64</td>
<td class="org-left">float</td>
<td class="org-left">float\_, float16, float32, float64</td>
</tr>


<tr>
<td class="org-left">bool</td>
<td class="org-left">bool</td>
<td class="org-left">bool\_</td>
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


<a id="org78e8854"></a>

### Display types

    print(df1.dtypes)
    categorial_columns = df.select_dtypes(include=["object"]).columns
    numerical_columns = df.select_dtypes(exclude=["object"]).columns
    print(data[categorial_columns].describe())
    # unique
    for c in categorial_columns:
       print(c, data[c].unique())


<a id="orgd56ce87"></a>

### float to int

with NaN

    df['col'] = df['col'].round().astype('Int32')

without NaN

1.  drop or fill NaN
2.  df['col'] = df['col'].round().astype(int)


<a id="orgf8467ad"></a>

### string to date

    df['col1'] = pd.to_datetime(df['col1'])
    df['Дата рождения клиента'] = pd.to_numeric(2021 - pd.to_datetime(df['Дата рождения клиента']).dt.year).astype('Int32')


<a id="org0340910"></a>

### Category type

object string to category:

-   .astype("category")


<a id="org836f2ad"></a>

## if a>5 c = True else False

<https://datatofish.com/if-condition-in-pandas-dataframe/>

    df.loc[df['set_of_numbers'] <= 4, 'flag'] = 'True'
    df['flag'].fillna(False,inplace=True)


<a id="orgef8a0c4"></a>

## pivot tables

    melb_df.groupby(['Rooms', 'Type'])['Price'].mean() # иерархические индексы
    melb_df.groupby(['Rooms', 'Type'])['Price'].mean().unstack() # раскладывает таблицу в столбцы
    melb_df.pivot_table(
        values='Price',
        index='Rooms',
        columns='Type',
        fill_value=0
    ).round() # аналогично второму


<a id="org34b2deb"></a>

## OTHER USE CASES


<a id="orgca0d9ba"></a>

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


<a id="orga1ad237"></a>

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


<a id="orgd69499d"></a>

### remove meanless columns

    df.fillna(0)
    for x in df.iloc[:]:
        if df[x].min() == df[x].max():
            del df[x]


<a id="org6d603d6"></a>

### Sum two columns containing NaN values

    total = df['Jan'] + df['Feb'].fillna(0)


<a id="org6236cb6"></a>

### reorder columns

    # firest
    target = df.pop('first_decision_state')
    df.insert(1, 'first_decision_state', target)

    # second
    cols = df.columns.tolist()
    cols = cols[-1:] + cols[:-1] # last to first
    df = df[cols]


<a id="orge3339a3"></a>

### TODO remove duplicates

-   df.sort<sub>values</sub>(by=['id', 'completed<sub>at</sub>'], na<sub>position</sub>='first')
-   df.drop<sub>duplicates</sub>('id', keep='last')


<a id="org7217982"></a>

# matplotlib

-   <https://matplotlib.org/3.1.0/tutorials/introductory/pyplot.html>

    ax: Axes = None
    fig, ax = plt.subplots(1,1, figsize=(19,10))
    plt.subplots_adjust(left=0.076, right=0.96, bottom=0.04, top=0.96, wspace=0.30, hspace=0.7) # if more than one
    plt.plot(.., legend='line1')
    title="graph"
    fig.suptitle('test title', fontsize=20)
    plt.suptitle('test title', fontsize=20) #?
    plt.title('', {'fontsize':20})
    plt.rc('font', size=6) # set font size
    plt.legend() # add line descriptions
    fig.subplots_adjust(left=0.4, bottom=0.4)
    plt.tight_layout() # corret top, left, bottom, right automatic
    plt.show() # or plt.savefig('name')
    plt.savefig(title)
    plt.close()

    plt.yticks(range(1,10)) # шкала слева
    as.set_xlim(left=3) # шкалировать от 3


<a id="org18a705f"></a>

## x axis labels range

    import matplotlib.ticker as plticker
    loc = plticker.MultipleLocator(base=50)
    ax.xaxis.set_major_locator(loc)


<a id="orgaedbf88"></a>

## Matplotlib is currently using agg, which is a non-GUI backend, so cannot show the figure.

matplotlib.use


<a id="org8dca228"></a>

### TkAgg

    import matplotlib
    matplotlib.use('TkAgg')

Tkinter is a Python binding to the Tk GUI toolkit. It is the standard Python interface to the Tk GUI
toolkit, and is Python's de facto standard GUI.

Gentoo: included with standard Linux

Gentoo: USE="tk"


<a id="orga671b6c"></a>

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


<a id="orgf09e763"></a>

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


<a id="org4226d3b"></a>

## do not close

    plt.close()
    plt.plot()
    plt.draw()
    plt.pause(0.0001)


<a id="orgfb98652"></a>

## Multiple Curves

    import matplotlib.pyplot as plt
    x = [0,1,2,3,4]
    y1 = [2,3,5,7,8]
    y2 = [2, 3, 7, 7, 8]
    plt.plot(x, y1, label = "1")
    plt.plot(x, y2, label = "2")
    plt.show()


<a id="orgb74fade"></a>

## separate legend

    x = [0, 1, 2, 3, 4]
    y1 = [2, 3, 5, 7, 5]
    y2 = [2, 3, 7, 7, 8]

    import matplotlib.pyplot as plt
    plt.figure()
    ax = plt.gca()
    plt.plot(x, y1, label="1")
    plt.plot(x, y2, label="2")

    plt.figure()
    plt.plot(x
    plt.figlegend(*ax.get_legend_handles_labels(), loc='upper left')
    plt.show()


<a id="org9898614"></a>

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


<a id="org1c833b5"></a>

## rotate x ticks

    plt.xticks(rotation=10)


<a id="orgd39ab1a"></a>

## CASES


<a id="org46c48b5"></a>

### TODO bar plot with two y axes


<a id="orgd47242b"></a>

### varible in time

    plt.plot_date(df['date'],df['x])
    plt.show


<a id="org82c22e2"></a>

# SciPy

adds more MATLAB-like functionality and Matplotlib is a plotting package that provides MATLAB-like plotting functionality


<a id="org77825cd"></a>

# Scikit-learn

-   based on numpy and SciPy
-   scikit-learn can be classified as a tool in the "Machine Learning Tools" category, while SciPy is grouped
    under "Data Science Tools".


<a id="org2f75b8b"></a>

## sklearn.tree.DecisionTreeClassifier

1.  the algorithm chooses a feature and makes a split
2.  looks at the subsets and measures their impurity using the (gini,entropy) score (impurity)
3.  for multiple thresholds and determines that the best split for the given feature
4.  repeat for all features and nodes
5.  from root to leaves


<a id="org13d4803"></a>

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


<a id="orga5fc4c9"></a>

## Tuning the hyper-parameters <https://scikit-learn.org/stable/modules/grid_search.html>

-   GridSearchCV - Exhaustive Grid Search
-   RandomizedSearchCV - <https://analyticsindiamag.com/why-is-random-search-better-than-grid-search-for-machine-learning/>

    from sklearn.model_selection import ShuffleSplit** train test split
       from sklearn.model_selection import ShuffleSplit
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33, random_state=42)
