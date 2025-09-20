= Geometric Sequences

Geometric sequences are of the form $a_n = a_1 dot r^(n-1)$, where $r$ is called the _common ratio_.

== Exercises

1. Given that a geometric sequence has the first term $a_1 = -2$ and the 4th term $a_4 = -54$, what is the index of the term $-6$?

The formula for $a_n$ is $a_n = b dot r^(n-1)$. Since $a_1 = b$, we have:

$
  a_4 &= -2 dot r^3\
  -54 &= -2 dot r^3\
  27 &= r^3\
  r &= root(3, 27)\
  r &= 3
$

So the formula is $a_n = -2 dot 3^(n-1)$. Now we are looking for the index. We substitute $-6$ for $a_n$:

$
  -6 &= -2 dot 3^(n-1)\
  3 &= 3^(n-1)\
  n &= 2
$

2. First term: $a_1 = 81$, common ratio $r = 1/3$, and $a_n = 1$. Find $n$.

$
  1 &= 81 dot (1/3)^(n-1)\
  1/81 &= (1/3)^(n-1)\
  (1/3)^4 &= (1/3)^(n-1)\
  4 &= n - 1\
  n &= 5
$

3. Given $a_3 = 36$, $r = 3$, what is the index of the term $108$?

First let's find the formula:

$
  36 = a_1 dot 3^(3-1)\
  36 = a_1 dot 9\
  a_1 = 4\
$

So $a_n = 4 dot 3^(n-1)$. Now,

$
  108 &= 4 dot 3^(n-1)\
  27 &= 3^(n-1)\
  3^3 &= 3^(n-1)\
  3 &= n - 1\
  n &= 4

$
