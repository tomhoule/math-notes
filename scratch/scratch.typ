#set page(paper: "a4", margin: (x: 4.4cm, y: 1.8cm))

#set text(font: "STIX Two Text", size: 12pt)
#show math.equation: set text(font: "STIX Two Math")

#let sep() = line(length: 100%, stroke: (thickness: .8pt, paint: gray))

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
  (Delta f)/(Delta x) &= ???\
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
