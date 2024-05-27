# L'operatore LAR non è multidimensionale

julia> LAR(SIMPLEX(4))
ERROR: AssertionError: pdim == 2 || pdim == 3
Stacktrace:
 [1] ToGeometry(self::Hpc; precision::Int64)
   @ Plasm ~/Documents/dev/Plasm.jl/src/hpc.jl:1345
 [2] ToGeometry
   @ ~/Documents/dev/Plasm.jl/src/hpc.jl:1301 [inlined]
 [3] LAR(obj::Hpc; precision::Int64)
   @ Plasm ~/Documents/dev/Plasm.jl/src/hpc.jl:1426
 [4] LAR(obj::Hpc)
   @ Plasm ~/Documents/dev/Plasm.jl/src/hpc.jl:1425
 [5] top-level scope
   @ REPL[72]:1

julia> SIMPLEX(4)
Hpc(MatrixNd(5), Geometry([[0.0, 0.0, 0.0, 0.0], [1.0, 0.0, 0.0, 0.0], [0.0, 1.0, 0.0, 0.0], [0.0, 0.0, 1.0, 0.0], [0.0, 0.0, 0.0, 1.0]], hulls=[[1, 2, 3, 4, 5]]))

julia> LAR(SIMPLEX(3))
Lar(3, 3, 4, [0.0 1.0 0.0 0.0; 1.0 0.0 0.0 0.0; 0.0 0.0 0.0 1.0], Dict{Symbol, AbstractArray}(:CV => [[1, 2, 3, 4]], :FV => [[1, 2, 3], [2, 3, 4], [1, 3, 4], [1, 2, 4]], :EV => [[2, 3], [ 1, 3], [1, 2], [3, 4], [2, 4], [1, 4]]))


# per implementarlo multidimensionale per complessi simpliciali puoi usare ricorsivamente la funzione:

simplexfacets(simplices)

# intorno a pagina 67 del libro