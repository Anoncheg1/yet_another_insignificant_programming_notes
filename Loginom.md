
# Table of Contents

1.  [цели](#org5f47b3e)
2.  [ссылки](#org503833c)
3.  [данные](#org14dbc4b)
4.  [многомерные кубы iQube](#orgaf57c67)

-**- mode: Org; fill-column: 100; coding: utf-8; -**-

Nobo BI - коробочное решение для интегрированного планирования и среда для совместной работы

todo Loginom Scorecard Modeler

Self-service аналитика - без департамента IT


<a id="org5f47b3e"></a>

# цели

Loginom - достоинства и недостатки. Как и для чего можно будет применить: 1) я лично 2) компания в будущем

Провести анализ

1.  "BI инструментов визуализации"
2.  "инструментов упрощающих исследование данных"
3.  "аналогов Loginom без недостатков"


<a id="org503833c"></a>

# ссылки

-   Канал ютуб <https://www.youtube.com/channel/UCNSMPWjO_pna_0H4z4oJk1g>


<a id="org14dbc4b"></a>

# данные

версия 6.3.3

1.  Алгоритмы
    -   богатый набор аналитики данных
2.  Визуализация
3.  Интеграция

4.  Визуальное проектирование
5.  Просмотр отчетов
    -   полиматика
    -   visiolagy
    -   click

исследование данных

-   дубликатов - все атрибуты совпадают
-   противоречеия - выходные отличаются а входные совпадают

Python 3.4 в Loginom
ограничения

-   один thread


<a id="orgaf57c67"></a>

# многомерные кубы iQube

показатель - ячейка куба

Создание куба OLAP

1.  Для одной таблицы можно создать одну группу показателей.
2.  выбираем столбцы и в какие измерения их поместить
    -   Для дат создаются отдельные измерения но они почему-то не отображаются
        -   Дата поле - это данные с минимальной гранулярностью день.
        -   Дата это особое поле, его не нужно создавать как измерение
    -   В имерение помещаем несколько атрибутов - колонок загружаемой таблицы
    -   вместо измерения можно указать функцию агрегации - это будут показатели
3.  Появился загрузчик, таблица и измерения (без дат) и показатели

Перезагружаем Dashboard дезайнер -

1.  Открываем какой-то 1. редактор сохраненный как файл
2.  вставка-гистограмма
3.  Привязка данных - Источник данных - таблица или VQube
4.  Создаем запрос к данным - выбираем группу показателей
5.  Столбцы - выбираем показатель или показатели
6.  Строки - выбираем несколько измерений
7.  Настройки - Панель фильтров и Drill down - щелкаем использовать Drill Down
8.  На гистограмме первый атрибут измерения с агрегированным показателем, по щелчку открывается
    второй аттрибут этого измерений и так далее

строки - по оси X

TODO

-   фильтры и влияния, drill-down, расчетные столбцы;

3 способа  как изменить ограничить данные

1.  График - в привязке данные есть функция добавить фильтр на запрос - жесткий фильтр
2.  Вставка - Фильтр - отображается выше графика