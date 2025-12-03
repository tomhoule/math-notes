import marimo

__generated_with = "0.18.1"
app = marimo.App(width="medium")


@app.cell
def _():
    from sympy import symbols, Function, sqrt, log, ln, Rational as rat, Eq as eq, pi
    import sympy

    return Function, rat, symbols


@app.cell
def _(Function, symbols):
    x, y, z = symbols('x:z')
    p = symbols('p')
    f, g = symbols('f g', cls = Function)
    return


@app.cell
def _(rat):
    2 - rat(5, 4)
    return


@app.cell
def _():
    return


if __name__ == "__main__":
    app.run()
