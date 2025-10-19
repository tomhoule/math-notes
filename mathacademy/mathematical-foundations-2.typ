#import "@preview/cetz:0.3.2"
#import "@preview/cetz-plot:0.1.1"

#set text(font: "Noto Serif")
#show math.equation: set text(font: "Noto Sans Math")

#align(right)[
  #text(size: 10em)[
    #smallcaps[
      Notes
    ]
  ]
]


#v(14em)

#outline(depth: 1)

#pagebreak()

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

1.

$
  &(1 + sqrt(8)) / (sqrt(9) - sqrt(2))\
  &= ((1+sqrt(8))(sqrt(9)+sqrt(2))) / 7\
  &= (sqrt(9) + 3sqrt(8) + sqrt(2) + sqrt(16))/ 7\
  &= (3 + 6sqrt(2) + sqrt(2) + 4)/7\
  &= (7 + 7sqrt(2))/7\
  &= 1 + sqrt(2)
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

=== Exercises

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

To get the horizontal asymptotes, you first take the *dominant term*. It's the leading term of the polynomial in the denominator, _without the coefficient_. Here $x^m$.

Then, you divide every term in both numerator and denominator, and evaluate at $x -> infinity$.

== Radical functions

=== Domain

All the values where the radicand $> 0$ for even degrees, $(- infinity, infinity)$ for odd degrees.

==== Exercises

1. Domain of $d(x) = root(7, -2x + 1/2) + 1$?

$
  -2x + 1/2 >
$

=== Roots of rational functions

First factor numerator and denominator, then cancel out common factors, then set the numerator to zero and solve.

==== Exercises

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


= Graphing

== Graphing cubic curves with one distinct real root

If we are given one root of a cubic equation, we can use synthetic division to factor it.

=== Example

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

$therefore x = 3$ is a root

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

= Trigonometry

== Unit circle

=== Reference angle

The _reference angle_ of an angle is the smallest angle between the terminal side of the angle and the x-axis. It is always a positive angle less than or equal to 90 degrees.

=== Pythagorean identity in the first quadrant

In the first quadrant, any point $(x, y)$ forms a right triangle with the origin, where $x$ and $y$ are the lengths of the legs and $sqrt(x^2 + y^2)$ is the length of the hypotenuse. Since in the unit circle, the length of the hypotenuse is 1, by definition, the Pythagorean identity states that $x^2 + y^2 = 1$.

==== Exercises

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

=== Pythagorean trigonometric identity

In the unit circle, since for any central angle $x = cos theta$ and $y = sin theta$.

That means

$
  x^2 + y^2 &= 1 \
  cos^2(theta) + sin^2(theta) &= 1
$

This is the *Pythagorean trigonometric identity*. It works in all quadrants.

==== Exercises

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

= Calculus

== Limits

=== Limits of logarithmic functions

For any real $n$:

$lim_(x -> n) log(x) = log(x)$

For infinity, remember the domain and apply transformations.

=== Limits of reciprocal functions

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

== Differentiation

== Constant multiple rule

$
  d/(d x) (k f(x)) = k d/(d x) (f(x))
$

== Sum rule

$
  d/(d x) (u(x) + v(x)) = (d u)/(d x) + (d v)/(d x)
$

For example for $y = x^2 + x$:

$
  (d y)/(d x) &= d/(d x) (x^2 + x)\
  &= d/(d x) (x^2) + d/(d x) (x)\
  &= 2x + 1
$

== The power rule

Given a monomial $f(x) = x^n$, where $n$ is a real number,

$f'(x) = n x^(n-1)$

=== Exercises

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

=== Rate of change

Average rate of change on an internal $[a, a + h]$:

$
  (delta y)/(delta x) = (f(a+h) - f(a)) /h
$

The _instantaneous rate of change_ at a point $x = a$ is given by:

$
  f'(a) = lim_(h -> 0) (f(a+h) - f(a)) /h
$

==== Exercises

1. Given that $f(x) = x^2$, what is $f'(2)$ according to the definition?

$
  f'(2) &= lim_(h -> 0) ((2 + h)^2 - 2^2) /h \
  &= lim_(h -> 0) (4 + 4h + h^2 - 4) /h \
  &= lim_(h -> 0) (4h + h^2) /h \
  &= lim_(h -> 0) (4 + h) \
  &= 4
$

== Integration

=== The antiderivative

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

=== The power rule for integration

$
  integral x^n space d x = (x^(n+1))/(n+1) + C
$

==== Exercises

1. Antiderivative of $display(1/x^4)$?

$
  integral 1/x^4 d x &= integral x^(-4) d x\
                     &= (x^(-4 + 1))/(-4 + 1) + C\
                     &= x^(-3)/-3 + C\
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

== The constant factor rule for indefinite integrals

To take the integral of a power function with a constant factor, like $5x^2$, we can take the constant factor out of the integral:

$
  integral 5x^2 d x = 5 dot integral x^2 d x
$

This is the *constant factor rule*. In general:

$
  integral k f(x) d x = k integral f(x) d x
$

Where $k$ is a *constant*. It does not work if $k$ is a variable.

=== Exercises

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

== The sum rule for integration

To take the integral of a sum, you can take the sum of the integrals of each term:

$
  integral (f(x) plus.minus g(x)) d x = integral f(x) space d x plus.minus integral g(x) space d x
$

The sum rule can be combined with the constant factor rule to integrate sums of constant multiples of functions:

$
  integral (k_1 f(x) plus k_2 g(x)) space d x = k_1 integral f(x) space d x plus k_2 integral g(x) space d x
$

=== Exercises

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
