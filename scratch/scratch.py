import marimo

__generated_with = "0.18.1"
app = marimo.App(width="medium")


@app.cell
def _():
    from sympy import symbols, Function, sqrt, log, ln, Rational as rat, Eq , Eq as eq, pi, solve, acos, deg, evalf, rad, cos, sin, atan
    return Function, atan, sqrt, symbols


@app.cell
def _(Function, symbols):
    x, y, z = symbols('x:z')
    a, b, c = symbols('a:c')
    A, B, C = symbols('A:C')
    T = symbols('T')
    n, p, e = symbols('n p e')
    f, g = symbols('f g', cls = Function)
    return


@app.cell
def _(atan, sqrt):
    atan(sqrt(3))
    return


@app.cell
def _():
    return


@app.cell
def _():
    return


if __name__ == "__main__":
    app.run()
