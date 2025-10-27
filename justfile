mprocs:
    mprocs -c mprocs.yaml

julia:
    julia -L prelude.jl

watch-mf2:
    typst watch courses/mathematical-foundations-2.typ
