#import "@preview/cetz:0.3.2"
#import "@preview/cetz-plot:0.1.1"

#set text(font: "STIX Two Text")
#show math.equation: set text(font: "STIX Two Math")

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

In the first quadrant, any point $(x, y)$ forms a right triangle with the origin, where $x$ and $y$ are the lengths of the legs and $sqrt{x^2 + y^2}$ is the length of the hypotenuse. Since in the unit circle, the length of the hyposenuse is 1, by definition, the Pythagorean identity states that $x^2 + y^2 = 1$.

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

== Integration

=== The antiderivative

The antiderivative is the opposite of the derivative.

Infinitely many antiderivatives map to the same function.

For example, since the derivative of $x²$ is $2x$, we have $x^2$ as an antiderivative of $2x$. But $x^2 + 2$, $x^2 + 1$, etc. are also antiderivatives of $2x$.

In general, the antiderivatives of $2x$ follow the pattern $x^2 + C$ where $C$ is a constant.

We can also formulate that using the $integral$ symbol for integration:

$
  integral 2x d x &= x^2 + C
$

Where $C$ is called the *constant of integration*.

These integrals are *indefinite integrals*.

The function being integrated (here $2x$) is called the *integrand*.

=== The power rule for integration

$
  integral x^n d x = (x^(n+1))/(n+1) + C
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
