mprocs:
    mprocs -c mprocs.yaml

julia:
    julia -L scratch/prelude.jl

watch-mf2:
    typst watch courses/mathematical-foundations-2.typ

watch-scratch:
    typst watch scratch/scratch.typ
