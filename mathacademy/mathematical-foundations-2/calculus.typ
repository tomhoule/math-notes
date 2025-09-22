== The power rule

Given a monomial $f(x) = x^n$, where $n$ is a real number,

$f'(x) = n x^(n-1)$

== The antiderivative

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

== The power rule for integration

$
  integral x^n d x = (x^(n+1))/(n+1) + C
$

=== Exercises

1. Antiderivative of $1/x^4$?

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
