vedo che probabilmente hai pre-compilato le proprietà di visualizzazione in un Artifact julia jll, in quanto non trovo i simboli che cerco nel package.  Mi serve una tabella di **TUTTE** le proprietà visuali che io possa usare per costruirmi delle PropertySet (sarebbe da definire) a seconda di quello che serve in una particolare figura ...

#  Creare una tabella di tutte le proprietà visuali con i valori di default 

Importantissimo e urgente ... sono mesi che non faccio figure per questo motivo !!

# TIPO QUESTA (che è troppo incompleta) ///////////////////////////////


   # set defaultx for alberto
   properties["background_color"] = get(properties,"background_color", Point4d(1.0,1.0,1.0, 1.0))
   properties["line_color"]       = get(properties,"line_color"      , Point4d(0.0,0.0,0.0, 1.0))
   properties["text_v_color" ]    = get(properties,"text_v_color"    , Point4d(0.0,0.0,0.0, 1.0))
   properties["text_ev_color"]    = get(properties,"text_ev_color"   , Point4d(0.0,0.0,1.0, 1.0))
   properties["text_fv_color"]    = get(properties,"text_fv_color"   , Point4d(0.0,0.2,0.6, 1.0))
   properties["line_width"]       = get(properties,"line_width"      , 2)

   V = mesh.V; EV = mesh.C[:EV]
   obj =PROPERTIES(MKPOLS(V,EV),properties)
   batches=Vector{GLBatch}()
   append!(batches,GetBatchesForHpc(obj))

   # draw TEXT for vertices, edges, faces
   append!(batches,GLText(
      [V[:,k] for k=1:size(V,2)],
      EV=[it for it in EV],
      FV=:FV in keys(mesh.C) ? mesh.C[:FV] : nothing,
      V_color =properties["text_v_color"] ,
      EV_color=properties["text_ev_color"],
      FV_color=properties["text_fv_color"]
   ))
   
   View(batches,properties)
