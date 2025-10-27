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

=== Exercises

1. A club has 10 female and 8 male members. Three members are to be chosen at random to represent the club. What is the probability that 2 women and one man will be chosen? Round your answer to the nearest percent.

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

*Exercise* What is the probability that among 4 randomly chosen people whose birthdays are all in the last week of September, at least two will have birthdays on the same day? Round your answer to 3 decimal places.

It's easier to answer the question "what is the probability that all their birthdays are on a different day?" and take the complement.

We have 7 days to choose from, so there are $attach(P, bl: 7, br: 4) = 840$ permutations. There are $7^4$ possibilities for all the birthday combinations. We have:

$
  P(A') &= n/N = 840/7^4 = 0.3498...
  P(A) &= 1 - P(A') = 0.650...
$
