# encoding: UTF-8
  Tema.create!(
    :titulo => "Pacto de Morte.",
    :autor => "Cleber Masson",
    :corpo => %{
  <p style="text-align: justify">
  \na) se o sobrevivente praticou atos de execução da morte do outro, a ele será imputado o crime de homicídio;
  \nb) se o sobrevivente somente auxiliou o outro a suicidar-se, responderá, pelo crime de participação em suicídio;
  \nc) se ambos praticaram atos de execução, um contra o outro, e ambos sobreviveram, responderão os dois por tentativa de homicídio;
  \nd) se um deles praticou atos de execução da morte de ambos, mas ambos sobreviveram, aquele responderá por tentativa de homicídio, e este por participação em suicídio, desde que o executor, em razão da tentativa, sofra lesão corporal de natureza grave. 
  </p>
  },
    :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009. p. 57", 
    :ativo => true,  
    :crime_id => "2"    
  )
  
  Tema.create!(
    :titulo => "Roleta-russa e duelo americado.",
    :autor => "Cleber Masson",
    :corpo => %{
  <p style="text-align: justify">
  Aos sobreviventes será imputado o crime de participação em suicídio. 
  </p>
  },
    :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009. p. 57", 
    :ativo => true,  
    :crime_id => "2"    
  )
  
  Caso.create!(
    :autor => "Cleber Masson",
    :corpo => %{
  <p style="text-align: justify">
  "A" procura "B", perguntando-lhe como solucionar seus problemas financeiros, no que obtém como resposta: "Suicide-se e tudo estará resolvido".</p>  
  },
    :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009.", 
    :ativo => true,  
    :crime_id => "2"    
  )
  
  Caso.create!(
    :autor => "Cleber Masson",
    :corpo => %{
  <p style="text-align: justify">
  "A" diz à "B" que, em face de problemas conjugais, pretende suicidar-se. Este, por sua vez, incentiva aquele a agir assim.</p>  
  },
    :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009.", 
    :ativo => true,  
    :crime_id => "2"    
  )
  
  Caso.create!(
    :autor => "Cleber Masson",
    :corpo => %{
  <p style="text-align: justify">
  Ciente de que "A" deseja suicidar-se, e querendo que isso se concretize, "B" lhe empresta uma arma de fogo municiada.</p>  
  },
    :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009.", 
    :ativo => true,  
    :crime_id => "2"    
  )