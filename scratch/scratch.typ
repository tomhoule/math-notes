#set page(paper: "a4", margin: (x: 4.4cm, y: 1.8cm))

#set text(font: "STIX Two Text", size: 12pt)
#show math.equation: set text(font: "STIX Two Math")

#let sep() = line(length: 100%, stroke: (thickness: .8pt, paint: gray))
#let dx() = $space upright(d) x$

#sep()

Find the slope of $y = log_3(5x - 2) + 5$ at $x = 7/15$.

First let's find the derivative using the chain rule.

$
  (d x)/(d g) &= 5\
  (d g)/(d f) &= 1/(3 ln g)\
  (d x)/(d f) &= 5/((5x - 2) ln 3)\
$

Now evaluate at $x = 7/15$:

$
  5/((5 dot 7/15 - 2) ln 3)\
  5/(1 slash 3 ln 3)\
  15/(ln 3)
$


#sep()

Find $g'(x)$ for $g(x) = ln(5x^2)$.

Using the chain rule, we have:

$
  g(x) &= (g_1 dot g_2)(x)\
  g_2(x) &= 5x^2\
  g_1(g_2) &= ln(g_2)\
  g_2 '(x) &= 10x\
  g_1 '(g_2) &= 1/g_2\
  g'(x) &= 1/(5x^2) dot 10 x\
  &= (10x)/(5x^2)\
  &= 2/x\
$

#sep()

What is the amplitude of $display(f(x) = (3-9sin(x))/5)$?

In $f(x) = A sin(B x + C) + D$, the amplitude is $|A|$.

Putting our function in the right form, we have:

$
  (3-9sin(x))/5 &= 3/5 - 9/5 dot sin(x)\
  &= -9/5 sin (x) + 3/5\
$

Our amplitude is $|-9/5| = 9/5$.

#sep()

Calculate:

$
  integral (-3/(2x)) space #dx() &= -3/2 integral 1/x #dx()\
  &= -3/2 ln |x| + C
$


#sep()

Integrate this:

$
  integral -1/(sqrt(7) x) d x &= -1/sqrt(7) dot integral 1/x d x\
  &= -1/sqrt(7) ln |x| + C\
  &= (-sqrt(7))/7 ln |x] + C\
$

#sep()

Find $display(integral -sqrt(5)/x d x)$

$
  integral -sqrt(5)/x d x &= -sqrt(5) integral 1/x d x\
  &= - sqrt(5) ln(|x|) + C\
$

#sep()

Consider $f(x) = 3cos(2x)$.

Evaluate:

$
  lim_(x -> frac(pi,2,style: "horizontal")) f(x) &= 3 lim_(x -> frac(pi,2,style: "horizontal")) cos(2x)\
  &= 3 cos(cancel(2) dot pi/cancel(2))\
  &= -3
$

Evaluate:

$
  lim_(x -> -inf) f(x) &= 3 lim_(x -> inf) cos(2x)\
$

Since the limit at infinity of cosines does not exist, this is DNE.

What is the average rate of change of $f(x)$ over $x in [pi/4, pi/4 + h]$ where $h > 0$?

$
  (Delta f)/(Delta x) &= (f(pi/4 + h) - f(pi/4))/h\
  &= (3cos(2(pi/4 + h)) - 3cos(2 dot pi/4))/h\
  &= (3cos(2(pi/4 + h)) - 3cos(pi/2))/h\
  &= (3cos(pi/2 + 2h) - 3 dot 0)/h\
  &= (3cos(pi/2 + 2h))/h
$

Find $
  lim_(x -> (pi slash 4)^-) 1/f(x)
$

$
  f(pi/4) &= 3cos(pi/2)\
  &= 3 dot 0\
  &= 0
$

But as it approaches from the left, it tends to infinity. So the limit is $inf$.

Find this:

$
  lim_(x->2) (x-2)/(x^2 - 5x + 6)
$

First let's factor the denominator:

$
x^2 - 5x + 6 &= x (x-3) -2 (x-3)\
&= (x-2)(x-3)\
$

The $(x-2)$ factor cancels out, and we are left with:

$
  lim_(x->2) 1/(x-3) &= 1/(2-3)\
  &= -1
$

Find this:

$
  lim_(x-2) ((x-2)f(x))/(x^2 - 5x + 6)\
$

Using the previous question, we know we have an $x-2$ factor that cancels out. We are left with:

$
  lim_(x->2) f(x)/(x-3) &= f(2)/(-1)\
  &= -f(2)\
  &=  -3 cos(4)
$

Find $display(lim_(x->pi slash 2) (2f(x))/sqrt(pi + 4x))$.

$
  lim_(x->pi slash 2) (2f(x))/sqrt(pi + 4x) &= (2f(pi slash 2))/sqrt(pi + 4 dot pi slash 2)\
  &= -6/sqrt(3pi)
$

#sep()

Evaluate:

$
  sin (-(5pi)/4) &= sin((3pi)/4)\
  &= sqrt(2)/2
$

#sep()

Evaluate:

$
  sec(-240 degree) &= sec(120 degree)\
  &= cos^(-1)(120 degree)\
  &= (-1/2)^(-1)\
  &= -2
$

#sep()

Find the slope of the tangent to $f(x) = ln(2x - 1)$ at $x = 3$.

$
  f_1(x) &= 2x - 1\
  f_2(f_1) &= ln f_1\
  f_1'(x) p= 2\
  f_2'(f_1) &= 1/f_1\
  f'(x) &= 1/(2x - 1) dot 2\
  &= 2/(2x - 1)
$

Now we evaluate this at $x = 3$ and get the slope.

$
  m = 2/(2 dot 3 - 1) = 2/5
$

#sep()

Differentiate $g(x) = ln(7x - 5)$.

$
  f_1(x) &= 7x - 5\
  f_2(x) &= ln f_1 \
  f_1'(x) &= 7\
  f_2'(x) &= 1/f_1\
  g'(x) &= 1/(7x - 5) dot 7\
  &= 7/(7x - 5)
$

#sep()

Differentiate $g(x) = ln x^2$.

We have $f_1 = x^2$ and $f_2 = ln f_1$.

$
  f_1' &= 2x\
  f_2' &= 1/f_1
  g'(x) &= f_2' dot f_1'\
  &= (2x)/(x^2)\
  &= 2/x
$

#sep()
