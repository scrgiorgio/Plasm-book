# Serve estrarre lo SKELETON(0) --- IMPORTANTISSIMO per esempi edili ci ho provato io come vedi, ma da errori altrove, perché la dimensione intrinseca del risultato è 2=2+0 e non 3   --- credo dipenda dalla funzione che chiami POWER (*)

function SKELETON(ord::Int)
   function SKELETON0(pol::Hpc)
      larpol = LAR(pol)
      if ord==0
         return MKPOLS(larpol.V, [[k] for k=1:size(larpol.V,2)])
      elseif ord==1
         return MKPOLS(larpol.V, larpol.C[:EV])
      elseif ord==2
         return MKPOLS(larpol.V, larpol.C[:FV])
      elseif ord==3
         return MKPOLS(larpol.V, larpol.C[:CV])
      else error("SKELETON($(ord)) not yet implemented")
      end 
   end
   return SKELETON0
end


julia> d1 = GRID([1,1,1])
Hpc(MatrixNd(2), Geometry([[0.0], [1.0], [2.0], [3.0]], hulls=[[1, 2], [2, 3], [3, 4]]))

julia> d3 = d1 * d1 * d1;  # OK

julia> d0 = SKELETON(0)(d1) # K0
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
 [5] (::var"#SKELETON0#4"{Int64})(pol::Hpc)
   @ Main ./REPL[81]:3
 [6] top-level scope
   @ REPL[90]:1
   
deve funzionare, come pure devono funzionare 

julia> d110 = d1 * d1 * d0;  

julia> d101 = d1 * d0 * d1;  

julia> d011 = d0 * d1 * d1;    # parliamone se necessario ... 
                               # ti posso dare l'algoritmo di prodotto di complessi di LAR, semplicissimo ...


