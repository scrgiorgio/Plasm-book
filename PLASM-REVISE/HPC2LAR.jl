#  In molti casi si rinuncia alla multidimensionalità del linguaggio quando si passa da Hpc a Lar.  Questo non è necessario, anzi !!!


julia> LAR(PERMUTAHEDRON(2))
Lar(2, 2, 6, [-0.70710678118655 -1.4142135623731 … 0.70710678118655 -0.70710678118655; -1.20710678118655 0.0 … -1.20710678118655 1.20710678118655], Dict{Symbol, AbstractArray}(:CV => [[1, 2, 3, 4, 5, 6]], :FV => [[1, 2, 3, 4, 5, 6]], :EV => [[4, 5], [3, 4], [3, 6], [2, 6], [1, 2], [1, 5]]))

julia> LAR(PERMUTAHEDRON(3))
Lar(3, 3, 24, [1.4142135623731 -0.70710678118655 … 0.70710678118655 -0.70710678118655; -0.14644660940673 1.06066017177982 … -1.06066017177982 -1.06066017177982; -1.6642135623731 -1.81066017177982 … 1.81066017177982 1.81066017177982], Dict{Symbol, AbstractArray}(:CV => [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10  …  15, 16, 17, 18, 19, 20, 21, 22, 23, 24]], :FV => [[1, 2, 3, 4, 5, 6], [1, 5, 7, 8], [3, 6, 9, 10, 11, 12], [7, 8, 13, 14, 15, 16], [13, 15, 17, 18], [11, 12, 17, 18, 19, 20], [2, 5, 8, 15, 18, 19], [2, 3, 11, 19], [1, 4, 7, 16, 21, 22], [4, 6, 9, 21], [14, 16, 22, 23], [13, 14, 17, 20, 23, 24], [9, 10, 21, 22, 23, 24], [10, 12, 20, 24]], :EV => [[4, 6], [3, 6], [2, 3], [2, 5], [1, 5], [1, 4], [5, 8], [7, 8], [1, 7], [6, 9]  …  [2, 19], [16, 22], [21, 22], [4, 21], [9, 21], [22, 23], [14, 23], [20, 24], [23, 24], [10, 24]]))

julia> LAR(PERMUTAHEDRON(4))
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
   @ REPL[216]:1

# Basta ripetere ricorsivamente l'estrazione delle facce, e usare chiavi più semplici per id dizionario, tipo :2, :3, :4, :5 ... ;-)