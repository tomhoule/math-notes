#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

// #set text(font: "IBM Plex Sans", size: 9pt)
// #set text(font: "Noto Sans", size: 10.5pt)
// #set text(font: "Roboto", size: 10.5pt)
// #set text(font: "Source Sans Pro")
// #show math.equation: set text(font: "STIX Two Math")

#set page(paper: "a4", margin: (x: 4.4cm, y: 1.8cm))

#set text(font: "STIX Two Text")
#show math.equation: set text(font: "STIX Two Math")

// #set text(font: "TeX Gyre Pagella")
// #show math.equation: set text(font: "TeX Gyre Pagella Math")

// #set text(font: "EB Garamond")
// #show math.equation: set text(font: "Garamond-Math")


// #set text(font: "Fira Sans")
// #show math.equation: set text(font: "Fira Math")

// #set text(font: "New Computer Modern")
// #show math.equation: set text(font: "New Computer Modern Math")

#let accent-color = rgb(0x26, 0x42, 0x8b)
#let theorem(content) = box(fill: rgb(255, 200, 184), inset: 1em, [*Theorem.* #content])
#let exercises = [=== Exercises]

#show heading.where(level: 1, outlined: true): this => {
  [
    #pagebreak()
    #block(stroke: (bottom: (paint: rgb(100, 100, 100), thickness: .5pt)), width: 80%, inset: (bottom: 6pt))[
      #text(size: 18pt, weight: "medium", this.body)
    ]
    #v(.5em)
  ]
}

#show heading.where(level: 2): this => {
  block(text(weight: "medium", fill: accent-color, this.body), inset: (top: 1.4em, bottom: .4em))
}

#show heading.where(level: 3): this => {
  // emph(text(weight: "medium", this.body))
  text(weight: "regular", smallcaps(this.body))
}

#let der(top, bottom) = $(upright(d) #top)/(upright(d) #bottom)$
#let dern(n, top, bottom) = $(upright(d)^(#n)#top)/(upright(d)#bottom^(#n))$
#let sndder(top, bottom) = dern(2, top, bottom)

#align(right)[
  #text(size: 8em)[
    #smallcaps[
      Notes
    ]
  ]
]

#v(14em)

#outline(depth: 1)

#pagebreak()

#lorem(200)

#lorem(100)

_abcdefghijklmnopqrstuvwxyz_ $a b c d e f g h i j k l m n o p q r s t u v w x y z$

= Combinatorics

== Permutations

Sequences without repetition of $n$, written $attach(P, bl: n, br: k)$, are ordered arrangements of $k$ elements in an $n$ elements set. The formula for the number of permutations is:

$
  n!/(n-k)!
$

== Combination

A _combination_ is a selection of elements of a set that has distinct members, such that the order of the selection does not matter.

$
  binom(n, k)
$

or

$
  attach(C, bl: n, br: k)
$

The number of $k$-combinations of a set of cardinality $n$ is given by:

$
  binom(n, k) = n!/(k!(n-k)!)
$

#exercises

- A club has 10 female and 8 male members. Three members are to be chosen at random to represent the club. What is the probability that 2 women and one man will be chosen? Round your answer to the nearest percent.

First let's figure out how many ways to pick there are in total. The order doesn't matter, so we use a permutation:

$
  N = attach(C, bl: 3, br: 18) = 18!/((18 - 3)!3!) = 816
$

And how many ways to pick one male ($m$) or two women ($w$):

$
  m = attach(C, bl: 1, br: 8) = 8! / (8 - 1)! = 8\
  w = attach(C, bl: 2, br: 10) = 10!/(10-2)! = 45\
$

Multiplying these two, we get the numbers of ways to pick one man and two women.

Our final result is:

$
  (m w)/N = (8 dot 45) / 816 = 0.4411764...
$

- What is the probability that among 4 randomly chosen people whose birthdays are all in the last week of September, at least two will have birthdays on the same day? Round your answer to 3 decimal places.

It's easier to answer the question "what is the probability that all their birthdays are on a different day?" and take the complement.

We have 7 days to choose from, so there are $attach(P, bl: 7, br: 4) = 840$ permutations. There are $7^4$ possibilities for all the birthday combinations. We have:

$
  P(A') &= n/N = 840/7^4 = 0.3498...
  P(A) &= 1 - P(A') = 0.650...
$

- From a bag containing ten names, of which four are boy's names and six are girl's names, a magician must randomly choose two names to perform a magic trick. What is the probability that he will choose two boy's names?

First let's compute how many possibilities in total there are to choose two names from ten, where order does not matter (combinations):

$
  10!/(2!(10-2)!) = 45
$

Now how many ways to pick two boy's names:

$
  4!/(2!(4-2)!) = 6
$

So the probability we are looking for is $6/45 = 2/15$.

- From a box that contains 20 colored balls, a child randomly draws 2 black balls and one white ball. What is the probability of this event, given that the box contains 10 balls of each color?

First how many ways to pick 3 balls from 20, where order does not matter (combinations):

$
  20!/(3!(20-3)!) = 1140
$

How many to pick 2 black balls out of 10:

$
  10!/(2!(10-2)!) = 45
$

And one white ball out of 10:

$
10!/(1!(10-1)!) = 10
$

So $(45 dot 10)/1140 approx 0.39$


= Geometry

== Circles

*Circumference*: $2 pi r$\
*Surface*: $pi r^2$

== Cylinders

*Surface*: $2 pi r^2 + 2 pi r h$\
*Volume*: $V = pi r ^2 h$

#exercises

- Find an expression for the radius $r$ of the base of a cylinder in terms of its volume $V$ given that the ratio of the radius to the height is $3pi$.

We have $r / (3pi) = h$. Let's substitute that in the volume formula:

$
  pi r^2 h &= V\
  pi r^2 r/(3pi) &= V\
  (pi r^3)/3pi &= V\
  r^3/3 &= V\
  r^3 &= 3V\
  r &= root(3, 3V)
$

- Calculate the circumference of the base, given volume is $625pi m^2$ and the ratio of its height to its radius is $5$.

$
  pi r^2 h &= V\
  pi r^2 dot (5r) &= 625pi\
  5r^3 &= 625\
  r^3 &= 125\
  r &= 5
$

Now the circumference is $2 pi r = 2 pi (5) = 10 pi$

== Spheres

*Surface*: $4 pi r^2$
*Volume*: $4/3 pi r^3$

== Triangles

The formula for the *area of a triangle* from one angle $C$ and its two adjacent sides $a$ and $b$ is:

$
  1/2 a b sin C
$

$C$ is called the *included angle*.

== Sum of the interior angles of a polygons

The sum of the interior angles of a polygon is always $180 * (n-2)$ where $n$ is the number of sides.

== Regular polygons

With $n$ as the number of sides, exterior angles are given by:

$theta = 360/n$

= Logarithm

== Domain

$(0, infinity)$

== Range

$(-infinity, infinity)$

== Change of base

$
  log_b x = (log_k x) / (log_k b)
$

== Product rule

$
  log_b (M dot N) = log_b M + log_b N
$

== Quotient rule

$
  log_b (M/N) = log_b M - log_b N
$

== Power rule

$
  log_b (M^k) = k dot log_b M
$


== Solving equations using logarithms

#exercises

- Find $x$ if $8^(2-x) = 3^(x slash 2)$, rounded to 3 decimal places.

$
  8^(2-x) &= 3^(x slash 2)\
  log_3 8^(2-x) &= log_3 3^(x slash 2)\
  log_3 8^(2 -x) &= x/2\
  2 dot (log_8 8^2-x)/(log_8 3)  &= x\
  2(2 - x) &= log_8 3 dot x\
  4 - 2x &= log_8 3 dot x\
  4/(log 8_3 + 2) &= x\
  x &approx 1.582\
$

Or using the power rule:

$
  8^(2-x) &= 3^(x slash 2)\
  log_8 8^(2 - x) &= log_8 3^(x slash 2)\
  2 - x &= x / 2 dot log_8 3\
  2/(1/2 dot log_8 3 + 1) &= x\
  x &approx 1.582\

$

- Find $z$ to three decimal places if $6^(4z - 1) = 5^z$.

$
  6^(4z - 1) &= 5^z\
  log_6 6^(4z - 1) &= log_6 5^z\
  4z - 1 &= z dot log_6 5\
  (4 - log_6 5)z &= 1\
  z &= 1/(4 - log_6 5)
$

- Expressed in natural logarithms, find the value of $x$ if $8^(2x) = 10^(x-7)$.

$
  8^(2x) &= 10^(x-7)\
  ln 8^(2x) &= ln 10^(x-7)\
  2x dot ln 8 &= (x-7) dot ln 10\
  2x dot ln 8 &= x ln 10 - 7 ln 10\
  x dot (2ln 8 - ln 10) &= -7 ln 10\
  x &= (-7 ln 10)/(2ln 8 - ln 10)\
  x &= (-7 ln 10)/ln(32/5)
$

= Falling objects

The _displacement_ equation:

$ s = u t + 1/2 g t ^2 $

where:

- $s$ is the *distance* travelled in meters
- $u$ is the *initial velocity* in m/s
- $t$ is the *time* in seconds
- $g$ is the *acceleration due to gravity*, constant equal to $9.8 m slash s^2$

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

#pagebreak()

= Polynomials

== Forms

- Standard form: $y = a x^2 + b x + c$
- Vertex form: $y = a(x - h)^2 + k$
  - In this form, the coordinates of the vertex are $(h, k)$
- Factored form: $y = a(x - x_1)(x - x_2)$
- Slope-intercept form: $y = m x + b$
  - In this form, the slope is $m$ and the y-intercept is $b$

  #exercises

- Find the equation of the line that passes through the point $(1, 3)$ and is parallel to the line passing through the points $(1, -3)$ and $(-1, 7)$.

First let's find the slope of the line:

$
  (y_2 - y_1) / (x_2 - x_1) = (7 - (-3)) / (-1 - 1) = 10 / (-2) = -5
$

Now the equation of the line passing through $(1, 3)$ with slope $-5$, using point-slope form:

$
  y-3 = -5(x-1)\
  y = -5x + 5 + 3\
  y = -5x +8\
$

- Find the equation of the line that passes through $(2, 0)$ and is parallel to the line on $(0, 0)$ and $(2, 1)$.

First the slope: $(y_2 - y_1)/(x_2-x_1) = 1/2$.

Then, using point-slope form:

$
  y-0 = 2(x-2)\
  y = 2x - 4
$

- Same. Point: $(0, 0)$. Line: $(0, -2), (-2, 0)$.

Slope: $2/(-2) = -1$.

$y = -x$

- Same. Point: $(6, 4)$. Line: $(2, -2), (4, -1)$.

Slope: $(-1-(-2))/(4-2) = 1/2$.

Point-slope form:

$
  y-4 &= 1/2(x-6)\
  y &= 1/2x - 3 + 4\
  y &= 1/2x + 1\
$

- Point: $(-3, 2)$. Line: $(5, -3), (6, -5)$.

Slope: $(-5-(-3))/(6-5) = -2/1 = -2$.

$
  y-2 &= -2(x + 3)\
  y &= -2x - 6 + 2\
  y &= -2x -4\
$

== Vertex

If the binomial is given in standard form, the vertex' $x$ coordinate is given by $-b / (2a)$. Once you have the $x$ coordinate, substitute in the equation to find $y$.

== Domain and range

The *domain* is always $( - infinity, + infinity )$.

The *range* is, for upward opening parabolas, assuming vertex form: $y = a(x - h)^2 + k$, the range is $[k, +infinity)$.

== Factor theorem

#theorem[
  $(x - r)$ is a factor of a polynomial $p(x)$ if and only if the root $x = r$ is also a root of $p(x)$.
]

#exercises

- The polynomial $-5x^4 + 8x^3 + 29x^2 - 20x - 12$ can be expressed as $-(x-1)(x-3) dot P(x)$. Find $P(x)$.

First let's divide by $(x-1)$

```
1 | -5  8  29  -20  -12
       -5   3   32   12
    -5  3  32   12    0
```

So we have $(x - 1) dot (-5x^3 + 3x^2 + 32x + 12)$

Let's divide by $(x-3)$

```
3 | -5   3   32   12
       -15  -36  -12
    -5 -12   -4    0
```

So we have $(x - 1)(x - 3)(-5x^2 - 12x - 4)$

So we have $(x - 1) dot (x - 3) dot (-5x^2 - 2x + 4)$

Finally, $-(x-1)(x-3)(5x^2 + 2x + 4)$. So $P(x) = 5x^2 + 2x + 4$.

Factoring further, $P(x) = (5x + 2)(x + 2)$.

- Find the polynomial $P(x)$ given that

$
  4x^4 - 19x^3 - 9x^2 + 19x + 5 = (x-1)(x-5)P(x)\
$

First let's divide by $(x-1)$.

```
1 |  4   -19   -9   19   5
           4  -15  -24  -5
     4   -15  -24   -5   0
```

So $(x-1)(4x^3 - 15x^2 - 24x - 5)$. Now divide by $(x-5)$.

```
5 | 4   -15  -24   -5
         20   25    5
    4     5    1    0
```

So $(x-1)(x-5)(4x^2 + 5x + 1)$.

- Find $P(x)$ given $4x^4 - 8x^3 - 3x^2 + 7x - 2 = (x-2)(x+1)P(x)$.

First divide by $(x+1)$:

```
-1 | 4   -8   -3   7   -2
         -4   12  -9    2
     4  -12    9  -2    0
```

So $(x+1)(4x^3 -12x^2 + 9x - 2)$. Now divide the remainder by $(x-2)$:

```
2 |   4   -12   9   -2
            8  -8    2
      4    -4   1    0
```

So $(x+1)(x-2)(4x^2 - 4x + 1)$. So $P(x) = (4x^2 - 4x + 1)$. Factoring further,

$
  P(x) &= 4x^2 - 4x + 1 \
  &= (4x^2 - 2x) + (-2x + 1)\
  &= 2x(2x - 1) - 1(2x - 1)\
  &= (2x - 1)^2
$

- Let $p(x) = -6x^4 + 5x^3 + 52x^2 - 19x - 60$. Given that $p(-1) = p(3) = 0$, find the sum of all distinct roots of $p(x)$.

$p(-1) = 0$ means $x = -1$ is a root, so $(x+1)$ is a factor.

$p(3) = 0$ means $x = 3$ is a root, so $(x-3)$ is a factor.

Let's first divide by $(x+1)$.

```
-1 | -6   5   52   -19   -60
          6  -11   -41    60
     -6  11   41   -60     0
```

So $p(x) = (x+1)(-6x^3 + 11x^2 + 41x -60)$. Now let's divide the remainder by $(x-3)$.

```
3 | -6   11   41   -60
        -18  -21    60
    -6   -7   20     0
```

So $p(x) = (x+1)(x-3)(-6x^2-7x+20)$.

Factoring the remainder further:

$
  p(x) &= (x+1)(x-3)(-6x^2-7x+20)\
  &= (x+1)(x-3)(-6x^2 + 8x) + (-15x + 20))\
  &= (x+1)(x-3)(2x + 5)(-3x + 4)
$

The roots are $x = -1, 3, -5/2, 4/3$.

The number we are looking for is $-1 + 3 - 5/2 + 4/3 = 2 - 5/2 + 4/3 = -1/2 + 4/3 = 5/6$.

- Find the distinct roots of $x^4 - 5x^2 + 4$ given $p(1) = p(-1) = 0$.

$(x-1)$ is a factor, let's divide by it first:

```
1 | 1  0  -5  0  4
       1   1 -4 -4
    1  1  -4 -4  0
```

So $(x-1)(x^3 + x^2 -4x - 4)$. Now divide by $(x+1)$.

```
-1  |  1  1  -4  -4
    |    -1   0   4
       1  0  -4   0
```

So $(x-1)(x + 1)(x^2 -4) = (x-1)(x + 1)(x+2)(x-2)$.

- Find $P(x)$ given $x^4 -2x^3 -7x^2 + 18x - 18 = (x-3)(x+3)P(x)$.

First let's divide by $(x-3)$:

```
3 | 1  -2   -7   18   -18
        3    3  -12    18
    1   1   -4    6     0
```

So the remainder is $x^3 + x^2 -4x + 6$. Let's divide by $(x + 3)$.

```
-3 | 1   1   -4   6
        -3    6  -6
     1  -2    2   0
```

We have $P(x) = x^2 - 2x + 2$.

- Find $P(x)$ given that $x^4 + x^3 - 36x^2 + 37x - 35 = (x-5)(x+7)P(x)$.

First divide by $(x-5)$:

```
5 |  1   1   -36   37  -35
         5    30  -30   35
     1   6    -6    7    0
```

Remainder: $x^3 + 6x^2 - 6x + 7$. Now divide that by $(x+7)$:

```
-7 |   1   6   -6   7
          -7    7  -7
       1  -1    1   0
```

Result: $x^2 - x + 1$

== Polynomial long division

#exercises

- What is the remainder of $3x^2 - 2x^2 - 18x - 1$ divided by $3x^2 -8x - 2$?

```
                x    +2
3x^2 - 8x - 2 | 3    -2    -18    -1
                3    -8     -2
                --------------
                      6    -16
                      6    -16    -4
                      --------------
                                   3
```

The remainder is 3.

- What is the remainder when $x^4 - 2x^3 - 4x^2 - 10x - 7$ is divided by $x^2 + 2x + 1$?

```
              x² -4x   +3
x² + 2x + 1 | 1   -2   -4   -10   -7
              1    2    1
              -----------
                  -4   -5
                  -4   -8    -4
                  -------------
                        3    -6
                        3     6    3
                        -------------
                            -12x  -10
```

The remainder is $-12x-10$.

- What is the quotient of $2x^4 - x^2 - 1$ divided by $2x^2 + 1$?

```
            x²  -1
2x^2 + 1 |  2    0    -1   0   -1
            2    0     1
            ------------
                      -2
                      -2   0    1
                      -----------
                                0
```

So it's $x² - 1$.

== Rational roots theorem

The rational roots theorem (a.k.a. rational zeros theorem) gives the rational roots of a polynomial with integer coefficients.

#theorem[
  Suppose that $p/q in QQ$, in lowest terms, is a root of a polynomial with integer coefficients.
  Then $p$ must be a factor of the polynomial's constant term, and $q$ must be a factor of its leading coefficient.
]

That means every root must take the form $plus.minus "factor of the constant term"/"factor of the leading coefficient"$.

#exercises

- For the polynomial $f(x) = 3x^8 - 18x^2 - 33x -18$, how many potential roots are given by the rational roots theorem?

The numerator must be a factor of -18. The denominator must be a factor of 3. So here are the possibilities:

$plus.minus 1/3, plus.minus 2/3, plus.minus 1, plus.minus 2, plus.minus 3, plus.minus 6, plus.minus 9, plus.minus 18$

So 16.

- Given that the polynomial $2x^3 + x^2 + 5x - 3$ has a root in the interval $(0, 3/2)$, find the sum of the distinct real roots of $f(x)$.

Using the rational roots theorem, we can find the potential roots of the polynomial. The numerator must be a factor of -3, and the denominator must be a factor of 2. So here are the possibilities in the interval $(0, 3/2)$:

$1/2, 1$

We can quickly find which one of these roots by evaluating the polynomial at these points. It's $1/2$.

Now let's use synthetic division to find the remaining roots:

```
        2    1   5   -3
1/2  |       1   1    3
        2    2   6    0
```

So $2x^3 + x^2 + 5x - 3 = (x - 1/2)(2x^2 + 2x + 6)$. Since the discriminant of $2x^2 + 2x + 6$ is negative, it has no real roots. Therefore, the only real root is $x = 1/2$.

= Rationalizing the denominator

In general, you want to avoid radicals in the denominator. To rationalize the denominator, multiply both the numerator and the denominator by the conjugate of the denominator.

$
  &1 / (1 + sqrt(2))\
  &= 1 / (1 + sqrt(2)) dot (1 - sqrt(2)) / (1 - sqrt(2)) \
  &= (1 - sqrt(2)) / ((1 + sqrt(2))(1- sqrt(2))) \
  &= (1 - sqrt(2)) / (1^2 - sqrt(2)^2) \
  &= (1 - sqrt(2)) / (1 - 2) \
  &= (1 - sqrt(2)) / (-1) \
  &= -1 + sqrt(2)
$

== Exercises

-
$
  &1 / (1 + sqrt(2))\
  &= 1 / (1 + sqrt(2)) dot (1 - sqrt(2)) / (1 - sqrt(2)) \
  &= (1 - sqrt(2)) / ((1 + sqrt(2))(1- sqrt(2))) \
  &= (1 - sqrt(2)) / (1^2 - sqrt(2)^2) \
  &= (1 - sqrt(2)) / (1 - 2) \
  &= (1 - sqrt(2)) / (-1) \
  &= -1 + sqrt(2)
$


1.

$
  &(1 + sqrt(8)) / (sqrt(9) - sqrt(2))\
  &= ((1+sqrt(8))(sqrt(9)+sqrt(2))) / 7\
  &= (sqrt(9) + 3sqrt(8) + sqrt(2) + sqrt(16))/ 7\
  &= (3 + 6sqrt(2) + sqrt(2) + 4)/7\
  &= (7 + 7sqrt(2))/7\
  &= 1 + sqrt(2)
$

2.

$
  (x^2y^2)/sqrt(x^3y^3) &= (x^2y^2 sqrt(x^3y^3))/(x^3y^3)\
  &= (x^2y^2x^(3 slash 2)y^(3 slash 2))/(x^3y^3)\
  &= (x^(7 slash 2)y^(7 slash 2))/(x^3y^3)\
  &= sqrt(x y)
$

3.

$
  sqrt(12x)/(3 sqrt(2x^2y)) &= (sqrt(12x) dot sqrt(2x^2 y))/(3 dot 2x^2y) \
  &= (sqrt(24x^3y))/(6x^2y)\
  &= (sqrt(4x^2 dot 6x y))/(6x^2y)\
  &= (2x dot sqrt(6x y))/(6x^2y)\
  &= (sqrt(6x y))/(3x y)\
$

4. Given that $d > 0$.

$
  (c d)/sqrt(c d^3) &= (c d sqrt(c d^3))/(c d^3)\
  &= sqrt(c d^3)/(d^2)\
  &= (sqrt(c) dot d^(3 slash 2))/d^2\
  &= (sqrt(c) dot d^(1 slash 2))/d\
  &= sqrt(c d)/d
$

5. Given that $p > 0$

$
  (7t)/sqrt(14t p^2) &= (7t dot sqrt(14t p^2))/(14t p^2)\
  &= (7t p sqrt(14 t))/(14t p^2)\
  &= sqrt(14 t)/(2p)
$

6. Given that $a > 0$

$
  sqrt((5b)/(a^3)) &= sqrt(5b)/sqrt(a^3)\
  &= sqrt(5b)/(a sqrt(a))\
  &= sqrt(5a b)/(a sqrt(a)^2)\
  &= sqrt(5a b)/a^2\
$

7.

$
  sqrt((14r)/(p^5)) &= sqrt(14r)/sqrt(p^5)\
  &= sqrt(14p^5r)/p^5\
  &= (sqrt(14r) dot p^(5 slash 2))/p^5 \
  &= sqrt(14p r)/p^3
$

8.

$
  sqrt((9a^2)/(b^3)) &= sqrt(9a^2)/sqrt(b^3)\
  &= sqrt(9a^2)/(b sqrt(b))\
  &= sqrt(9a^2 b)/(b sqrt(b)^2)\
  &= (3a sqrt(b))/b^2\
$

9. Given that $z > 0$.

$
  sqrt(11/(w z^2)) &= sqrt(11)/sqrt(w z^2)\ç
  &= sqrt(11)/(z sqrt(w)) \
  &= sqrt(11w)/(z w)
$

10.

$
  sqrt((5a)/(3b)) &= sqrt(5a)/sqrt(3b)\
  &= sqrt(15a b)/(3b)\
$

11.

$
  sqrt((a^2 + 3)/(a^2 - 3)) &= sqrt(a^2 + 3)/sqrt(a^2 - 3)\
  &= sqrt((a^2 + 3)(a^2 - 3))/(a^2 - 3) \
  &= sqrt(a^4 - 9)/(a^2 - 3)\
  &= sqrt(a^4 - 9)/(a^2 - 3)\
$

12. Given $y > 0$

$
  (2 + 3sqrt(x y))/(3 sqrt(y)) &= ((2+3sqrt(x y)) dot sqrt(y))/(3y)\
  &= (3y sqrt(x) + 2sqrt(y))/(3y)\
  &= sqrt(x) + (2sqrt(y))/(3y)
$

= Partial fraction decomposition

We have something of the form:

$
  1/((x-1)(3x-2))
$

and we want to decompose it into partial fractions:

$
  1/((x-1)(3x-2)) = A/(x-1) + B/(3x-2)
$

Multiplying both sides by $(x-1)(3x-2)$, we get:

$
  1 = A(3x-2) + B(x-1)
$

Setting $x = 1$, we get:

$
  1 = A(3(1)-2) + B(1-1) = A
$

Setting $display(x = 2/3)$, we get:

$
  1 = A(3(2/3)-2) + B(2/3-1) = -B/3
$

Solving for $B$, we get:

$
  B = -3
$

So the partial fraction decomposition is:

$
  1/((x-1)(3x-2)) = 1/(x-1) - 3/(3x-2)
$

#exercises

1. Decompose ~ $display((44x+48)/((x+6)(x-3)(x+2)))$

$
  (44x+48)/((x+6)(x-3)(x+2)) &= A/(x+6) + B/(x-3) + C/(x+2)\
  44x + 48 &= A(x-3)(x+2) + B(x+6)(x+2) + C(x+6)(x-3)\
$

Set $x = 3$:

$
  44 dot 3 + 48 &= B dot 9 dot 5\
  180/(9 dot 5) &= B\
  B &= 4
$

Set $x = -2$:

$
  44 dot -2 + 48 &= C dot 4 dot -5\
  -40 &= C dot -20\
  C &= 2
$

Set $x = -6$:

$
  44 dot -6 + 48 &= A dot -9 dot -4\
  A &= -6
$

2. Given that

$
  (-2x-9)/(x+3)x &= 1 / (x+3) + B/x
$

find $B$

$
  (-2x-9)/(x+3)x &= 1 / (x+3) + B/x\
  (-2x-9) &= x + B(x+3)\
  -3x-9 &= B(x+3)\
  (-3(x+3))/(x+3) &= B\
  B &= -3
$

3. Given that

$
  (-9x +36)/((x-3)(x-6)) &= -(3)/(x-3) + B/(x-6)\
  -9x + 36 &= -3(x-6) + B(x-3)\
  -6x + 18 &= B(x-3)\
  (-6(x-3))/(x-3) &= B\
  B &= -6
$

= Functions

== Horizontal asymptotes of rational functions

Rational functions are of the form:

$ f(x) = (a x^n + b x^(n-1) + ...) / (c x ^ m + d x ^ (m-1) + ...) $

To get the horizontal asymptotes, first take the *dominant term*. It's the leading term of the polynomial in the denominator, _without the coefficient_. Here $x^m$.

Then, divide every term in both numerator and denominator by the dominant term, and evaluate at $x -> infinity$.

#exercises

- Determine the horizontal asymptote of $f(x) = (x^3 +2x+1)/(x^2-x-12)$

The dominant term in $x^2$. Let's divide by it.

$
  ((x^3 + 2x + 1)/(x^2))/((x^2-x-12)/(x^2)) &= ((x + 2/x + (1)/(x^2)))/(1 - (x+12)/(x^2)) \
$

As $x -> infinity$, this becomes $x/1 = x$. Since this is not a constant, there is no horizontal asymptote.

- Find the horizontal asymptote of $(3x^2 + 3)/(6x^2 + x)$.

The dominant term is $x^2$.

$
  ((3x^2 + 3)/x^2)/((6x^2 + x)/x^2) &= (3 + 3/x^2)/(6 + 1/x)
$

As $x-> infinity$, this becomes $3/6 = 1/2$. The horizontal asymptote is $y = 1/2$.

- Find the horizontal asymptote of $f(x) = (3x^2 - 2)/(2x^2 + 1)$.

The dominant term is $x^2$.

$
  ((3x^2 - 2)/x^2)/((2x^2 + 1)/x^2) &= (3 - 2/x^2)/(2 + 1/x^2)
$

As $x-> infinity$, this becomes $3/2$. The horizontal asymptote is $y = 3/2$.

== Vertical asymptotes of rational functions

1. Factor numerator and denominator.
2. Cancel out common factors.
3. Set the denominator equal to zero and solve for $x$.

#exercises

- Vertical asymptotes of $(4x)/(2x^3 + 5x^2 + 2x)$?

$
  (4x)/(2x^3 + 5x^2 + 2x) &= (4x)/(x(2x^2 + 5x + 2))\
  &= 4/(2x^2 + 5x + 2)\
  &= 4/(2x^2 + 4x + x + 2)\
  &= 4/(2x(x + 2) + 1(x+2))\
  &= 4/((2x+1)(x+2)
$

So the vertical asymptotes are $x = -1/2$ and $x = -2$.

- Vertical asymptotes of $f(x) = (x^2 - x - 2)/(x^3 + 7x^2 -x -7)$.

$
  (x^2 - x - 2)/(x^3 + 7x^2 -x -7) &= (x^2 - 2x + x - 2)/(x^2(x + 7) -1(x+7))\
  &= (x(x-2) + 1(x-2))/((x - 1)(x+1)(x + 7))\
  &= ((x+1)(x-2))/((x+1)(x-1)(x+7))\
  &= (x-2)/((x-1)(x+7))
$

So the vertical asymptotes are $x = 1$ and $x = -7$.

- Vertical asymptotes of $f(x) = (2x^2 - 10x)/(x^2 + 2x - 8)$.

$
  (2x^2 - 10x)/(x^2 + 2x - 8) &= (2x(x-5))/(x^2 - 2x + 4x - 8)\
  &= (2x(x-5))/((x+4)(x-2))
$

== Domain of radical functions

All the values where the radicand $> 0$ for even degrees, $(- infinity, infinity)$ for odd degrees.

#exercises

1. Domain of $d(x) = root(7, -2x + 1/2) + 1$?

$
  -2x + 1/2 >
$

== Roots of rational functions

First factor numerator and denominator, then cancel out common factors, then set the numerator to zero and solve.

#exercises

1. Solve $f(t) = 0$ where $display(f(t) = (7t^2 + 14)/(t^2 - 25))$.

$
  (7t^2 + 14)/(t^2 - 25) &= 0\
  (7(t^2 + 2))/((t+5)(t-5)) &= 0\
  t^2 + 2 &= 0\
  t^2 &= -2
$

2. Solve $f(x) = 0$ where $f(x) = (x^2 + 2x - 15)/(x^3 + 5x^2 - 9x - 45)$.

$
  (x^2 + 2x - 15)/(x^3 + 5x^2 - 9x - 45) &= 0\
  (x^2 + 5x - 3x - 15)/(x^2(x + 5) - 9(x + 5)) &= 0\
  ((x + 5)(x-3))/((x+5)(x^2 - 9)) &= 0\
  ((x + 5)(x-3))/((x+5)(x - 3)(x+3)) &= 0\
  1 &= 0
$

The equation has no solution.

3. Solve $f(t) = 0$ where $f(t) = (t-3)/(t^2 + 6t + 5)$

$
  (t-3)/(t^2 + 6t + 5) &= 0\
  (t-3)/(t^2 + t + 5t + 5) &= 0\
  (t-3)/((t+5)(t+1)) &= 0\
  t - 3 &= 0\
  t &= 3
$

== Invertible functions

A function is invertible on an interval if and only if it is one-to-one on that interval.

To check if a function is one-to-one, we can use the horizontal line test. If any horizontal line intersects the graph of the function at most once, then the function is one-to-one.

= Statistics

== Variance

$
  sigma^2 = 1/n sum_(i=1)^n (x_i - dash(x))^2
$

== Covariance

Covariance is the measure of the joint variability of two random variables.

$
  "Cov"(x, y) = 1/n sum_(i=1)^n (x_i - dash(x))(y_i - dash(y))
$

== Sum of squares

The sum of squares is the sum of the squared differences between each data point and the mean.

$
  sum_(i=1)^n (x_i - dash(x))^2
$

Denoted $S_(x x)$. If two variables are involved (covariance), it is denoted as $S_(x y)$.

Shortcut formula:

$
  S_(x x) = sum_(i=1)^n x_i^2 - 1/n(sum_(i=1)^n x_i)^2\
  S_(x y) = sum_(i=1)^n x_i y_i - 1/n(sum_(i=1)^n x_i)(sum_(i=1)^n y_i)
$

== Mean estimation for continuous grouped data

$
  dash(x) approx 1/n sum_(i = 1)^K f_i dot m_i
$

where

- $f_i$ is the frequency of the $i$th interval
- $m_i$ is the midpoint of the $i$th interval
- $n$ is the total number of observations

==  Estimating a variance for continuous grouped data

Using the same notation as above:

$
  sigma_n^2 approx 1/n sum_(i=1)^K f_i dot (m_i - dash(x))^2
$

= Graphing

== Graphing cubic curves with one distinct real root

If we are given one root of a cubic equation, we can use synthetic division to factor it.

#exercises

Given that $(x - 3)$ is a factor of $f(x) = x^3 + x^2 - 4x - 24$, sketch the curve of $y = f(x)$.

First, synthetic division:

#grid(
  columns: (auto, auto, auto, auto, auto),
  rows: (auto, auto, auto, auto),
  inset: .5em,
  align: right,
  "",
  grid.vline(stroke: (thickness: .01em), start: 1),
  "x³", "x²", "x¹", "x⁰",
  "3", "1", "1", "-4", "-24",
  "", "", "3", "12", "24",
  "", "1", "4", "8", "0"
)

So we have $f(x) = (x - 3)(x^2 + 4x + 8)$

$therefore x = 3$ is a root.

The discriminant of $x^2 + 4x + 8$ is $4^2 - 4 dot 1 dot 8 = -16$, which is negative, so $x = 3$ is the only real root.

The $y$ intercept is $f(0) = 0^3 + 0^2 - 4 dot 0 - 24 = -24$

Now we can draw the curve:

#cetz.canvas({
import cetz.draw: *
import cetz-plot: *
  plot.plot(size: (6, 4), x-tick-step: 1, y-tick-step: 10, axis-style: "school-book", {
      plot.add(x => calc.pow(x, 3) + calc.pow(x, 2) - 4*x - 24, domain: (-3, 3.5))
  })
})

= Logarithms

== Domain

$(0, infinity)$

== Range

$(-infinity, infinity)$

= Complex Numbers

== Magnitude

The magnitude of a complex number $z = a + b i$ is defined as $|z| = sqrt(a^2 + b^2)$.

== Argument

For any complex number, like $z = 3 + 4i$, there is $arg(z)$ that is the angle (in radians) between the $x$ axis and the complex number in the Argand diagram.

So for $z$:

$
  tan theta &= 4/3\
  theta &= arctan(4/3)\
        &approx 0.93
$

= Trigonometry

== Reference angle in the unit circle

The _reference angle_ of an angle is the smallest angle between the terminal side of the angle and the x-axis. It is always a positive angle less than or equal to 90 degrees.

== Pythagorean identity in the first quadrant

In the first quadrant, any point $(x, y)$ forms a right triangle with the origin, where $x$ and $y$ are the lengths of the legs and $sqrt(x^2 + y^2)$ is the length of the hypotenuse. Since in the unit circle, the length of the hypotenuse is 1, by definition, the Pythagorean identity states that $x^2 + y^2 = 1$.

#exercises

1. For a point in the first quadrant with $y = sqrt(5)/3$, find its $x$ coordinate.

$
  sqrt((sqrt(5)/3)^2 + x^2) &= 1 \
  (sqrt(5)/3)^2 + x^2 &= 1 \
  x^2 &= 1 - (sqrt(5)/3)^2 \
  x^2 &= 1 - 5/9 \
  x^2 &= 4/9 \
  x &= sqrt(4/9) \
  x &= 2/3
$

2. Point in the first quadrant. $y$ coordinate is $display(sqrt(2)/3)$. What is the $x$ coordinate?

$
  sqrt((sqrt(2)/3)^2 + x^2) &= 1 \
  (sqrt(2)/3)^2 + x^2 &= 1 \
  x^2 &= 1 - (sqrt(2)/3)^2 \
  x^2 &= 1 - 2/9 \
  x^2 &= 7/9 \
  x &= sqrt(7/9) \
  x &= sqrt(7)/3
$

== Pythagorean trigonometric identity

In the unit circle, since for any central angle $x = cos theta$ and $y = sin theta$.

That means

$
  x^2 + y^2 &= 1 \
  cos^2(theta) + sin^2(theta) &= 1
$

This is the *Pythagorean trigonometric identity*. It works in all quadrants.

#exercises

1. Point $P$ on the unit circle with $x = 2/5$. Find $sin theta$.

$
  sin^2 theta + cos^2 theta &= 1 \
  sin^2 theta &= 1-cos^2 theta \
  sin theta &= sqrt(1-cos^2 theta) \
  sin theta &= sqrt(1 - 4/25) \
  sin theta &= sqrt(21/25) \
  sin theta &= sqrt(21)/5
$

2. $y$ coordinate is $4/9$. Find $cos theta$.

$
  sin^2 theta + cos^2 theta &= 1 \
  (4/9)^2 + cos^2 theta &= 1 \
  cos^2 theta &= 1 - (4/9)^2 \
  cos^2 theta &= 1 - 16/81 \
  cos^2 theta &= 65/81 \
  cos theta &= sqrt(65/81) \
  cos theta &= sqrt(65)/9
$

3. $x$ coordinate is $sqrt(7)/4$. Find $csc theta$.

$
  sin^2 theta + cos^2 theta &= 1 \
  sin^2 theta &= 1 - cos^2 theta \
  sin theta &= sqrt(1 - cos^2 theta) \
  sin theta &= sqrt(1 - (sqrt(7)/4)^2) \
  sin theta &= sqrt(1 - 7/16) \
  sin theta &= sqrt(9/16) \
  sin theta &= 3/4 \
  therefore \
  csc theta &= 1/sin theta \
  csc theta &= 4/3
$

4. $x$ coordinate is $3/7$. Find $csc theta$.

$
  sin^2 theta &= 1 - cos^2 theta\
  sin theta &= sqrt(1 - 9/49)\
  sin theta &= sqrt(40/49)\
  sin theta &= sqrt(40)/7\
  therefore\
  csc theta &= 1/(sin theta)\
  csc theta &= 7/sqrt(40)\
  csc theta &= 7/(2 sqrt(10))\
  csc theta &= 7/(2 sqrt(10))\
  csc theta &= (7 sqrt(10))/20\
$

5. $y$ coordinate is $1/9$. Find $tan theta$.

We have $sin theta = 1/9$.

$
sin^2 theta + cos^2 theta &= 1 \
cos theta &= sqrt(1 - sin^2 theta)\
cos theta &= sqrt(1 - (1/9)^2)\
cos theta &= sqrt(1 - 1/81)\
cos theta &= sqrt(80/81)\
cos theta &= sqrt(80)/9\
cos theta &= (4 sqrt(5))/9\
therefore\
tan theta &= (sin theta) / (cos theta)\
tan theta &= (1/9) / ((4 sqrt(5))/9)\
tan theta &= 1/9 dot 9 / (4 sqrt(5))\
tan theta &= sqrt(5)/20
$

6. $x$ coordinate is $sqrt(11)/6$. Find $cot(theta)$

We have $cos theta = sqrt(11)/6$ and $display(cot(theta) = 1/(tan theta) = (cos theta)/(sin theta) = (sqrt(11)/6)/(sin theta))$

$
  sin^2 theta + cos^2 theta &= 1\
  sin^2 theta &= 1 - cos^2 theta\
  sin^2 theta &= 1 - (sqrt(11)/6)^2\
  sin^2 theta &= 1 - 11/36\
  sin^2 theta &= 25/36\
  sin theta &= sqrt(25/36)\
  sin theta &= 5/6\
  therefore\
  cot theta &= (cos theta)/(sin theta)\
  cot theta &= (sqrt(11)/6)/(5/6)\
  cot theta &= sqrt(11)/5\
$

== Quadrantal angles

Quadrantal angles are angles that are multiples of $90 degree$. For example, $0 degree$, $90 degree$, $180 degree$, $270 degree$, and $360 degree$ are all quadrantal angles. They lie on an axis.

They are useful to find the values of trigonometric functions. Just remember that for points on the unit circle, $cos theta = x$ and $sin theta = y$.

The corresponding angles on $[0, 360 degree]$ are $0$, $pi / 2$, $pi$, $(3pi) / 2$, $2pi$.

Example: $cos 0 + sin (pi / 2) = 1 + 1 = 2$

#exercises

- Find the value of $tan(180 degree) + cot(270 degree)$

$
  tan(180 degree) + cot(270 degree) &= sin(180 degree)/cos(180 degree) + cos(270 degree)/sin(270 degree)\
  &= 0/(-1) + 0/(-1)\
  &= 0
$

- $sec(pi / 2)$?

$
  sec(pi / 2) &= 1/cos(pi / 2)\
  &= 1/0\
$

So it's undefined.

== Law of sines

In any triangle, where $a$, $b$, and $c$ are the lengths of the sides opposite angles $A$, $B$, and $C$ respectively, the law of sines states that:

$
  a/sin(A) = b/sin(B) = c/sin(C)
$

For acute angles, the formula can be flipped:

$
  sin(A)/a = sin(B)/b = sin(C)/c
$

For obtuse angles, the same formula works, but it will always give acute angles. To find an obtuse angle, subtract the acute angle from $180degree$.

#exercises

- Find $a$ if $A = 70degree$, $B = 35degree$, $b = 12$.

$
  a/sin(A) &= b/sin(B)\
  a/sin(70degree) &= 12/sin(35degree)\
  a &= 12 dot sin(70degree) / sin(35degree)\
  a &approx 12 dot 0.9397 / 0.5736\
  a &approx 19.66
$

- $R$, $Q$ and $P$ form a triangle. $P R = 21m$. $angle Q = 89degree$, $angle P = 38degree$. What is $Q R$?

$
  (Q R) / sin(angle P) &= (P R) / sin(angle Q)\
  (Q R) / sin(38 degree) &= 21 / sin(89 degree)\
  Q R &= sin(38 degree) dot 21 / sin(89 degree)\
$

- $triangle X Y Z$. $angle Y = 57degree$, $X Z = 35$, $X Y = 24$. Find $angle Z$.

$
  sin(angle Z)/(X Y) &= sin(angle Y)/(X Z)\
  sin(angle Z)/24 &= sin(57degree)/35\
  sin(angle Z) &= 24 dot sin(57 degree) / 35\
  sin(angle Z) &approx 0.575\
  angle Z &approx 35degree
$

== Law of cosines

In a triangle where $a$, $b$ and $c$ are the sides opposite angles $A$, $B$ and $C$ respectively, the law of cosines states that:

$
  a^2 = b^2 + c^2 - 2b c cos(A)\
  b^2 = a^2 + c^2 - 2a c cos(B)\
  c^2 = a^2 + b^2 - 2a b cos(C)\
$

== Trigonometric functions of complementary angles

In a right triangle $A B C$ where $angle B = 90 degree$:

$
  sin A = (B C)/(A C), & #h(5em) & cos C = (B C)/(A C),\
  sin C = (A B)/(A C), & & cos A = (A B) / (A C) \
$

See, $sin A = cos C$ and $sin C = cos A$.

If $m angle A = theta$, since $A$ and $C$ are complementary, $m angle C = 90 degree - theta$. It follows that

$
  sin theta &= cos(90 degree - theta)\
  cos theta &= sin(90 degree - theta)\
$

Sine and cosine are *cofunctions*.

It also follows that:

$
  sec theta &= csc(90 degree - theta)\
  csc theta &= sec(90 degree - theta)\
  tan theta &= cot(90 degree - theta)\
$

== Addition formulas

$
  sin(x + h) &= sin(x)cos(h) + cos(x)sin(h)\
  cos(x+h) &= cos(x)cos(h) + sin(h)sin(x)\
$

== Horizontal stretches of graphs of trigonometric functions

If you multiply the argument of $sin(x)$ by some factor $B$, the resulting function $y = sin(B x)$ is a horizontal scaling of the graph by a factor $1/B$. It's a horizontal stretch if $1/B > 1$, and a horizontal shrink if $0 < 1/B < 1$.

The period becomes $1/B dot 2pi$.

The graph of tangent functions works the same way, except that you have to pay attention to the period being $pi$, not $2pi$.

= Limits

== Limits of logarithmic functions

For any real $n$:

$lim_(x -> n) log(x) = log(x)$

For infinity, remember the domain and apply transformations.

== Limits of reciprocal functions

Remember, reciprocal functions have the form $f(x) = 1/x$. The limit of a reciprocal function as $x$ approaches infinity is always zero.

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
    plot.plot(size: (6, 4), x-tick-step: 1, y-tick-step: 100, axis-style: "school-book", {
      plot.add(x => 1/x, domain: (-1, -0.1), style: (stroke: blue))
      plot.add(x => 1/x, domain: (0.1, 1), style: (stroke: blue))
    })
})

In general, for any non-constant polynomial $P(x)$, we have $display(lim_(x -> plus.minus infinity) 1/(P(x)) = 0)$

But for $lim(x -> 0)$, we have to consider the degree of the leading term of $P(x)$.

- Any function of the form $y = 1/(x^n)$ where $n$ is odd has the same shape as $y = 1/x$. There is no limit at $x = 0$ because left and right limit are not the same.
- Any function of the form $y = 1/(x^n)$ where $n$ is even has the same shape as $y = 1/x^2$. There is a limit, since the function will approach $infinity$ or $-infinity$.

= Differentiation

== Constant multiple rule for differentiation

$
  d/(d x) (k f(x)) = k d/(d x) (f(x))
$

== Sum rule for differentiation

$
  d/(d x) (u(x) + v(x)) = (d u)/(d x) + (d v)/(d x)
$

For example for $y = x^2 + x$:

$
  (d y)/(d x) &= d/(d x) (x^2 + x)\
  &= d/(d x) (x^2) + d/(d x) (x)\
  &= 2x + 1
$

== The power rule for differentiation

Given a monomial $f(x) = x^n$, where $n$ is a real number,

$f'(x) = n x^(n-1)$

#exercises

1. Calculate $(d y)/(d x)$ for $y = 2x - sqrt(x)$

$
(d y) / (d x)  &= d/(d x) (2x - sqrt(x)) \
 &= d/ (d x) 2x - d/ (d x) sqrt(x) \
 &= 2 - (d) / (d x) x^(1 slash 2)\
 &= 2 - 1/2 dot x^(-1 slash 2) \
 &= 2 - 1/(2 sqrt(x))
$

2. Find the derivative of $f(x) = 1/8 x^8$

$
  f'(x) &= 1/8 dot d/(d x) x^8 \
  &= 1/8 dot 8 x^7 \
  &= (8x^7)/8 \
  &= x^7
$

3. Derivative of $f(x) = 8sqrt(x)$

$
f'(x) &= d/(d x) 8 sqrt(x) \
&= d/(d x) 8 x^(1 slash 2) \
&= 8 dot d/(d x) (1 / 2 dot x^(-1 slash 2)) \
&= 8 dot 1/2 dot 1/(2 sqrt(x)) \
&= 4/sqrt(x)
$

== Differentiating exponential functions

When the base is $e$:

$
  d/(d x) e^x = e^x
$

It is the only function whose derivative is itself.

For an arbitrary base $a$:

$
  d/(d x) a^x = a^x ln(a)
$

#exercises

- Find the slope of the tangent to $f(x) = 5^x +2e^x - ln 2$ at $x = 1$.

$
  d/(d x) space 5^x + 2e^x - ln 2 &= 5^x ln 5 + 2e^x
$

Evaluating at $x=1$, we get $5 ln 5 + 2e$.

== Differentiating trigonometric functions

#align(center, table(
  columns: (5em, 5em),
  align: horizon,
  inset: 10pt,
  table.header($f(x)$, $f'(x)$),
  $sin x$, $cos x$,
  $cos x$, $-sin x$,
  $tan x$, $sec^2 x$,
))

#exercises

- Find $f'(x)$ for $f(x) = 4 cos x - 5x^2 + 8$.

$
  d/(d x) 4 cos x - 5x^2 + 8 &= -4 sin x - 10x
$

- Find $f'(x)$ for $f(x) = sin x + 2 cos x$.

$
  d/(d x) sin x + 2 cos x = cos x - 2 sin x
$

- Find the derivative of $y = sqrt(x) + tan x$.

$
  d/(d x) sqrt(x) + tan x &= 1/2 x^(-1/2) + sec^2 x\
  &= 1/(2sqrt(x)) + sec^2 x\
  &= (1 + 2 sqrt(x) sec^2 x)/(2sqrt(x))\
$

== Rate of change

Average rate of change on an interval $[a, a + h]$:

$
  (delta y)/(delta x) = (f(a+h) - f(a)) /h
$

The _instantaneous rate of change_ at a point $x = a$ is given by:

$
  f'(a) = lim_(h -> 0) (f(a+h) - f(a)) /h
$

#exercises

1. Given that $f(x) = x^2$, what is $f'(2)$ according to the definition?

$
  f'(2) &= lim_(h -> 0) ((2 + h)^2 - 2^2) /h \
  &= lim_(h -> 0) (4 + 4h + h^2 - 4) /h \
  &= lim_(h -> 0) (4h + h^2) /h \
  &= lim_(h -> 0) (4 + h) \
  &= 4
$

== Slope of a tangent line

The derivative of a function $f(x)$ at a point $x = a$ is the slope of the tangent line to the graph of $f(x)$ at that point.

So to find the slope of the tangent line at a point $(x_1, y_1)$, we evaluate $f'(x_1)$.

#exercises

- Find the slope of the tangent to $y = 5x^7 - 3x^5 + 10x^3$ at the point where $x = 1$.

First find $f'(x)$:

$
  f'(x) &= d/(d x) space (5x^7 - 3x^5 + 10x^3)\
  f'(x) &= 5 dot d/(d x) space x^7 - 3 dot d(d x) space x^5 + 10 dot d/(d x) space x^3\
  f'(x) &= 5 dot 7x^6 - 3 dot 5x^4 + 10 dot 3x^2\
  f'(x) &= 35x^6 - 15x^4 + 30x^2\
  f'(x) &= 5(7x^6 - 3x^4 + 6x^2)
$

- Find the slope of the tangent to $y = 4x^3 + 5/2 x^2 - 200x$ at $x = 4$.

$
  f'(x) &= d/(d x) space 4x^3 + 5/2 x^2 - 200x\
  &= 12x^2 + 5x - 200
$

The slope is $f'(4) = 12$

- Find the $x$-coordinate of the point on the curve $y = 2x^2 - 9x - 6$ whose tangent has a slope of $3$.

First let's get the derivative of the function:

$
  f'(x) &= d/(d x) space (2x^2 - 9x - 6)\
  &= 4x - 9
$

Now we set the derivative equal to the slope of the tangent line:

$
  4x - 9 &= 3\
  4x &= 12\
  x &= 3
$

== Finding the equation of a tangent line at a point

- Find the derivative.
- Evaluate the derivative at the given $x$. That is the slope.
- Replace the slope, the $x$ and $y$ coordinates we are interested in in the point-slope form of the equation: $y - y_1 = m(x - x_1)$.

#exercises

- Find the equation of the tangent to the curve $y = x^2 + 5x$ at the point $(-1, -4)$.

First find the derivative:

$
  y' = 2x + 5
$

Find the slope: $2 * -1 + 5 = 3$.

Now substitute the coordinates in the point-slope form:

$
  y + 4 &= 3(x + 1)\
  y &= 3x + 3 - 4\
  y &= 3x - 1
$

- Find the equation of the tangent line to the curve $y = 2/x^2 + 6x$ at $(-1,-4)$.

First the derivative: $y' = 2 dot -2x^(-1) + 6 = -4/x + 6$

Then the slope: $(-4)/(-1) + 6 = 10$.

Finally, substitute in the point-slope form:

$
  (y+4) &= 10(x + 1)\
  y &= 10x + 10 - 4\
  y &= 10x + 6
$

- Find where the tangent to the curve $y = 4sqrt(x) - 4x$ at $(1, 0)$ intersects the $y$-axis.

First, find the derivative: $y' = d/(d x) (4sqrt(x) - 4x) = 4 dot 1/2 dot x^(-frac(1, 2, style: "skewed") ) - 4 = 2/sqrt(x) -4$

Then, the slope: $2/sqrt(1) - 4 = 2 - 4 = -2$.

The equation:

$
  y - 0 &= -2(x - 1)\
  y &= -2x + 2
$

Then set $x = 0$:

$
  y &= -2x + 2\
  y &= 2
$

- Find where the tangent to the curve $y = 9/x - 2x$ at the point $(3, -3)$ intersects the $x$-axis.

First, find the derivative: $y' = 9 dot -1 dot x^(-2) - 2 = -9/(x^2) - 2$.

Then the slope: $-9/(3^2) - 2 = -9/9 - 2 = -1 - 2 = -3$.

Substitute in the point-slope equation:

$
  y + 3 &= -3(x - 3)\
  y &= -3x + 9 - 3\
  y &= -3x + 6
$

Then, set $y = 0$:

$
  0 &= -3x + 6\
  -6 &= -3x\
  x &= 2
$

== Finding the equation of a normal line at a point

$
  y - y_1 = m(x - x_1), #h(2em) m = - 1/(f'(x_1))
$

Like for any normal line, the slope is the negative reciprocal of the tangent line.

#exercises

- Find the slope of the normal to $y = 2/x^5 + 7x$ at (1, 9).

First take the derivative:

$
  #der($y$, $x$) &= 2 dot -5 dot x^(-6) + 7\
  &= -10/(x^6) + 7
$

Evaluating at $x = 1$, we have:

$
  m = -10/(1^6) + 7 = -10 + 7 = -3
$

The slope of the tangent is -3. So the slope of the normal is $1/3$.

- Find the slope of the normal to $y = x^2 + x$ at (1, 2).

Take the derivative:

$
  #der($y$, $x$) &= 2x + 1
$

Evaluate at $x = 1$:

$
  m = 2 dot 1 + 1 = 3
$

The slope of the tangent is 3, so the slope of the normal is $-1/3$.

- Find the slope of the normal to $y = 1/(4x^2) + x/2$ at $(-1/2, 3/4)$.

$
  #der($y$, $x$) &= 1/4 dot -2 dot x^(-3) + 1/2\
  &= - 1/2 dot x^(-3) + 1/2 \
  &= -1/(2x^3) + 1/2
$

Evaluating at $x = -1/2$:

$
  m &= -1/(2(-1/2)^3) + 1/2\
  &= -1/(-1/4) + 1/2 \
  &= -1 dot -4 + 1/2 \
  &= 4 + 1/2 \
  &= 9/2
$

That is the slope of the tangent. Therefore, the slope of the normal is $-2/9$.

- The equation of the normal to the curve $y = sqrt(x) - x^2$ at $(1, 0)$ is given by $x + p y = q$ where $p$ and $q$ are constants. Find $q - p$.

$
  #der($y$, $x$) &= 1/(2 sqrt(x)) - 2x
$

Now the slope of the tangent at $x = 1$:

$
  m = 1/(2 sqrt(1)) - 2 dot 1 = 1/2 - 2 = -3/2
$

So the slope of the normal is $2/3$.

Now substitute $x$, $y$ and the slope in point-slope form:

$
  y - 0 &= 2/3(x - 1)\
  3/2 y &= x - 1\
  x - 3/2 y &= 1
$

So $p = -3/2$, $q = 1$ and $q - p = 5/2$.

- The equation of the normal to $y = 2x^3$ at $(2, 16)$ is given by $x + p y = q$ where $p$ and $q$ are constants. Find $q - p$.

$
  #der($y$, $x$) &= 6x^2
$

Slope of the tangent at $(2, 16)$:

$
  m = 6 dot 2^2 = 6 dot 4 = 24
$

The slope of the normal is $-1/24$.

Now substitute in point slope form:

$
  y - 16 &= -1/24(x - 2)\
  (y - 16) dot -24  &= x - 2\
  -24y + 384 &= x - 2\
  384 + 2 &= x
  x + 24y &= 386\
$

So $q - p = 386 - 24 = 362$

- Equation of the normal to $y = 4/x$ at $(1, 4)$.

$
  #der($y$, $x$) = 4 dot -1 dot x^(-2) = -4/x^2
$

Slope of the tangent at $x=1$:

$
  m = -4/1^2 = -4
$

$therefore$ the slope of the normal is $1/4$.

Substituting in the point-slope equation:

$
  y - 4 &= 1/4 dot (x - 1)\
  (y - 4) dot 4 &= x - 1\
  4y - 16 &= x - 1\
  x - 4y &= -15
$

- Find the $y$ intercept of the normal to $f(x) = 3x^2 -4x + 1$ at $(2, 5)$.

$
  f'(x) &= 6x - 4
$

So the slope of the tangent at $x = 2$ is:

$
  m = 6 dot 2 - 4 = 8
$

$therefore$ the slope of the normal is $-1/8$.

Equation:

$
  y - 5 &= -1/8(x - 2)\
  -8y + 40 &= x - 2\
  -8y &= x - 42\
  y &= -x/8 + 21/4\
$

To find the $y$ intercept, we set $x = 0$ and get $(0, 21/4)$.

- Find the $y$ intercept of the normal to $y = 2/x^2 + 1/2$ at $(2, 1)$.

$
  #der($y$, $x$) &= 2 dot -2 dot x^(-3)\
 &= -4/x^3
$

Slope of the tangent at $x = 2$:

$
  m = -4/(2^3) = -1/2
$

$therefore$ slope of the normal is $2$.

Equation:

$
  y - 1 &= 2(x - 2)\
  y &= 8x - 4 + 1\
  y &= 8x - 3
$

Setting $x = 0$, we get $y &= -15$, so $(0, -15)$ is the $y$ intercept.

== The second derivative

It's the derivative of the derivative, denoted $f''(x)$:

$
  f''(x) = (f'(x))'
$

Or in Leibniz notation:

$
  f''(x) = #sndder("", $x$) = #der($$, $x$) (#der($f$, $x$))
$

The third derivative and the following work the same way. They are denoted:

$
  f^((n))(x) = #dern($n$, $$, $x$) f(x)
$

The parenthesis on the superscript is intentional, to distinguish the $n$-th derivative from the $n$-th power of $f$.

#exercises

- Find $f''(x)$ for $f(x) = 2x^3 + 1/x$.

First derivative: $6x^2 - 1/x^2$.

Second derivative: $12x  + 2/(x^(3))$

- Find $f''(x)$ for $f(x) = 14x - 2/x + 4sqrt(x)$.

First derivative: $14 +2x^(-2) + 2/(sqrt(x))$

Second derivative: $-4x^(-3) - 1/(sqrt(x^3))$

- Find $f''(x)$ for $f(x) = 4/x - 3 root(3, x)$.

First derivative: $-4x^(-2) - x^(-2 slash 3)$.

Second derivative: $8x^(-3) + 2/3 x^(-5 slash 3)$

- Calculate $(d^2 y)/(d x^2)$ for $y = 4/sqrt(x) + 2 sin x$.

First derivative: $4 dot -1/2 dot x^(-3/2) + 2 cos x = -2x^(-3/2) + 2 cos x$.

Second derivative: $-2 dot -3/2 dot x^(-5/2) - 2 sin x = 3x^(-5/2) - 2 sin x $

- Calculate #sndder("y", "x") for $y = -3sin x + 5x^3 - 19$.

$
  #der("y", "x") (-3sin x + 5x^3 - 19) &= -3cos x + 15x^2\
  #sndder("y", "x") &= #der("", "x") (-3cos x + 15x^2)\
  &= 3sin x + 30x
$

- Find $f^((4))(-2)$ for $f(x) = 3x^4 - 2x^2 - 4/x$.

$
  #der($$, $x$) &= 12x^3 - 4x + 4x^(-2)\
  #dern(2, $$, $x$) &= 36x^2 - 4 - 8x^(-3)\
  #dern(3, $$, $x$) &= 72x + 24x^(-4)\
  #dern(4, $$, $x$) &= -96x^(-5) + 72\
$

Evaluating at $x = -2$, we get 75.

- Given $f(x) = (5 - x^4)/(6x^2)$, find $f'''(x)$.

$
  f(x) &= (5-x^4)/(6x^2)\
  &= 5/(6x^2) - x^4/(6x^2)\
  &= 5/6 x^(-2) - 1/6 x^2\
  #der($f$, $x$) &= -5/3 x^(-3) - 1/3 x\
  #dern(2, $f$, $x$) &= 5x^(-4) - 1/3\
  #dern(3, $f$, $x$) &= -20x^(-5)\
$

== The product rule

$
  (u(x) dot v(x))' = u'(x) dot v(x) + u(x) dot v'(x)
$

Or in Leibniz notation:

$
  #der($y$, $x$) = #der($u$, $x$) dot v + u dot #der($v$, $x$)
$

Multiplying out, then deriving also works, but is sometimes harder or not possible.

#exercises

- Differentiate $x tan x$.

$
  #der("", $x$) x tan x &= 1 dot tan x + x dot sec^2 x\
  &= tan x + x sec^2 x\
$

- Differentiate $sqrt(x) sin x$.

$
  #der("", $x$) sqrt(x) sin x &= 1/2 dot 1/sqrt(x) dot sin x + sqrt(x) cos x\
  &= (sin x)/(2sqrt(x)) + sqrt(x) cos x\
$

- Differentiate $f(x) = x^2 e^x$.

$
  #der("", $x$) x^2 e^x &= 2x e^x + x^2 e^x\
  &= x e^x (x + 2)\
$

- Differentiate $f(x) = (x^2 + 3)ln x$.

$
  #der("", $x$) (x^2 + 3)ln x &= 2x ln x + (x^2 + 3)1/x\
  &= 2x ln x + x + 3/x\
$

- If a curve $cal(C)$ is given by $y = e^x cos x$, calculate the slope of the tangent line to the curve at the point where $x = 0$.

First calculate the derivative:

$
  #der($y$, $x$) &= e^x dot (-sin x) + e^x dot cos x\
  &= e^x (cos x - sin x)\
$

To get the slope, we evaluate this at $x = 0$:

$
  e^0 (cos 0 - sin 0) = 1(1 - 0) = 1
$

- If a curve $cal(C)$ is given by $y = (x + 2) cos x$, find the slope of the tangent at $x = pi/2$.

First find the derivative:

$
  #der($y$, $x$) &= 1 dot cos x + (x + 2) dot (-sin x)\
  &= cos x + -x sin x - 2 sin x
$

Now evaluate this at $x = pi/2$:

$
  &space space cos pi/2 - pi/2 sin pi/2 - 2 sin pi/2\
  &= 0 - pi / 2 dot 1 - 2 dot 1\
  &= -pi / 2 - 2
$

= Integration

== The antiderivative

The antiderivative is the opposite of the derivative.

Infinitely many antiderivatives map to the same function.

For example, since the derivative of $x²$ is $2x$, we have $x^2$ as an antiderivative of $2x$. But $x^2 + 2$, $x^2 + 1$, etc. are also antiderivatives of $2x$.

In general, the antiderivatives of $2x$ follow the pattern $x^2 + C$ where $C$ is a constant.

We can also formulate that using the $integral$ symbol for integration:

$
  integral 2x space d x &= x^2 + C
$

Where $C$ is called the *constant of integration*.

These integrals are *indefinite integrals*.

The function being integrated (here $2x$) is called the *integrand*.

== The power rule for integration

$
  integral x^n space d x = (x^(n+1))/(n+1) + C
$

#exercises

1. Antiderivative of $display(1/x^4)$?

$
  integral 1/x^4 d x &= integral x^(-4) d x\
                     &= (x^(-4 + 1))/(-4 + 1) + C\
                     &= x^(-3)/(-3) + C\
                     &= - 1/3x^(3) + C
$

2. Antiderivative of $x^(5/8)$

$
  integral x^(5/8) d x &= x^(5/8 + 1)/(5/8 + 1) + C\
                       &= x^(13/8)/(13/8) + C\
                       &= (8x^(13/8))/13 + C
$

3. Antiderivative of $root(5, x^7)$

$
  integral x^(7/5) d x &= x^(7 slash 5 + 1)/(7 slash 5 + 1) + C\
  &= x^(12 slash 5)/(12 slash 5)\
  &= (5x^(12 slash 5))/12
$

4. Calculate $display(integral(z/5 space d z))$

$
  integral(z/5 d z) &= 1/5 integral z space d z\
                    &= 1/5 dot ((z^2)/2 + C) \
                    &= (z^2)/10 + C
$

== The sum rule for indefinite integrals

To take the integral of a sum, you can take the sum of the integrals of each term:

$
  integral (f(x) plus.minus g(x)) d x = integral f(x) space d x plus.minus integral g(x) space d x
$

The sum rule can be combined with the constant factor rule to integrate sums of constant multiples of functions:

$
  integral (k_1 f(x) plus k_2 g(x)) space d x = k_1 integral f(x) space d x plus k_2 integral g(x) space d x
$

#exercises

- Calculate $integral sqrt(x)(2+x) space d x$

$
  integral sqrt(x)(2+x) space d x &= integral 2sqrt(x) + x dot sqrt(x) space d x \
  &= integral 2 sqrt(x) space d x + integral x dot sqrt(x) space d x \
  &= 2 integral sqrt(x) space d x + integral x^(3 slash 2) space d x\
  &= 2 dot x^(3 slash 2)/(3/2) + x^(5 slash 2)/(5/2) + C\
  &= (4x^(3 slash 2))/3 + (2x^(5 slash 2))/5 + C\
  &= (4 sqrt(x^3))/3 + (2sqrt(x^5))/5 + C
$

- Calculate $display(integral (2 + x^4)/x^2 space d x)$

$
  integral (2 + x^4)/x^2 space d x &= integral 2/x^2 space d x + integral x^4/x^2 space d x\
  &= integral 2 dot x^(-2) space d x + integral x^2 space d x\
  &= 2 dot integral x^(-2) space d x + (x^3)/3 + C\
  &= 2 dot -x^(-1) + x^3/3 + C\
$

- Calculate:

$
  integral (3 - x^2)^2 space d x &= integral (9 - 6x^2 + x^4) space d x\
  &= 9 integral 1 space d x - 6 integral x^2 space d x + integral x^4 space d x\
  &= 9x - 6(x^3)/3 + (x^5)/5 + C\
  &= x^5/5 - 2x^3 + 9x + C
$

- Find the antiderivative of $z^3 + 2z - 1$

$
  integral z^3 + 2z - 1 space d z &= integral z^3 space d z + integral 2z space d z - integral 1 space d z\
  &= z^4/4 + 2 z^2/2 - z + C\
  &= z^4/4 + z^2 - z + C
$

== Integrating reciprocal functions

Since $d/(d x) (ln x) = 1/x$ for $x > 0$, we can generalize to $x ≠ 0$ by using an absolute value:

$
  d/(d x) (ln |x|) = 1/x
$

Why, in the negative case? We have two functions, chained. $|x| = -x$ if x is negative. So we have $ln |x| = ln (-x)$.
By the chain rule, $(d y)/(d x) = (d y)/(d u) dot (d u)/(d x)$. Here $(d u) dot (d x) (-x) = -1$ (constant factor rule), and $(d y)/(d u) ln(u) = 1/u$. So we substitute $x$ back in, and we get $(d y)/(d x) = 1/(-x) dot -1 = 1/x$

So the integral is:

$
  integral 1/x space d x = ln |x| + C
$

== Integrating exponential functions

Since $d/(d x) e^x = e^x$, and integration is the inverse of differentiation:

$
  integral e^x space d x = e^x + C
$

With a general base, the integral becomes:

$
  integral a^x space d x = (a^x)/ln(a) + C
$

#exercises

- Calculate $integral (1/8)^x d x$.

$
  integral (1/8)^x d x &= (frac(1, 8, style: "skewed")^x)/ln(frac(1, 8, style: "skewed")) + C \
$

Using the laws of logarithms:

$
  ln(frac(1, 8, style: "skewed")) &= ln(1) - ln(8) \
  &= 0 - ln 8 \
  &= -ln 8
$

So the answer is:

$
  -(frac(1, 8, style: "vertical"))^x / (ln 8) + C
$

== Chain Rule for Differentiation

The derivative of $f(g(x))$ is:

$
  (d f)/(d x) = (d f)/(d g) dot (d g)/(d x)
$

For example, to differentiate $(1 + 2x)^3$, decompose it into: $g(x) = 1 + 2x$ and $f(g) = g^3$.

Then it follows:

$
  (d f)/(d x) (1 + 2x)^3 &= (d f)/(d g) g^3 dot (d g)/(d x) (1 + 2x)\
  &= 3g^2 dot 2\
  &= 6g^2
$

We now substitute $g(x) = 1 + 2x$ and get:

$
  (d f)/(d x) = 6 dot (1+2x)^2 = 4x^2 + 24x + 6
$

#exercises

- Differentiate $f(x) = (2x^3 - x)^3$:

Decomposing $f$ into $f compose g$, we have $g(x) = 2x^3 - x$ and $f(x) = g^3$.

First take $(d g)/(d x) = 6x^2 - 1$.

Then $(d f)/(d g) = 3g^2$.

Substituting $g$: $(d f)/(d x) = 3(2x^3 - x)^2 dot (6x^2 - 1)$.

- Given $f(x) = (7 - 3x)^2$, find the equation of the tangent at point $(3, 4)$.

We can decompose $f(x)$ into $f(x) = g^2$ and $g(x) = 7-3x$.

We differentiate to $f'(x) = 2g$ and $g'(x) = -3$.

Using the chain rule, we have $(d f)/(d x) = 2(7-3x) dot -3 = 18x -42$.

To find the slope of the tangent, we substitute 3 for $x$: $18*3 - 42 = 12$.

With the slope and the point, we can use the point-slope form to find the equation:

$
  y - 4 &= 12(x - 3)\
  y &= 12x -32
$

- Given $f(x) = (-2x + 9)^3$, find the slope at $(4,1)$.

First decompose: $f(x) = g^3, space g(x) = -2x + 9$.

Then differentiate:

$
  f'(g) = 3g^2\
  g'(x) = -2\
$

Using the chain rule, we have:

$
  (d f)/(d x) &= 3g^2 dot -2\
  &= -6(-2x + 9)^2
$

Now evaluating at our point, we have a slope of:

$
  -6 dot (-2 dot 4 + 9)^2 = -6
$

In the point slope form:

$
  y - 1 &= -6(x - 4)\
  y &= -6x + 25
$

- Find $(d f)/(d x)$ if $f(x) = (3 - 5x)^4$.

First decompose, then differentiate.

$
  g(x) &= 3 - 5x\
  f(g) &= g^4
  \
  \
  g'(x) &= -5\
  f'(x) &= 4g^3
$

Then use the chain rule:

$
  (d f)/(d x) &= 4g^3 dot -5\
  &= -20(3 - 5x)^3
$

- Given $f(x) = (2x + 1)^5$, find the equation of the tangent at $(-1, -1)$.

Decompose and differentiate:

$
  g(x) &= 2x + 1
  f(g) &= g^5\
  \
  g'(x) &= 2\
  f'(x) &= 5g^4
$

Chain rule:

$
  (d f)/(d x) = 5g^4 dot 2 = 10(2x + 1)^2
$

At $x = -1$, the slope is $10(-2 + 1)^2 = 10(-1)^2 = 10$.

Now point slope form:

$
  y + 1 &= 10(x + 1)\
  y &= 10x + 10 - 1\
  y &= 10x + 9
$

- Find $(d y)/(d x)$ for $y = -1/sqrt(x^2 - 6x)$.

First decompose and differentiate:

$
  g(x) &= x^2 - 6x\
  f(g) &= -1 dot g^(-1 slash 2)\
  \
  g'(x) &= 2x - 6\
  f'(g) &= 1/2 dot g^(-3 slash 2)
$

Using the chain rule:

$
  (d f)/(d x) &= (g^(-3 slash 2))/2 dot (2x - 6)\
              &= (2x - 6)/(2 sqrt((x^2 - 6x)^3))\
              &= (x - 3)/sqrt((x^2 - 6x)^3)
$

- Find $(d y)/(d x)$ for $y = sqrt(x^2 - 4x)$.

First decompose and differentiate:

$
  g(x) &= x^2 - 4x\
  f(g) &= sqrt(g)\
  \
  g'(x) &= 2x - 4\
  f'(g) &= 1/(2 sqrt(g))
$

Then use the chain rule:

$
  (d y)/(d x) &= 1/(2 sqrt(x^2 - 4x)) dot (2x - 4)\
  &= (x - 2)/sqrt(x^2 - 4x)
$

- Given that $y = sqrt(3 - 6x)$, find $(d y)/(d x)$.

First, decompose and differentiate:

$
  g(x) &= 3 - 6x \
  f(g) &= sqrt(g)\
  \
  g'(x) &= -6\
  f'(g) &= 1/(2 sqrt(g))\
$

Then use the chain rule:

$
  (d f)/(d x) &= 1/(2 sqrt(3- 6x)) dot -6\
  &= -3/sqrt(3- 6x)
$

- Find the slope of the tangent at $x = -1$ for $y = sqrt(3x + 7)$.

Decompose and differentiate:

$
  g(x) &= 3x + 7\
  f(g) &= sqrt(g)\
  \
  g'(x) &= 3\
  f'(g) &= 1/(2sqrt(g))\
$

Then chain rule:

$
  (d f)/(d x) &= 1/(2 sqrt(3x + 7)) dot 3\
  &= 3/(2 sqrt(3x + 7))
$

Now plug in $x = -1$:

$
  3/(2 sqrt(-3 + 7)) &= 3/4
$

- Find the slope of the tangent to $y = sqrt(x - 3) + 3x^3$ at the point where $x = 4$.

To find the slope of the tangent at a point, we need to evaluate the derivative at that point.

First, use the sum rule:

$
  d/(d y) &= (d x)/(d y) sqrt(x - 3) + (d x)/(d y) 3x^3 \
  &= ((d x)/(d y) sqrt(x - 3)) + 9x^2 \
$

Then the chain rule on the first term. Decompose and differentiate:

$
  g(x) &= x-3\
  f(g) &= sqrt(g)\
  \
  g'(x) &= 1\
  f'(x) &= 1/(2 sqrt(g))\
$

Now chain rule:

$
  (d x)/(d y) &= 1/(2 sqrt(x - 3)) dot 1 + 9x^2\
  &= 1/(2 sqrt(x-3)) + 9x^2
$

Now evaluate at $x = 4$:

$
  1/(2 sqrt(1)) + 9 dot 16 = 289/2
$

- Given $f(x) = (x - 3x^4)^6$, find $f'(x)$:

First, decompose and differentiate:

$
  g(x) &= x - 3x^4\
  f(g) &= g^6\
  \
  g'(x) &= 1 - 12x^3\
  f'(x) &= 6g^5\
$

Then chain rule:

$
  f'(x) &= 6g^5 dot (1 - 12x^3)\
  &= 6(x - 3x^4)^5 dot (1 - 12x^3)\
$

- Find $f'(x)$ for $f(x) = 3/sqrt(2x + 1)$.

First decompose and differentiate:

$
  g(x) &= 2x + 1\
  f(g) &= 3 dot g^(-1 slash 2)\
  \
  g'(x) &= 2\
  f'(g) &= -3/(2 sqrt(g^3))
$

Now chain rule:

$
  f'(x) &= -3/(2 sqrt((2x + 1)^3)) dot 2\
  &= -3/sqrt((2x + 1)^3)
$

- Calculate $f'(x)$ if $f(x) = 5e^(4x)$

$
  g(x) &= 4x\
  f(g) &= 5e^(g)\
  g'(x) &= 4\
  f'(g) &= 5e^g\
  therefore\
  f'(x) &= 20e^(4x)
$

- Find the equation of the tangent to $y = 5e^(4x)$ at $x = 1/4$.

$
  u &= 4x\
  f &= 5e^(u)\
  #der($u$, $x$) &= 4\
  #der($f$, $u$) &= 5e^u\
  #der($f$, "x") &= 5e^(u) dot 4\
  &= 20e^(4x)
$

Now evaluate it at $x = 1/4$ to find the slope:

$
  m = 20e^1 &= 20e
$

This is the slope. We can evaluate the equation at $x = 1/4$ to get $y$: it's $5e$. Now we find the equation of the tangent, given the slope and one point:

$
  y - 5e &= 20e(x - 1/4)\
  y &= 20e x - 5e + 4e \
  y &= 20 e x
$

- Find the slope of the tangent to $y = -7e^(2x) + 3x$ at $x = 1$.

Let's take the derivative of the first term:

$
  u &= 2x\
  f &= -7e^u\
  #der($u$, $x$) &= 2\
  #der($f$, $u$) &= -7e^u\
  #der($f$, $x$) &= (-7e^(2x)) dot 2\
  &= -14e^(2x)
$

The slope at $x = 1$ is:

$
  m = -14e^2 + 3
$

- Find the equation of the tangent to $y = e^(2x - 1)$ at $x=1$.

$
  u &= 2x - 1\
  f &= e^u\
  #der($u$, $x$) &= 2\
  #der($f$, $u$) &= e^u\
  #der($f$,$x$) &= 2e^(2x - 1)\
$

Evaluating this at $x = 1$:

$
  2e^1 &= 2e
$

That is the slope.

And $y = e^(2 - 1) = e$.

Now the equation:

$
  y - e &= 2e(x - 1)\
  y &= 2e x -e
$

- Find the slope of the tangent to the curve $y = e^(x^5)$ at the point where $x = -1$.

$
  u &= x^5\
  f &= e^u\
  #der($u$, $x$) &= 5x^4\
  #der($f$, $u$) &= e^u\
  #der($f$, $x$) &= e^(x^5) dot 5x^4\
  &= 5x^4e^(x^5)
$

To find the slope, we evaluate the derivative at $x = -1$:

$
  m &= 5 dot (-1)^4 dot e^((-1)^(5))\
  &= 5e^(-1)\
  &= 5/e
$

- Find $f'(x)$ for $f(x) = e^(3-2x^5)$.

$
  #der($u$, $x$) &= -10x^4\
  #der($f$, $u$) &= e^u\
  #der($f$, $x$) &= e^(3-2x^5) dot -10x^4\
$

- Find $f'(x)$ for $f(x) = e^(2x^6 - 4)$.

$
  #der($u$, $x$) &= 12x^5\
  #der($f$, $u$) &= e^u\
  #der($f$, $x$) &= e^(2x^6 - 4) dot 12x^5\
$

- Given $y = 3 dot 4^(x^2-1)$, find $#der($y$, $x$)$.

$
  #der($u$, $x$) &= 2x\
  #der($y$, $u$) &= 3 dot 4^u dot ln 4\
  #der($y$, $x$) &= 6x 4^(x^2 -1) ln 4\
$

- If $f(x) = 4^(7x)$, find $f'(x)$.

$
  #der($u$, $x$) &= 7\
  #der($f$, $u$) &= 4^u ln 4\
  #der($f$, $x$) &= 7 dot 4^(7x) ln 4\
$

- Find the equation of the tangent to $y = 5^(x^2- 1)$ at $x = 1$.

$
  #der($u$, $x$) &= 2x\
  #der($y$, $u$) &= 5^u dot ln 5\
  #der($y$, $x$) &= 2x dot ln 5 dot 5^(x^2 - 1)\
$

The slope of the tangent is, evaluating at $x = 1$:

$
  2 dot ln 5 dot 5^(1^2 - 1) &= 2 dot 5^0 dot ln 5\
  &= 2 ln 5
$

And $y = 5^0 = 1$.

Now put the pieces together:

$
  y - 1 &= 2 ln 5 (x -1)\
  y &= 2x ln 5 - 2 ln 5 + 1
$

- Find the equation of the tangent to the curve $y = 3^(2 - x)$ at $x = 1$.

$
  #der($u$,$x$) &= -1\
  #der($y$, $u$) &= 3^u ln 3\
  #der($y$, $x$) &= 3^(x -2) ln 3 dot -1\
  &= -3^(2-x) ln 3\
$

Evaluating at $x = 1$:

$
  -3^(2-1) ln 3 = -3(ln 3)
$

Also, at $x = 1$, we have $y = 3^(2-1) = 3$.

So the equation of the tangent is:

$
  y - 3 &= - 3ln 3 (x - 1)\
  y &= -3 x ln 3 + 3 ln 3  +3
$

- Find the slope of the tangent to $y = 2^(9 - x^3)$ at $x = 2$.

$
  #der($u$, $x$) &= -3x^2\
  #der($y$, $u$) &= 2^u ln 2\
  #der($y$, $x$) &= 2^(9 - x^3) ln 2 dot -3 x^2\
$

Evaluating at $x = 2$:

$
  m &= 2^(9 - 2^3) ln 2 dot -3 dot 2^2\
  &= 2^(9 - 8) ln 2 dot -3 dot 4\
  &= -24 ln 2
$

- Find the derivative of $-2e^(4x)$

$
  #der($u$, $x$) &= 4\
  #der($y$, $u$) &= -2e^u\
  #der($y$, $x$) &= -2e^(4x) dot 4\
  &= -8e^(4x)
$

== The constant factor rule for indefinite integrals

To take the integral of a power function with a constant factor, like $5x^2$, we can take the constant factor out of the integral:

$
  integral 5x^2 d x = 5 dot integral x^2 d x
$

This is the *constant factor rule*. In general:

$
  integral k space f(x) space d x = k integral f(x) space d x
$

Where $k$ is a *constant*. It does not work if $k$ is a variable.

#exercises

1. Calculate $integral 1/(2y^5) d y$

$
  integral 1/(2y^5) d y &= 1/2 integral y^(-5) \
  &= 1/2 dot y^(-5+1)/(-5+1) + C\
  &= 1/2 dot y^(-4)/(-4) + C\
  &= 1/2 dot -1/(4y^4) + C\
  &= -1/(8y^4) + C
$

2. Calculate $integral 1/(3x^6) d x$

$
  integral 1/(3x^6) d x &= 1/3 dot integral x^(-6)\
  &= 1/3 dot x^(-5)/(-5) + C\
  &= 1/3 dot - 1/(5x^5) + C\
  &= -1/(15x^5) + C
$

3. Calculate $integral pi/2 d z$

$
  integral pi/2 d z &= pi/2 integral z^0 d z\
  &= pi/2 dot z + C\
  &= (pi z)/2 + C
$

= Vectors

== Magnitude

For a vector $accent(A B, arrow) = bold(a)$, we denote its magnitude, a.k.a. modulus or length, as $|accent(A B, arrow)|$ or $|bold(a)|$.

When adding two vectors *that are at a right angle*, through the pythagorean identity, we can deduce:

$|bold(a) + bold(b)|^2 = |bold(a)|^2 + |bold(b)|^2$

When the angle is not a right angle, we can use the law of cosines instead:

$
  |bold(a) + bold(b)|^2 = |bold(a)^2| + |bold(b)^2| - 2|bold(a)||bold(b)|cos theta
$

#exercises

- In rectangle $A B C D$, $A B = 5$ and $B C = sqrt(39)$. Find $|accent(B D, arrow)|$.

Since all the angles of the rectangle are right angles, and $|accent(B D, arrow)| = |accent(A C, arrow)|$, we have:

$
  |accent(B D, arrow)|^2 &= |accent(A B, arrow)|^2 + |accent(B C, arrow)^2|\
  &= 25 + 39\
  &= 64\
  |accent(B D, arrow)| &= sqrt(64)\
  &= 8
$

== Determining whether two vectors are parallel

In general, two vectors $bold(a)$ and $bold(b)$ are *parallel*, a.k.a. *colinear*, if there is a number $lambda$ such that $a = lambda b$.

That is also denoted $bold(a) || bold(b)$.

Note that for any vector $bold(a)$, $0 dot bold(a)$ is equal to the zero vector, so by definition, the zero vector is parellel to all other vectors.

== Unit vectors

A *unit vector* is a vector whose magnitude is one.

For any vector $bold(a)$, you can divide it by its magnitude to get a unit vector:

$
  bold(u) = bold(a)/bold(|a|)
$

== Linear combinations

A linear combination of two vectors is a sum of multiples of the two vectors: $lambda_1 bold(a) + lambda_2 bold(b)$

If $bold(a)$ and $bold(b)$ are #underline([*not*]) parallel, their linear combinations are all unique, that is to say:

$
  forall space lambda_1, lambda_2, lambda_3, lambda_4, space
  lambda_1 bold(a) + lambda_2 bold(b) = lambda_3 bold(a) + lambda_4 bold(b)
  <=> (lambda_1 = lambda_3 and lambda_2 = lambda_4)
$

#exercises

- Given $bold(a) cancel(parallel) bold(b)$, find $lambda$ and $mu$ given $2bold(a) + 9bold(b) = (lambda - mu)bold(a) + (2lambda + 3mu)bold(b)$.

Since the vectors are not colinear, the coefficients must be equal, so we have:

$
  cases(2 = lambda - mu, 9 = 2lambda + 3mu)
$

Multiplying the first equation by 2, then subtracting, we get:

$
  &cases(4 = 2lambda - 2mu, 9 = 2lambda + 3mu)\
  &4-9 = -2mu - 3mu\
  &-5 = -5mu\
  &mu = 1
$

Now substitute $mu = 1$:
$ 2 &= lambda - 1\ lambda &= 3 $

== Component vectors

For a point $A$ on the cartesian plane, with $O$ as the origin.

The vector $accent(O A, arrow) = bold(a)$ is called the *position vector* of $A$. A position vector always has its tail at origin.

There are two special unit vectors on the cartesian plane: $bold(i)$ and $bold(j)$, with $|bold(i)| = |bold(j)| = 1$. On the plane, $bold(i)$ is a unit vector along the positive direction of the $x$-axis. $bold(j)$ is the same along the positive direction of the $y$-axis.

In general, a point $A$ with coordinates $(a_1, a_2)$ has a position vector:

$
  accent(O A, arrow) = bold(a) = a_1 bold(i) + a_2 bold(j)
$

Alternatively, the position vector can be denoted using square bracket notation:

#let posvec(i, j) = $chevron #i, #j chevron.r$

$
  2 bold(i) + 3 bold(j) = #posvec(2, 3)
$

With this notation, $bold(i) = posvec(1, 0)$ and $bold(j) = posvec(0, 1)$.

There is also column vector notation:

#set math.vec(delim: "[")

$
  2 bold(i) + 3 bold(j) = vec(2, 3)
$

So $bold(i) = vec( 1, 0)$ and $bold(j) = vec( 0, 1)$

#exercises

- Let $A(3, 4)$ and $B(2, -2)$. Find $accent(B A, arrow)$ in terms of $bold(i)$ and $bold(j)$.

$
  accent(B A, arrow) &= -accent(O B, arrow) + accent(O A, arrow)\
  &= -2 bold(i) + 2bold(j) + 3bold(i) + 4bold(j)\
  &= bold(i) + 6bold(j)
$

- Let $A(2, 4)$ and $B(-5, -1)$. Find $accent(B A, arrow)$.

$
  accent(B A, arrow) &= - accent(O B, arrow) + accent(O A, arrow)\
  &= 5bold(i) + 1bold(j) + 2bold(i) + 4bold(j)\
  &= 7bold(i) + 5bold(j)
$
