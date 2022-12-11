
# Table of Contents

1.  [history](#org285d8af)
2.  [Arithmetic](#org7eed20d)
    1.  [mean](#orgbda1012)
3.  [Set theory](#org89e0b3d)
4.  [Logarithm [ˈlɔgərɪðəm]](#org671498d)
5.  [Graph theory [ɡrɑːf] [ˈθɪərɪ]](#org2c9249f)
    1.  [main terms](#orgd627513)
    2.  [terms](#orgfe83f3b)
    3.  [Theorems  [ˈθɪərəm]](#orga23c99f)
        1.  [Trees](#org79cddd2)
    4.  [Types of graphs:](#org49019ec)
6.  [Abstract algebra and group theory [gruːp] Теория групп](#org82d2847)
    1.  [terms](#org6dcdd87)
    2.  [Teorems](#org84681df)
7.  [Topology](#orgd79d1c4)
8.  [Linear algebra](#orgdf36242)
    1.  [Cramer's Rule](#org98fbc7d)
    2.  [Соглашение Эйнштейна Einstein notation](#org087592e)
    3.  [Ковариантность и контравариантность](#org0c1e80e)
9.  [Matrix theory](#orgc661a04)
    1.  [Operations](#orga8fb4ef)
    2.  [Elementary matrix Элементарные преобразования матрицы](#orgb73f16c)
    3.  [Invertible matrix Обра́тная ма́трица A<sup>-1</sup>](#orgacd7f23)
    4.  [Identity matrix Единичная матрица](#org6ebbaac)
    5.  [singular-value decomposition (SVD) Сингулярное разложение](#org92df476)
10. [Комбинаторира](#org401b3ff)
    1.  [Биномиальный коэффициент (combination), факториал](#org9ffe0fb)
        1.  [combination сочетание ](#orgcb321b0)
11. [Probability theory](#org465ecd9)
    1.  [Kolmogorov axioms and basis ( частотная)](#org144f6e2)
    2.  [types of events](#org2e7dbd5)
    3.  [теорема Байеса](#orgc7f169f)
    4.  [схемой повторных независимых испытаний или схемой Бернулли ](#org4107b23)
    5.  [дискретная СВ  discrete probability distribution](#org44674f9)
    6.  [Непрерывная случайная величина  continuous probability distribution](#orgaa34172)
        1.  [Функция распределения or cumulative distribution function CDF](#orgb9f775a)
        2.  [Плотность вероятности probability density function (PDF) or density f(x) ](#orgd494767)
    7.  [Распределения](#org8d0fab3)
        1.  [Сходимость по распределению Convergence of random variables](#org32dd8a1)
        2.  [Распределение Бернулли (discrete)(finite)](#org602d067)
        3.  [Binomial distribution (discrete)(finite) см bernuli](#org6f210e3)
        4.  [Нормальное распределение распределением Гаусса (continuous)(whole real line) N(μ,σ<sup>2</sup>)](#org77c6c3f)
        5.  [(bounded interval)](#orgfffbf41)
    8.  [Monte Carlo method](#orgde79f06)
12. [Математическая статистика](#org332da08)
    1.  [sample and population](#orgd97e43b)
    2.  [точечное оценивание (point estimation)](#org408fa38)
    3.  [интервальное оценивание (interval estimation) - Доверительный интервал](#orgad5be57)
13. [Calculus Математический анализ (Functional analysis)](#orgd6be42e)
    1.  [Differential calculus](#org0d28ca7)
        1.  [Gradient or gradient vector field](#orgb83d40d)
    2.  [integral calculus](#org3dd397e)
    3.  [Fourier transform (discrete Fourier transform - DFT)](#org298a328)
        1.  [Convolution](#org51aef53)
        2.  [Dirac delta function](#org0b37d00)

;-**- mode: Org; mode: xah-math-input; fill-column: 100;-**-

<https://www.coursera.org/specializations/compstats>

-   <https://sjster.github.io/introduction_to_computational_statistics/docs/index.html>

app-emacs/auctex - LaTeX документы


<a id="org285d8af"></a>

# history

-   несоизмеримые отрезки - Евдоксова теория несоизмеримых величин, изложенная в геометрической форме в "Началах" Евклида
-   открытие несчетного континуума (0;1) Г. Кантор
-   Куртом Фридрихом Гёделем — доказательства теоремы о неполноте

-   В середине ХХ века была сформулирована теория хаоса, начало которой
    было положено русским математиком Колмогоровым в теории вероятностей
    и продолжено его учениками Арнольдом, Мозером и Синаем. Суть
    открытия заключается в том, что большинство нелинейных
    дифференциальных уравнений решаются неаналитическим путем, их
    невозможно решить на компьютере, они имеют характеристики случайных
    процессов, хотя и подчиняются детерминированным законам.


<a id="org7eed20d"></a>

# Arithmetic

<https://www.mathplanet.com/>
Arithmetic [əˈrɪθmətɪk] - study of numbers, especially the properties of the traditional operations on
them—addition, subtraction, multiplication and division.

1.  Simplify the expressions inside parentheses ( ), brackets [ ], braces { } and fractions bars.
2.  Evaluate all powers.
3.  Do all multiplications and divisions from left to right.
4.  Do all additions and subtractions from left to right.

When we multiply or divide an inequality by a negative integer, the sign of the inequality will be reversed
(changed). x>y, x\*z<y\*z  if z<0

monomial is:

-   a number 2
-   a variable x
-   a product of a number and a variable where all exponents are whole numbers 2<sup>3</sup>\*x<sup>6</sup>, 2pq

not: 2\*p\*q<sup>-2</sup>, 2<sup>x</sup>, 5/y

The degree of the monomial is the sum of the exponents of all included variables. 42 = 0, 5x = 1, 2pq = 2

A polynomial - sum of each monomial is called a term.  degree of the polynomial is the greatest degree of its
terms

first term of a polynomial is called the leading coefficient

binomial - 2 terms, trinomial -3 terms

factorization  -(x – 2)(x + 2) is a factorization of the polynomial x<sup>2</sup> – 4

greatest common factor or divisor (GCF or GCD)


<a id="orgbda1012"></a>

## mean

-   взвешенное - если значения повторяются и это повторение нужно особым образом взвесить
-   невзвешенное - простое  средниt арифметическое

**Generalized mean** if p is a non-zero real number, and x1 , … , xn are positive real numbers

-   Mp(x1,&#x2026;,xn) = (1/n\*(n)∑xi<sup>p</sup>)<sup>1</sup>/p

if xi are equal: min<=HM<=GM<=AM<=max

-   arithmetic mean (p=1) (AM)=(x1+x2+..)/n
-   geometric mean (p=0) (GM)=(n)√|x1\*x2\*..|
-   harmonic mean (p=-1) (HM)=n/(1/x1+&#x2026;+1/xn)
-   root mean square (p=2) (RMS) = √(1/n\*(x1<sup>2</sup>+&#x2026;+xn<sup>2</sup>))


<a id="org89e0b3d"></a>

# Set theory

-   **set** - множество.C = {0,1,2}
-   Cardinality [kɑːdɪˈnælɪtɪ] (мощность) - |B| = количество эллементов (elements or members)
-   x ∈ B - x belongs to B
-   y ∉ B - y does not belong to B
-   A ⊆ B - A is a subset of B or A is contained in B - every member of set A is also a member of set B
-   proper (or strict) subset - f A is a subset of B, but A is not equal to B
-   ∅ - empty set - ∅ ⊆ A.
-   A ⊆ U - universal set
-   A ∪ B - **Union** - together
-   A ∩ B - **Intersections** [ɪntəˈsekʃn] A ∩ ∅ = ∅ - пересечение - общее
-   {1, 2, 3, 4} \\ {1, 3} = {2, 4}. - Set **difference**
-   A' = U \\ A is called the absolute complement or simply complement of A
-   {1, 2} \\ {1, 2} = ∅.
-   A ∩ A' = ∅. - A' or A<sup>c</sup> = **Complement**
-   **Cartesian product** - A x B - {1, 2} × {red, white, green} = {(1, red), (1, white), (1, green), (2, red),
    (2, white), (2, green)}.
-   |A × B| = |A| × |B| = умножение
-   union ∪ and intersection ∩: Commutative, Associative, Distributive
-   absorption laws:
    -   A∪(A∩B)=A
    -   A∩(Α∪B)=A
-   A∩B=A\\(A\B)
-   algebra of inclusion ⊆:
    -   reflexivity A⊆A   - ∀x∈A:x⊆x
    -   antisymmetry A⊆B and B⊆A only if A=B
    -   transitivity. If A⊆B and B⊆C, then A⊆C
-   equivalent:
    -   A⊆B
    -   A∩B=A
    -   A∪B=B
    -   A\B=0
    -   B'⊆A'
-   complement lows:
    -   (A∪B)' = A'∩B'
    -   (A∩B)' = A'∪B'
    -   (A')'= A
    -   0' = U
    -   U' = 0

-   **Transitive closure** - binary relation R on a set X smallest relation on X that contains R and is
    transitive.
    -   if X is a set of airports. xRy means "there is a direct flight from airport x to airport y. xR+y means "it
        is possible to fly from x to y in one or more flights
    -   intersection of two R+ is transitive
    -   union need not to be transitive.


<a id="org671498d"></a>

# Logarithm [ˈlɔgərɪðəm]

inverse function to exponentiation

-   log = log по основанию e - **natural logarithm** - ln(x)
-   e - Euler's number - log<sub>e</sub>
-   log(a)+log(b) = log(a\*b)
-   log(a)-log(b) = log(a/b)
-   log(x<sup>p</sup>) = p\*log(x)

Используется для шкалирования результата [0,1] в удобочитаемый (-inf,+inf)

-   log(1/2) = 0.69
-   log(2/1) = -0.69

Используется для удаления смещения гистограммы в сторону меньших значений [0,+inf] с постоянным убыванием для
преобразования в нормальное распределение.

Выравнивание дисперсии. Если для различных иксов постоянен не абсолютный разброс y, а
относительный, так что с ростом y увеличивается и разброс, порождённый случайными причинами,
логарифмирование может помочь.


<a id="org2c9249f"></a>

# Graph theory [ɡrɑːf] [ˈθɪərɪ]

-   <https://www.statisticshowto.datasciencecentral.com/graph-theory/>
-   <https://www.tutorialspoint.com/graph_theory/graph_theory_quick_guide.htm>

and computer science and computer-based graph theory


<a id="orgd627513"></a>

## main terms

Graph - pair (V,E), where V={a, b, c} finite set of vertix  and E is a finite set of edges E={ab, ac}

-   **edge [ɛdʒ]:** ребро - joining a pair of nodes
-   **vertex [ˈvɜːtɛks] vertices [ˈvɜːtɪˌsiːz] node [nəʊd]:** вершиныx
-   **arc [ɑːk]:** дуга is a directed line (a pair of ordered vertices).
-   **Incident [ˈɪnsɪdənt]:** смежный edge
-   **adjacent [əˈdʒeɪsənt]:** примыкающий vertex
-   **successor [səkˈsɛsə]:** приемник vertex
-   **walk [wɔːk]:** тропа
-   **circuit [ˈsɜːkɪt]:** контур
-   **cycle [ˈsaɪkəl]:** цикл
-   **girth [ɡɜːθ]:** обхват
-   **circumference [səˈkʌmfərəns]:** длина окружности
-   **Hypergraph [haɪpəˈgræf]:** edge can join any number of vertices H=(X,E) X - nodes or vertices, E - non-empty
    subsets of X


<a id="orgfe83f3b"></a>

## terms

Main properties:

-   **radius of a connected graph** r(G) - minimum eccentricity from all the vertices
-   **diameter** d(G) - maximum eccentricity from all to all other vertices
-   **girth [ɡɜːθ]** - number of edges in the shortest cycle of ‘G’

---

-   **Incident edges** are edges which share a vertex. A edge and vertex are incident if the edge connects the
    vertex to another.
-   A **loop** is an edge or arc that joins a vertex to itself.
-   A vertex, sometimes called a **node**, is a point or circle. It is the fundamental unit from which graphs are
    made.
-   Adjacent vertices are vertices which are connected by an edge.
-   The **degree of a vertex** is simply the number of edges that connect to that vertex. Loops count twice.
-   A **predecessor** is the node (vertex) before a given vertex on a path.
-   A **successor** is the node (vertex) following a given vertex on a path.
-   A **walk** is a series of vertices and edges. A u-v walk would be a walk beginning at u and ending at v.
-   A **closed walk** is a walk from a vertex back to itself; a series of vertices and edges which begins and ends
    at the same place. May have repeated vertices or/and edges.
-   A **circuit** is a closed walk with every edge distinct.
-   A **cycle** is a closed walk with no repeated vertices (except that the first and last vertices are the same).
-   A **path** is a walk where no repeated vertices. A u-v path is a path beginning at u and ending at v.
-   **isolated vertex** has no edges.
-   **indegree** = deg-(V), **outdegree** = deg+(V)
-   **pendent vertex** = vertex deg(v) = 1.
-   **degree sequence** for V={b, a, c, d} and E={ba, bc}  will be {2, 1, 1, 0}
-   **distance between 2 vertices** - number of deges in a shortest path between U and V = d(U, V)
-   **eccentricity of a vertex [ˌɛksɛnˈtrɪsɪtɪ]** e(V)  - max distance to all other.
-   **central point** e(V) =r(V)
-   **centre [ˈsɛntə]** set of all central points
-   **circumference [səˈkʌmfərəns]** - number of edges in the longest cycle of ‘G’
-   **Connected undirected graph.** 1) there is a path between every pair of vertices
-   **Connected component** of undirected graph. A subgraph in which any two vertices are connected to each other by paths
-   **Incidence matrix** columns - vertices, rows - edges
-   **Degree matrix** - **diagonal matrix**
-   **Laplacian matrix**

---

-   **edge contraction** [kənˈtrækʃən] is an operation which removes an edge from a graph while simultaneously
    merging the two vertices that it previously joined
-   **graph traversal** [ˈtrævɜːs] is an exploration of a graph in which the vertices are visited or updated one by one.
-   A **Hamiltonian cycle** is a closed loop where every node is visited exactly once.

---

-   **Circuit Rank of G** (cyclomatic number, cycle rank, or nullity)  minimum number of edges that must be removed from the
    undirected connectedgraph to break all its cycles, making it into a tree or forest. r = m - n + c
    where m= edges, n= vertices, c = number of connected components.
-   **Laplacian matrix** (admittance matrix, Kirchhoff matrix or discrete Laplacian) -


<a id="orga23c99f"></a>

## Theorems  [ˈθɪərəm]


<a id="org79cddd2"></a>

### Trees

**Kirchoff’s Theorem** - concstruct

---


<a id="org49019ec"></a>

## Types of graphs:

-   **null graph** no edges.
-   **trivial graph** one vertix, no edges.
-   A **multigraph** is a graph with multiple edges(parallel edges) with or without loops.
-   **simple grapth** no parallel edges, no loops. deg(V) <= n-1 ∀ v ∈ G
-   **directed and non-directed [dɪˈrɛktɪd]**. edge has direction ab=ba or not.
-   **Connected graph** -  undirected graph when there is a path between every pair of vertices.
-   **Bipartite Graph** - двудольный - with vertex partition V = {V1, V2} if every edge of E joins a vertex in V1 to a vertex in V2
    -   Complete Bipartite Graph - bipartite graph -  if every vertex in V1 is connected to every vertex of V2.
-   **complete graph** - simple undirected graph - every pair of distinct vertices is connected by a unique edge

---

-   **tree** -  any two vertices are connected by *exactly one* path. Acyclic connected graph.
    -   if V = n, E = n-1.
-   **tree** - disconnected acyclic graph
-   **H Spanning Trees of G** - основное дерево. Where G is connected graph. H is a tree and has all vertices of G.
-

-   An **acyclic directed graph** [eɪˈsaɪklɪk] is a finite directed graph which has no directed cycles.
-   A **condensation** [ˌkɒndɛnˈseɪʃən] of a multigraph is the graph that results when you delete any multiple
    edges, leaving just one edge between any two points.
-   If a graph has a path between every pair of vertices (there is no vertex not connected with an edge), the graph is called a connected graph.
    If a graph G’ can be constructed from a graph G by repeated edge contractions or deletions, the graph G’ is a graph minor of G.
    An inverted graph G’ of G is a graph with the same vertices but none of the same edges; two vertices in G’ are adjacent if and only if they were not adjacent in G.
    A multigraph is a graph without loops, but which may have multiple edges.
    A null graph is a graph with no edges. It may have one or more vertices.
    An oriented graph is a directed graph that doesn’t have any symmetric pairs of directed edges.
    A simple graph is a graph that doesn’t have any loops or multiple edges. No multiple edges means that no two edges have the same endpoints.
    A subgraph is a graph whose vertices and edges are included in the vertices and edges of another graph (the supergraph).
    A symmetric graph is a directed graph D where, for every arc (x,y), the inverted arc (y,x) is also in D.
    A trivial graph is a graph with only one vertex.
    An undirected graph is a graph where none of the edges have direction; the pairs of vertices that make up each edge are unordered.


<a id="org82d2847"></a>

# Abstract algebra and group theory [gruːp] Теория групп

Group theory - language to describe invertible transformations:

-   translation
-   rotation
-   roto-translation
-   reflections
-   scalings

Cannot work with:

-   scale
-   affine transformation
-   occlusions - затемнение части объекта


<a id="org6dcdd87"></a>

## terms

-   <https://ru.wikipedia.org/wiki/%D0%93%D0%BB%D0%BE%D1%81%D1%81%D0%B0%D1%80%D0%B8%D0%B9_%D1%82%D0%B5%D0%BE%D1%80%D0%B8%D0%B8_%D0%B3%D1%80%D1%83%D0%BF%D0%BF#%D0%9A>
-   <https://en.wikipedia.org/wiki/List_of_group_theory_topics>
-   **group** - **set** with binary operation • (group law of G) to form a third element in such a way that four
    group axioms are satisfied:
    -   **closure**  For all a, b in G, the result of the operation, a • b, is also in G.
    -   **associativity** For all a, b and c in G,       (a • b) • c = a • (b • c).
    -   **identity**  There exists an element e such that, for every element a the equation e • a = a • e = a holds.
        e - identity element.
    -   **invertibility** For each a exists an element b (a<sup>-1</sup> or -a) such that a • b = b • a = e. e -  identity element.

Абелевые группы:
Convention	Operation	Identity	Powers	Inverse
Addition	x + y		0		nx	−x
Multiplication	x ⋅ y or xy	e or 1		x<sup>n</sup> x^−1

-   **center of a group** -  set of elements that commute with every element of G. Z(G) = {z ∈ G ∣ ∀g ∈ G, zg = gz}
-   **Abelian group** - коммутативная  -obey the axiom of commutativity[kəˈmjuːtətɪvɪtɪ] .
-   **Group homomorphisms** - are functions that preserve group structure. G → H between two groups (G, •) and (H,
    ∗) where a(g • k) = a(g) ∗ a(k) - (∀g,k∈G
-   **Isomorphic groups** [aɪsəˈmɔːfɪk] - if there exist group homomorphisms a: G → H and b: H → G such that
    a(b(h)) = h and b(a(g)) = g for any g in G and h in H
-   **Identity element** - Нейтральный элемент 1: a · 1 = a and 1 · a = a
-   **partial binary operation** - f:X->Y not forcing f to map every element of X to an element of Y. Ex. division
    of real numbers - a/0 is not defined for any real a.  However, both in universal algebra and model theory
    binary operations considered are defined on all of S × S.
-   **Magma** - базовая математическая структура. Set with closed binary operation.  magma or closure axiom: For all a, b in M, the result of the operation
    a • b is also in M.  If partial operation, then a **partial magma**.
-   **Semigroup** -  set S with a associative binary operation
-   **monoid or groupoid** [məˈnɔɪd] -  полугруппа с нейтральным элементом
-   **Ring** -  set R with two binary operations + and **ring axioms**:
    1.  R is an abelian group under addition
        -   associative
        -   commutative
        -   additive identity - There is an element 0 in R such that a + 0 = a for all a in R
        -   additive inverse - For each a in R there exists −a in R such that a + (−a) = 0
    2.  R is a monoid under multiplication
        -   associative
        -   multiplicative identity
    3.  Multiplication is distributive with respect to addition
        -   left distributivity a ⋅ (b + c) = (a · b) + (a · c) for all a, b, c in R
        -   right distributivity (b + c) · a = (b · a) + (c · a) for all a, b, c in R
-   Ring properties:
    -   The additive identity, the additive inverse of each element, and the multiplicative identity are unique.
-   **Field** -
-   **Difference between groups and fields** - Groups model symmetries
-   **Matrix ring** -

-   **Matrix** [ˈmeɪtrɪks] - rectangular array of numbers, symbols, or expressions, arranged in **rows** and
    **columns**
-   **dimensions** - 2x3 "two and three"
    -   1 2 3
    -   1 2 3


<a id="org84681df"></a>

## Teorems

**Uniqueness of inverses** -
b 	= 	b • e 	     	 as e is the identity element
	= 	b • (a • c) 	  Because c is an inverse of a, so e = a • c
	= 	(b • a) • c 	by associativity, which allows rearranging the parentheses
	= 	e • c 	     	 since b is an inverse of a, i.e., b • a = e
	= 	c 	     	  for e is the identity element
there is only one inverse element of a

**Uniqueness of identity element** G is a group with two identity elements e and f. Then e = e • f = f, hence e
 and f are equal.


<a id="orgd79d1c4"></a>

# Topology

-   **space:** set (sometimes called a universe) and relationships between these points
-   **Metric space:** set together with a metric on the set (M,d) where M is a set and d is a metric (function or
    distance) d:MxM->R with axioms:
    1.  d(x,y) = 0 <-> x=y
    2.  d(x,y) = d(y,x)
    3.  d(x,z) <= d(x,y)+d(y,z) subadditivity or triangle inequality
-   **topological space:** set of points, along with a set of neighbourhoods for each point, satisfying a set of
    axioms relating points and neighbourhoods OR ordered pair (X, τ), where X is a set and τ is a collection
    of subsets of X:
    -   empty set and X itself belong to τ.
    -   Any arbitrary (finite or infinite) union of members of τ still belongs to τ.
    -   The intersection of any finite number of members of τ still belongs to τ.
-   **trivial topology:** (X,τ) -  X = {1, 2, 3, 4},  τ = {{}, {1, 2, 3, 4}}
-   **A\B ={x in A | x not in B}:** дополнение B до A (если B in A)
-   **Closed set:** подмножество пространства, дополнение к которому открыто.
-   **Open set:** subset U of a metric space is opern if every point in U has a neighborhood contained in U
-   **Neighbourhood:** V окрестность точки x если существует открытое множество U ∈ τ такое, что x∈U⊂V
-   **Hausdorff space T2-space:** topological space любые две различных точки x, y из X обладают
    непересекающимися окрестностями.
-   **Euclidean space:** конечномерное вещественное векторное пространство R<sup>n</sup> c скалярным произведением, либо
    метрическое пространство, соответствующее такому векторному пространству.
    -   Скаля́рное произведе́ние a•b = a1\*b1+a2\*b2&#x2026;. или |a|\*|b|\*cos<(a,b), что эквивалентно

-   **Affine space:** оперирует с объектами не одного, а двух типов: «векторами» и «точками». Euclidean spaces are
    affine spaces.
-   **База топологии:** семейство открытых подмножеств топологического пространства X, такое, что любое открытое
    множество в X представимо в виде объединения элементов этого семейства.
-   **Second-countable space:**

-   **Homeomorphism:** однозначное и взаимно непрерывное отображение топологических пространств, биекция,
    связывающая топологические структуры двух пространств
    -   Пространства, связанные гомеоморфизмом, топологически неразличимы
    -   кружка и бублик (тор) топологически эквивалентны
-   **Manifold Многообра́зие:** хаусдорфово топологическое пространство со счётной базой, каждая точка которого
    обладает окрестностью, гомеоморфной евклидову пространству R<sup>n</sup>
    -   Евклидово пространство является самым простым примером многообразия
    -   Любая двумерная поверхность без края
-   **Smoothness of function:** функция, имеющая непрерывную производную на всём множестве определения


<a id="orgdf36242"></a>

# Linear algebra

-   <https://habr.com/ru/post/261421/>
-   linear [ˈlɪnɪə] equations [ɪˈkweɪʃn]:   a1x1+a2+.. = b
-   linear function: (x1,..xn)->a1x1+a2+..anxn
-   Линейность функции:
    -   f(x+y) = f(x) + f(y)
    -   f(c\*x) = c\*f(x)
-   Декартова - прямоугольная система координат
-   контрвариантные координаты вектора a<sup>i</sup> = a<sup>1</sup>\*e1+a<sup>2</sup>\*e2 - столбцом
-   ковариантные координаты - координаты в декартовой системе координат - строкой
-   связь контрвариантных и ковариантных координат <https://habr.com/ru/post/261421/>
-   Tangent vector Касательный вектор - элемент касательной прямой к кривой или касательной плоскости к
    поверхности
-   Tensor [ˈtensər] T:v1 x v2 x v3 -> R - полилинейная функция-отображения из произведения векторныз
    пространств в вещественные числа
-   Тензор Риччи
    -   измеряет деформацию объёма
    -   степени отличия геометрии многообразия от геометрии плоского евклидова пространства
-   Symmetric tensor - Tij = Tji


<a id="org98fbc7d"></a>

## Cramer's Rule

determinant of a coefficient matrix (let it be |A| )

-   == 0 =>  no solutions or infinite solutions.
-   != => unique solution


<a id="org087592e"></a>

## Соглашение Эйнштейна Einstein notation

-   y = (i=1-3)∑ci\*xi = c1\*x1+c2\*x2+c3\*x3  == y = ci\*x<sup>i</sup>
-   uk=ai\*bk<sup>i</sup> == uk = (i=1-n)∑ai\*bk<sup>i</sup> где n - размерность a, b
-   e'i = Si<sup>j</sup>\*ej - суммирование по j


<a id="org0c1e80e"></a>

## Ковариантность и контравариантность

-   <https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%B2%D0%B0%D1%80%D0%B8%D0%B0%D0%BD%D1%82%D0%BD%D0%BE%D1%81%D1%82%D1%8C_%D0%B8_%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%B0%D0%B2%D0%B0%D1%80%D0%B8%D0%B0%D0%BD%D1%82%D0%BD%D0%BE%D1%81%D1%82%D1%8C_(%D0%BC%D0%B0%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B0)>


<a id="orgc661a04"></a>

# Matrix theory

-   m-by-n matrix - m rows, n columns - dimensions
-   a21 - second row, first column element(or entries) - aij

application of matrices:

-   linear transformations - rotation of vectors in three-dimensional space
-   solution of systems of linear equations


<a id="orga8fb4ef"></a>

## Operations

-   Addition
    -   require equal dimensions
    -   (A+B)ij = Aij+Bij
-   Scalar multiplication - (cA)ij= c\*Aij
-   Transposition - A m-by-n to A<sup>tr</sup> or A<sup>T</sup> n-by-m (A<sup>T</sup>)ij = Aji - переворачивает относительно диагонали
    -   A\*A<sup>T</sup> =  **symmetric matrices**

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">1 7</td>
</tr>


<tr>
<td class="org-left">7 1</td>
</tr>
</tbody>
</table>

-   Matrix multiplication - используются для преобразования векторов
    -   require A n columns equal to B m rows
    -   2\*1000 + 3\*100 + 4\*10 = 2340
    -   associativity (AB)C = A(BC)
    -   left and right distributivity (A + B)C = AC + BC as well as C(A + B) = CA + CB
    -   not commutative AB =! BA

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">2 3 4</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">0 1000</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">3 2340</td>
</tr>


<tr>
<td class="org-left">1 0 0</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">1  100</td>
<td class="org-left">=</td>
<td class="org-left">0 1000</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">0   10</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>

Определитель (детерминант)

-   require квадратная
-   Δ = det A
-   for 2x2 Δ = a11a22 - a12a21


<a id="orgb73f16c"></a>

## Elementary matrix Элементарные преобразования матрицы

Элементарные преобразования не изменяют множество решений системы линейных алгебраических уравнений, которую
 представляет эта матрица.

Элементарная матрица - если умножение на неё произвольной матрицы В приводит к элементарным преобразованиям
строк в матрице В.


<a id="orgacd7f23"></a>

## Invertible matrix Обра́тная ма́трица A<sup>-1</sup>

A\*A<sup>-1</sup> = A<sup>-1</sup>\*A = E - единичная матрица


<a id="org6ebbaac"></a>

## Identity matrix Единичная матрица

квадратная матрица, элементы главной диагонали которой равны единице поля, а остальные равны нулю.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">1 0</td>
</tr>


<tr>
<td class="org-left">0 1</td>
</tr>
</tbody>
</table>

Свойства:
AE=EA=A
A<sup>0</sup> = E
A\*A-1


<a id="org92df476"></a>

## singular-value decomposition (SVD) Сингулярное разложение


<a id="org401b3ff"></a>

# Комбинаторира


<a id="org9ffe0fb"></a>

## Биномиальный коэффициент (combination), факториал

это коэффициенты при x<sup>k</sup> в разложении бинома Ньютона (1+x)<sup>n</sup>

-   (1+x)<sup>n</sup> = ∑Cnk\*x<sup>k</sup>
-   обозначается Cnk или вертикальные скобочки (n k)
-   Cnk = n!/(k!(n-k)!) для 0<=k<=n. Если k>n Cnk=0
-   факториал n! = 1\*2\*..\*n
-   (n-1)!=n!/n => 0!=1
-   0!=1, 1!=1, 2!=2, 3!=6, 4!=24, 5!=120
-   файкториал 4!=24 - это количество перестановок для множества {A,B,C,D}


<a id="orgcb321b0"></a>

### combination сочетание <a id="org49a2d0d"></a>

Число сочетаний из n по k - это subset of k distinct elements of n элементов. Порядок не важен. Без повторяющихся.

-   Сnk = n!/(k!(n-k)!)

Пример 3-element subsets of a 5-element set - (12345 - element set, 123,124,125,134 - subset)

-   С(n k) = C(5 3) = 5!/(3!(5-3)!) = 120/6\*2= 10
-   123,124,125,134,135,145,234,235,245,345

Пример three fruits, say an apple, an orange and a pear, there are three combinations of two

-   an apple and a pear
-   an apple and an orange
-   a pear and an orange

**combinations with repetition**

-   обозначается вертикально ((n k))
-   ((n k)) = (n+k-1  k)


<a id="org465ecd9"></a>

# Probability theory

**Probability** is the measure of the likelihood that an event will occur.

Probability (risk) = p/(p+q)
Odds = p / q, где p положиьные исходы, q отрицательные

Частотная и Байесовская вероятность:

-   P(x) - доля выпаданий события среди n испытаний
-   P(x) - степень уверенности в истинности суждения

Теория проверки статистических гипотез:

-   Частотная - позволяет отвергать или не отвергать модели-гипотезы
-   Байесовская - выдает апостериорную вероятность быть адекватной для каждой из моделей гипотез


<a id="org144f6e2"></a>

## Kolmogorov axioms and basis ( частотная)

1.  Probability quantifies as a number between 0 and 1
2.  P(Ω) = 1 - probability that at least one of the elementary events
3.  P(∪Ei) = ∑P(Ei) Where E - events. Any countable sequence of disjoint sets (synonymous with **mutually
    exclusive events**) satisfies. - взаимоисключающие события

Note:

-   P(E) -  probability of some event
-   Let (Ω, F, P) be a probability space -
-   Ω - set of all possible outcomes
-   F - set of **events** - each event is a set containing zero or more **outcomes** - или Алгебра событий
-   **elementary event** or simple event - is an event which contains only a single outcome
-   P(not A) = 1 - P(A)

Example: single coin-toss, and assume that the coin will either land heads (H) or tails (T) (but not both). No
assumption is made as to whether the coin is fair.

-   Ω = {H,T}
-   F={∅,{H},{T},{H,T}}
-   P(∅)=0 - Вероятность невыподания = 0
-   P({H,T})= 1 = P({H}) + P({T})

Consequences: P(A∪B)=P(A) + P(B) - P(A∩B) becouse of:

-   P(A∪B) = P(A) + P(B\A) (by Axiom 3)
-   P(A∪B) = P(A) + P(B\\(A∩B))
-   P(B) = P(B\\(A∩B)) + P(A∩B)
-   P(B) - P(A∩B) = P(B\\(A∩B))


<a id="org2e7dbd5"></a>

## types of events

**Independent events**

-   P(A and B) = P(A∩B)=P(A)P(B)
-   two coins aare flipped the chance of both being heads is 1/2\*1/2 = 1/4

**Mutually exclusive events**

-   P(A and B) = P(A∩B)= 0
-   P(A or B) = P(A∪B) = P(A) + P(B) - P(A∩B) = P(A)+P(B)
-   Ex. Chance of rolling a 1 or 2 on a six-sided die is P(1 or 2) = P(1)+P(2) = 1/6 + 1/6 = 1/3

**Not mutually exclusive events**

-   P(A or B) = P(A∪B) = P(A) + P(B) - P(A∩B)
-   Ex. drawing card from a deck of cards, the chance of getting a heart or a face card (J,Q,K) (or one that is both):
    -   total 52, 13 - hearts, 12 - face cards, 3 - heart face cards in deck.
    -   13/52 + 12/52 - 3/52 = 11/26

**Conditional probability** - probability of some event A, given the occurrence [əˈkʌrəns] of some other event B
 (учитывая наличие)

-   P(A|B) -  "A given B" - Вероятность A учитывая unconditional B
-   Ex. Box: 2 red and 2 blue balls. Taking second boll A pobability: 1/3
-   P(B)=1/2  P(A∩B) = x/(1/2) = 1/3
-   P(A|B) = P(A∩B)/P(B) = P(B|A)P(A)/P(B)
-   P(A and B) = P(A|B)\*P(B) - вероятность совместного появления двух зависимых событий А после B:
-   Ex. В урне 4 белых и 7 черных шаров. всего 11. Оба белые?
    -   P(B) = 4/11
    -   P(A|B) = 3/10
    -   P(A∩B) = 3/10\*4/11=6/55


<a id="orgc7f169f"></a>

## теорема Байеса

-   P(A|B) = P(A,B)/P(B) = P(B|A)P(A)/P(B)
-   Если B разложить на "B и A" и "B и не A", то:
    -   P(B) = P(B,A)+P(B,¬A)
    -   P(A|B) = P(B|A)P(A)/(P(B|A)P(A)+ P(B|¬A)P(¬A))


<a id="org4107b23"></a>

## схемой повторных независимых испытаний или схемой Бернулли <a id="orgce01e2c"></a>

-   Какова вероятность того, что в результате n независимых испытаний событие A наступит ровно k раз?
-   P(A)=p
-   Pk =
-   Ckn - Количество различных сочетаний успеха и неудач в последовтаельности испытаний
-   Вероятность удачной комбинации P(A)P(B) = p<sup>k</sup>\*(1-p)<sup>n</sup>-k
-   Pnk=Ckn\*p<sup>k</sup>\*(1-p)<sup>n</sup>-k см [10.1.1](#org49a2d0d)


<a id="org44674f9"></a>

## дискретная СВ  discrete probability distribution

**probability mass function (PMF) Функция вероятности pX(x) or p(x) ->[0,1]**

-   для монеты pX(x)=(1/2 if x∈{0, 1}, 0 if x∉{0,1})
-   ∑f(x) = 1
-   дискретные значения.

**Cumulative distribution function)**

-   F(x) = P(X < x) - probability that the random variable X takes on a value less than or equal to x
-   F(b)-F(a) - для непрерывной - вероятностью того, что значения случайной величины меньше или равное
    вещественного числа x
-   F(x)=p(l(x-x0)) + p(l(x-x1)) -?
-   удобно для continuous random variable


<a id="orgaa34172"></a>

## Непрерывная случайная величина  continuous probability distribution

Probability distribution - function whose value at any given sample (or point - outcome) can be
interpreted as providing a relative likelihood (or probability) that the value of the random variable would equal
that sample.

Методы описания (распределения случайной величины):

-   F(x) функции распределения - вероятностью того, что значения случайной величины меньше или равное
    вещественного числа x - интервал [a, b) - вероятность F(b)-F(a)
-   f(x) - плотности вероятности density
-   характеристической функции


<a id="orgb9f775a"></a>

### Функция распределения or cumulative distribution function CDF

Общее:

-   0<=F(x)<=1

Дискретную можно настроить: F(x)=p(l(x-x0)) + p(l(x-x1))

-   для дискретной СВ функция распределения является ступенчатой.

Непрерывная CDF:

-   CDF F(x) = P(X < x) - describes the probability that the random variable is no larger than a given value
-   P(a<X<=b)=F(b)-F(a)
-   интеграл от -∞ до x от f(t) по dt = F(x) where f(x) - probability density function
-   P(X=b)=F(b) - (x->-b)limF(x) - If F is continuous at b this **equals zero**
-   In the case of a continuous distribution, it gives the area under the probability density function from
    -∞ to x.

probability that the outcome lies in a given interval can be computed:

-   by taking the difference between the values of the cumulative distribution function at the endpoints of the interval
-   by integrating the probability density function over that interval

1.  гемор через функцию распределения

    **теории распределений на подмножествах R**

    -   До этого мы имели дело с дискретным распределением, пронумерованным исходам дается вероятность.
    -   Если функция распределений X = X(ω) у которой область значений R
    -   Рассмотреть булеву σ-алгебру подмножеств R, порожденную всевозможными интервалами на прямой R. (борелевским полем)
    -   Введем измеримое пространство (R,β)  {w:X(w)∈β}⊂Ω
    -   вероятность попадания значения X в B как Px(B) = P(X^−1(B))
    -   Случайной величиной X=X(ω) называется измеримое отображение измеримого пространства (Ω,A) на борелевскую прямую (R,β).
    -   Борелевское поле является чрезвычайно сложным объектом с точки зрения строений его элементов, поэтому
        задание функции P(B), B∈β представляется совершенно неразрешимой проблемой.
    -   мы знаем, что B порождается интервалами вида (−∞, x)(событиями X < x)
    -   начнем с задания вероятности только на событиях, порождающих β:F(x)=P(X<x), x∈R потом распространить ее аддитивным

    образом на булеву алгебру конечных объединений всевозможных интервалов на R

    Cейчас мы займемся построением вероятностных моделей, в которых пространство элементарных исходов есть
    числовая прямая.
    **функцией распределения F(x)=P(X<x) случайной величины X**

    -   Пусть X принимает вероятность 1/2 на x = -1 и x = 1. Тогда функция распределения F(x) = (0 if x<-1 1 if x>1 else 1/2)
    -   Действительно, для любого x <−1 множество (−∞, x) не содержит значений X => F(x) = 0
    -   В области x > +1 содержатся все значения случайной величины X, которые она принимает с положительной
        вероятностью, поэтому F(x) = 1 при x>+1

    Свойства функции распределения

    -   (x->-∞)lim F(x)=0
    -   (x->+∞)lim F(x)=1
    -   0<=F(x)<=1
    -   F(x) – неубывающая функция x∈R.
    -   Функция F(x) имеет не более чем счетное множество скачков.
    -   Абсолютно непрерывными называют распределения, имеющие плотность вероятности
    -   F(x) = μ(-∞,x]= интеграл от -∞ по x от f(t) по dt где f(x) - probability density function


<a id="orgd494767"></a>

### Плотность вероятности probability density function (PDF) or density f(x) <a id="orgcd964dd"></a>

A distribution has a density function if and only if its **cumulative distribution function** F(x) is absolutely
continuous. In this case: F is almost everywhere differentiable, and its derivative can be used as probability
density: (d/dx)F(x)=f(x)

-   P(a<=X<=b) = интеграл от а до b

по **f(x)** по dx

-   F(x)= интеграл от -∞ до x по f(u) по du - распределение
-   one can think of f(x)dx as being the probability of X falling within the infinitesimal interval [x , x+dx].
-   f(x) - [0,1]

Example:

-   Suppose bacteria of a certain species typically live 4 to 6 hours.
-   The probability that a bacterium lives exactly 5 hours is equal to zero.


<a id="org8d0fab3"></a>

## Распределения

-   свойства <https://en.wikipedia.org/wiki/Probability_distribution>
-   <https://en.wikipedia.org/wiki/List_of_probability_distributions>

**Mode**

-   = типичность
-   значение во множестве наблюдений, которое встречается наиболее часто
-   Модой абсолютно непрерывного распределения называют любую точку локального максимума плотности распределени.

**Median**

-   P(X<=m)>=1/2 and P(X>=m)>=1/2 where m-median
-   P(X<=m) = P(X>=m) = интеграл от -∞ to m от f(x) по dx = 1/2 где f(x) -  probability density
-   учитывает площадь f(x) 50% на %50

**Mean** Среднее значение - некоторое число, заключённое между наименьшим и наибольшим из их значений ???

**arithmetic mean** - сумма элементов деленная на количество

-   np.mean
-   вычитание среднего из каждого эллемента - привеодит к mean = 0

**Expected value** Математическое ожидание - модель для среднего арифметического

-   Discrete: среднее значение случайной величины - "probability-weighted average" of all its possible values: mid = (∑wi\*xi)/∑wi где w - веса
-   В случае непрерывной случайной величины подразумевается взвешивание по плотности распределения
-   E[X] or M[X]
-   E[X] = ∑xi\*pi where x - outcome, p - probability

Example: roll of a fair six-sided die X = 1,2,3,4,5,6 all with probability 1/6

-   E[X] = 1\*1/6+2\*1/6+3\*1/6+4\*1/6+5\*1/6+6\*1/6 = 3.5
-   **strong law of large numbers** states that the sample average converges almost surely to the expected value

**Variance Дисперсия случайной величины** σ<sup>2</sup> D[X] - мера разброса значений случайной величины относительно её
 математического ожидания

-   для дискретной D[X] = ∑pi(xi-E[X])<sup>2</sup>
-   для непрерывной D[X] = интеграл от -∞ по +∞ от (x-E[X])<sup>2</sup>\*f(x) по dx где f(x)-density
-   np.var()

**Standard deviation Среднеквадратическое отклонение** σ - показатель рассеивания значений случайной величины
 относительно её математического ожидания

-   σ = √D[X]
-   np.std
-   деление каждого элемента на std дает std = 1

**normal distribution**

-   mean = 0
-   std = 1


<a id="org32dd8a1"></a>

### Сходимость по распределению Convergence of random variables

sequence X1, X2, &#x2026; of real-valued random variables is said **to converge in distribution** to a random
variable X if:

(n->∞) lim Fn(x) =F(x) where Fn(x) - cumulative distribution functions of random variables Xn and F of X


<a id="org602d067"></a>

### Распределение Бернулли (discrete)(finite)

-   <https://ru.wikipedia.org/wiki/%D0%A0%D0%B0%D1%81%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5_%D0%91%D0%B5%D1%80%D0%BD%D1%83%D0%BB%D0%BB%D0%B8>

Случайная величина X имеет распределение Бернулли, если она принимает всего два значения: 1 и 0 с
вероятностями p и q ≡ 1 − p соответственно.

Функция вероятности:

-   P(X=0)=q
-   P(X=1)=p

Функция распределения:
F(x) = 1/2, x∈{0,1} or  0, x ∉{0,1}


<a id="org6f210e3"></a>

### Binomial distribution (discrete)(finite) см [11.4](#orgce01e2c)

-   <https://en.wikipedia.org/wiki/Binomial_distribution>

Number of successes in a sequence of n independent experiments (имеющих одинаковое распределение
Бернулли)(Bernoulli process), each asking a yes–no question (Xi принимает значения 1 «успех» и 0 «неудача»)

-   1 - с вероятностью p
-   0 - q=1−p

Биноминальная случайная величина это сумма n независимых случайных величин с распределением Бернулли

Probability of getting exactly k successes in n trials is given by the probability mass function:

-   f(k,n,p) = Cnk\*p<sup>k</sup>\*q<sup>(n-k)</sup> см [10.1.1](#org49a2d0d)

Пример p=0.5 n=40

-   PMS f(20)=0.14, f(10)=0.01, f(30)=0.01
-   CMS f(10)=0.01, f(20)=0.5, f(40)=1


<a id="org77c6c3f"></a>

### Нормальное распределение распределением Гаусса (continuous)(whole real line) N(μ,σ<sup>2</sup>)

density function (функцией Гаусса):

-   PDF f(x) = 1/(σ√(2π))\*e^-(x-μ)<sup>2</sup>/2σ<sup>2</sup>
-   CDF F(x) = &#x2026;.
-   μ - mean or expectation of the distribution (and also its median and mode)
-   σ - standard deviation
-   σ<sup>2</sup> - variance
-   Стандартным нормальным распределением называется нормальное распределение с математическим ожиданием μ = 0 и
    стандартным отклонением σ = 1.
-   PDF см [11.6.2](#orgcd964dd) имеет форму колокола x = -∞ to +∞ y = [0;1]
-   CDF форму S

Значение:

-   Если некая величина образуется в результате сложения многих случайных слабо взаимозависимых величин, каждая
    из которых вносит малый вклад относительно общей суммы, то центрированное и нормированное распределение
    такой величины при увеличении числа наблюдений стремится к нормальному распределению.
-   to represent real-valued random variables whose distributions are not known
-   useful because of the **central limit theorem** - states that averages of samples of observations of random
    variables independently drawn from independent distributions **converge in distribution** to the normal, that
    is, they become normally distributed when the number of observations is sufficiently large. N(0,1)
-   при больших n биноминальная случайная величина приближенно распределена с математическим ожиданием μ=np и
    стандартным отклонением σ=√(np(1-p))


<a id="orgfffbf41"></a>

### (bounded interval)


<a id="orgde79f06"></a>

## Monte Carlo method

чтобы узнать, какое в среднем будет расстояние между двумя случайными точками в круге, методом Монте-Карло,
 нужно взять много случайных пар точек, для каждой пары найти расстояние, а потом усреднить.


<a id="org332da08"></a>

# Математическая статистика

-   родственная теории вероятности
-   наблюдая значения случайной величины X, исследователь стремится сделать определенное заключение о
    неизвестных параметрах вероятностной модели

Statistical dispersion - zero if all the data are the same and
increases as the data become more diverse:

-   Standard deviation
-   Interquartile range (IQR)
-   Range
-   Mean absolute difference (also known as Gini mean absolute difference)
-   Median absolute deviation (MAD)
-   Average absolute deviation (or simply called average deviation)
-   Distance standard deviation


<a id="orgd97e43b"></a>

## sample and population

-   statistical population - set of items for experiment.
-   sample - subset of population
-   sampling fraction = len(sample)/len(population)
-   sample points - elements of sample


<a id="org408fa38"></a>

## точечное оценивание (point estimation)

involves the use of sample date to calculate a signle values - best guess of unknown population paremeter


<a id="orgad5be57"></a>

## интервальное оценивание (interval estimation) - Доверительный интервал

Доверительный интервал - покрывает неизвестный параметр с заданной точностью. Чтобы population parameter
попадал в интервал в 95 процентах случаев.

более предпочтителен чем точечние оценивание при небольшой выборке

Различают классический (confidence interval CI) и баесовый интервал (credible interval)

Most commonly 95% confidence level used.

Ex: Here is CI interval from XYZ experiments. Means:

-   **confidence interval:** If we repeat the experiment infinitely times 95% of calculated intervals will capture parameter in
    CI. Frequientist. boundaries random, parameter fixed.
-   **credible interval:** There is 95% probability/plausibility/likelihood that the parameter lies in the
    interval. Bayesian statistics. Boundaris fixed, variable random.

-   **confidence interval:** If we repeat the experiment infinitely times 95% of calculated intervals will capture parameter in
    CI. Frequientist.


<a id="orgd6be42e"></a>

# Calculus Математический анализ (Functional analysis)


<a id="org0d28ca7"></a>

## Differential calculus

concerning instantaneous rates of change and slopes of curves - мгновенных скоростей и угловой коэффициент


<a id="orgb83d40d"></a>

### Gradient or gradient vector field

is a multi-variable generalization of the derivative. While a **derivative** can be defined on functions
 of a single variable, for functions of several variables.

Represents the slope of the tangent of the graph of the function. Угловой коэффициент прямой - коэффициент k
of f(y)=kx+b численно равен тангенсу угла

nabla ∇f or grad f(x,y,z) = ∂f/∂x(i) +∂f/∂y(j) + ∂f/∂z(k) where i,j,k оси OR вектор (∂f/∂x, ∂f/∂y, ∂f/∂z) -
частные производные

f(x,y,z) - называют скалярным полем scalar field


<a id="org3dd397e"></a>

## integral calculus


<a id="org298a328"></a>

## Fourier transform (discrete Fourier transform - DFT)

Применяются в сжатии звука в MP3, сжатии изображений в JPEG и др.

Сопоставляющая одной функции вещественной переменной другую функцию вещественной переменной.


<a id="org51aef53"></a>

### Convolution

Mathematical operation on two functions (f and g) that produces a
third function expressing how the shape of one is modified by the
other


<a id="org0b37d00"></a>

### Dirac delta function

function equal to zero everywhere except for zero and whose integral
over the entire real line is equal to one
