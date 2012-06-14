# encoding: UTF-8
#1
Usuario.create!(
  :nome => "Administrador",
  :sobrenome => "(SysAdmin)",
  :email => "admin@crimes.com", 
  :password => "sysadmin",
  :password_confirmation => "sysadmin"
)
#2
Usuario.create!(
  :nome => "Nailton",
  :sobrenome => "Gomes",
  :email => "nailtongomes@ig.com.br", 
  :password => "123456",
  :password_confirmation => "123456"
)

#1
Crime.create!(
    :nome => "Homicídio",
    :base => %{Art 121. Matar alguem: 
\nPena - reclusão, de seis a vinte anos.
\nCaso de diminuição de pena 
\n§ 1º Se o agente comete o crime impelido por motivo de relevante valor social ou moral, ou sob o domínio de violenta emoção, logo em seguida a injusta provocação da vítima, ou juiz pode reduzir a pena de um sexto a um terço. 
\nHomicídio qualificado 
\n§ 2° Se o homicídio é cometido: 
\nI - mediante paga ou promessa de recompensa, ou por outro motivo torpe; 
\nII - por motivo futil; 
\nIII - com emprego de veneno, fogo, explosivo, asfixia, tortura ou outro meio insidioso ou cruel, ou de que possa resultar perigo comum; 
\nIV - à traição, de emboscada, ou mediante dissimulação ou outro recurso que dificulte ou torne impossivel a defesa do ofendido; 
\nV - para assegurar a execução, a ocultação, a impunidade ou vantagem de outro crime: 
\nPena - reclusão, de doze a trinta anos. 
\nHomicídio culposo 
\n§ 3º Se o homicídio é culposo:
\nPena - detenção, de um a três anos. 
\nAumento de pena 
\n§ 4o No homicídio culposo, a pena é aumentada de 1/3 (um terço), se o crime resulta de inobservância de regra técnica de profissão, arte ou ofício, ou se o agente deixa de prestar imediato socorro à vítima, não procura diminuir as conseqüências do seu ato, ou foge para evitar prisão em flagrante. Sendo doloso o homicídio, a pena é aumentada de 1/3 (um terço) se o crime é praticado contra pessoa menor de 14 (quatorze) ou maior de 60 (sessenta) anos. 
\n§ 5º - Na hipótese de homicídio culposo, o juiz poderá deixar de aplicar a pena, se as conseqüências da infração atingirem o próprio agente de forma tão grave que a sanção penal se torne desnecessária.
    },
    :capit => "Art. 121 - Matar alguém",
    :pena => "Reclusão, de seis a vinte anos.",    
    :acao_penal => "Pública Incondicionada",
    :competencia => "Se doloso, Tribunal do Júri; se culposo, Justiça Estaudal."  
)

    Doutrina.create!(
      :autor => "Cleber Masson",
      :corpo => %{
    <b>Conceito: </b>É a supressão da vida humana extrauterina praticada por outra pessoa. 
    \n<b>Bem Jurídico/Objetividade Jurídica </b>Vida humana exterior ao útero materno.
    \n<b>Objeto Material: </b> É o ser humano que suporta a conduta criminosa.
    \n<b>Núcleo do Tipo: </b>Matar
    \n<b>Sujeito Ativo: </b>Qualquer pessoa (crime comum). Comporta coautoria e participação.
    \n<b>Sujeito Passivo: </b>Qualquer pessoa, desde que já nascida e viva.
    \n<b>Elemento Sujetivo: </b>Dolo, direto ou eventual. Há modalidade culposa.
    \n<b>Consumação: </b>Crime Material: cessação da atividade encefálica.
    \n<b>Tentativa: </b>É possível. Na tentativa branca ou incruenta a vítima não é atingida; na vermelha ou cruenta a vítima sofre ferimentos.
    \n<b>Classificação: </b>Crime simples; comum; material; de dano; de forma livre; comissivo ou omissivo; instantâneo; unissubjetivo, unilateral ou de concurso eventual; em regra, plurissubsistente; e progressivo. 
<br/>
<h2>Homicídio Privilegiado</h2>

<b>Por motivo de relevante valor social:</b> diz respeito ao interesse de toda a coletividade.
\n<b>Por motivo de relevante valor moral:</b> interesses particulares do sujeito ativo.
\n<b>Domínio de violenta emoção, logo em seguida a injusta provocação da vítima:</b> é o homicídio emocional, decorrente de intenso choque emocional. A resposta deve ser imediata, sob pena de transmudação em vingança.

<h2>Homicídio Qualificado</h2>
Inciso I: Cirscunstância de caráter subjetiva. Vingança pode ou não configurar motivo torpe, dependerá do caso concreto.
\nInciso II: Cirscunstância de caráter subjetiva. Ausência de motivo não significa futilidade.
\nInciso III: Cirscunstância de caráter objetiva. Só é homicídio qualificado por tortura quando esta é a causa da morte, do contrário poderá haver concurso material de homicídio com o crime autônomo de tortura.
\nInciso IV: Cirscunstância de caráter objetiva. Necessário que a surpresa seja totalmente imprevisível.
\nInciso V: Cirscunstância de caráter Subjetiva.

<h2>Homicídio Culposo</h2>
A culpa decorre de negligência (ausência de precaução), imprudência (afoiteza), imperícia (falta de aptidão técnica).
\nO agente não quer o resultado ilícito nem assume o risco de produzí-lo.
},
      :ref   => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009.",
      :ativo => true,  
      :crime_id => "1"    
    )
    
    Qt.create!(
      :assertiva => "A futilidade para qualificar o homicídio deve ser apreciada subjetivamente, ou seja, pela opinião do sujeito ativo.",
      :resposta => "E",
      :ativo => true,  
      :crime_id => "1"    
    )
    
    Tema.create!(
      :titulo => "Homicídio e infecção dolosa por HIV.",
      :autor => "Cleber Masson",
      :corpo => "Se um portador do vírus HIV, consciente da letalidade da moléstia, efetua intencionalmente com terceira pessoa ato libidinoso que transmite a doença ou injeta nela o vírus, através de seringa contaminada, matando-a, respoderá por homicídio doloso consumado. E, se a vítima não falecer, a ele deverá ser imputado o crime de homicídio tentado.",
      :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009. p. 15.", 
      :ativo => true,  
      :crime_id => "1"    
    )
   
    Juri.create!(
      :orgao => "STJ",
      :corpo => %{
    PROCESSUAL PENAL. HABEAS CORPUS. HOMICÍDIO CULPOSO. NEGLIGÊNCIA MÉDICA. CARACTERIZAÇÃO. EXAME DE CORPO DE DELITO. SUPRIMENTO. PROVA TESTEMUNHAL. POSSIBILIDADE.
    \nI - Cingindo-se a controvérsia tão-somente à existência de conduta negligente por parte da profissional médica, de molde a restar caracterizado que a sua omissão contribuiu para a realização ou antecipação do evento morte, é suficiente, para comprovação da prática delituosa, as provas documental e testemunhal colhidas na instrução criminal, sendo prescindível a realização da perícia. Precedentes do STJ e STF. II - Hipótese em que a causa mortis  é incontroversa. Ordem denegada. 
    },
      :ref => "HC 31.139/RS, Rel. Ministro FELIX FISCHER, QUINTA TURMA, julgado em 18/12/2003, DJ 09/02/2004, p. 198", 
      :ativo => true,  
      :crime_id => "1"    
    )
    
    Caso.create!(
      :autor => "STF",
      :corpo => %{
    Em tese, o único médico plantonista, procurado mais de uma vez durante o exercício de sua atividade profissional na unidade de saúde, cientificado da gravidade da doença apresentada pelo paciente que lhe é apresetando (com risco de vida), ao se recusar a atendê-lo, determinando o retorno para casa, sem ao menos ministrar qualquer atendimento ou tratamento, pode haver deixado de impedir a ocorrência da morte da vítima, sendo tal conduta omissiva penalmente relevante devido à sua condição de garante.  
    },
      :ref => "HC 92.304/SP. Rel. Min. Ellen Gracie, 2ª Turma, j. 05.08.2008.", 
      :ativo => true,  
      :crime_id => "1"    
    )
    
    Caso.create!(
      :autor => "Cleber Masson",
      :corpo => %{
    "A", ao chegar à sua casa, depara-se com sua filha chorando copiosamente. Pergunta-lhe o motivo da tristeza, vindo a saber que fora ela recentemente estuprada por "B". Pede então a "C", seu amigo, que mate o estuprador, no que é atendido. "A" responde por homicídio privilegiado (relevante valor moral), enquanto a "C" deve ser atribuído o crime homicídio, simples ou qualificado (dependerá do caso).  
    },
      :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009.", 
      :ativo => true,  
      :crime_id => "1"    
    )
    
    Caso.create!(
      :autor => "Cleber Masson",
      :corpo => %{    
    É homicídio quando "A" induz "B", uma criança de tenra idade, a pular do alto de um edifício, argumentando que assim agindo poderia voar.  
    },
      :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009.", 
      :ativo => true,  
      :crime_id => "1"    
    )  

#2    
Crime.create!(
  :base => %{Art. 122 - Induzir ou instigar alguém a suicidar-se ou prestar-lhe auxílio para que o faça:
\nPena - reclusão, de dois a seis anos, se o suicídio se consuma; ou reclusão, de um a três anos, se da tentativa de suicídio resulta lesão corporal de natureza grave. 
\nParágrafo único - A pena é duplicada:
\nAumento de pena
\nI - se o crime é praticado por motivo egoístico; 
\nII - se a vítima é menor ou tem diminuída, por qualquer causa, a capacidade de resistência.
},
  :nome => "Induzimento, instigação ou auxílio a suicídio",
  :capit => "Art. 122 - Induzir ou instigar alguém a suicidar-se ou prestar-lhe auxílio para que o faça.",
  :acao_penal => "Pública Incondicionada",
  :competencia => "Tribunal do Júri",
  :pena => "Reclusão, de dois a seis anos, se o suicídio se consuma; ou reclusão, de um a três anos, se da tentativa de suicídio resulta lesão corporal de natureza grave."  
)

    Doutrina.create!(
      :autor => "Cleber Masson",
      :corpo => %{
    <b>Conceito: </b>Suicídio é a destruição deliberada da própria vida. É também chamado de autocídio ou autoquíria. 
    \n<b>Bem Jurídico/Objetividade Jurídica </b>Tutela-se a vida humana.
    \n<b>Objeto Material: </b> É o ser humano que suporta a conduta criminosa.
    \n<b>Núcleo do Tipo: </b>Induzir, Instigar e/ou Auxiliar
    \n<b>Sujeito Ativo: </b>Qualquer pessoa (crime comum).
    \n<b>Sujeito Passivo: </b>Qualquer pessoa, desde que determinada e possua um mínimo de capacidade de resistência e de discernimento.
    \n<b>Elemento Sujetivo: </b>Dolo, direto ou eventual. Não há modalidade culposa.
    \n<b>Consumação: </b>Crime Material: cessação da atividade encefálica ou no mínimo a produção de lesão corporal de natureza grave.
    \n<b>Tentativa: </b>Não é possível. Anota-se que se da tentativa resulta lesão corporal leve, o fato será atípico. 
    \n<b>Classificação: </b>Crime comum; de dano; comissivo ou omissivo; material; condicionado; de forma livre; simples; instantâneo; unissubjetivo, unilateral ou de concurso eventual; e, em regra, plurissubsistente. 
<br/>
<h2>Causa de Aumento de Pena</h2>
      <b>Motivo Egoístico:</b> Quando revelado que o sujeito ativo almejava algum proveito.
      \n<b>Vítima menor:</b> Entre 14 e 18 anos.
      \n<b>Vítima que, por qualquer causa, tem diminuída a capacidade de resistência:</b> essa menor resistência pode ser provocada por enfermidade física ou mental e por efeitos de entorpecentes (drogas lícitas ou ilítitas e álcool).
    },
      :ref   => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009.",
      :ativo => true,  
      :crime_id => "2"    
    )
      Tema.create!(
    :titulo => "Pacto de Morte.",
    :autor => "Cleber Masson",
    :corpo => %{
  a) se o sobrevivente praticou atos de execução da morte do outro, a ele será imputado o crime de homicídio;
  \nb) se o sobrevivente somente auxiliou o outro a suicidar-se, responderá, pelo crime de participação em suicídio;
  \nc) se ambos praticaram atos de execução, um contra o outro, e ambos sobreviveram, responderão os dois por tentativa de homicídio;
  \nd) se um deles praticou atos de execução da morte de ambos, mas ambos sobreviveram, aquele responderá por tentativa de homicídio, e este por participação em suicídio, desde que o executor, em razão da tentativa, sofra lesão corporal de natureza grave.   
  },
    :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009. p. 57", 
    :ativo => true,  
    :crime_id => "2"    
  )
  
  Tema.create!(
    :titulo => "Roleta-russa e duelo americado.",
    :autor => "Cleber Masson",
    :corpo => %{  
  Aos sobreviventes será imputado o crime de participação em suicídio.   
  },
    :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009. p. 57", 
    :ativo => true,  
    :crime_id => "2"    
  )
  
  Caso.create!(
    :autor => "Cleber Masson",
    :corpo => %{  
  "A" procura "B", perguntando-lhe como solucionar seus problemas financeiros, no que obtém como resposta: "Suicide-se e tudo estará resolvido".  
  },
    :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009.", 
    :ativo => true,  
    :crime_id => "2"    
  )
  
  Caso.create!(
    :autor => "Cleber Masson",
    :corpo => %{  
  "A" diz à "B" que, em face de problemas conjugais, pretende suicidar-se. Este, por sua vez, incentiva aquele a agir assim.  
  },
    :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009.", 
    :ativo => true,  
    :crime_id => "2"    
  )
  
  Caso.create!(
    :autor => "Cleber Masson",
    :corpo => %{
  Ciente de que "A" deseja suicidar-se, e querendo que isso se concretize, "B" lhe empresta uma arma de fogo municiada.  
  },
    :ref => "MASSON, Cleber Rogério. <b>Direito penal esquematizado</b>. 2 ed. São Paulo: Método, 2009.", 
    :ativo => true,  
    :crime_id => "2"    
  )

#3
Crime.create!(
:base => %{
Art. 123 - Matar, sob a influência do estado puerperal, o próprio filho, durante o parto ou logo após:
Pena - detenção, de dois a seis anos. 
},
  :nome => "Infanticídio",
  :capit => "Art. 123 - Matar, sob a influência do estado puerperal, o próprio filho, durante o parto ou logo após.",
  :acao_penal => "",
  :competencia => "",  
  :pena => "Detenção, de dois a seis anos."  
)

#4
Crime.create!(
:base => %{
Art. 129. Ofender a integridade corporal ou a saúde de outrem: 
\nPena - detenção, de três meses a um ano.
\nLesão corporal de natureza grave 
\n§ 1º Se resulta: 
\nI - Incapacidade para as ocupações habituais, por mais de trinta dias; 
\nII - perigo de vida; 
\nIII - debilidade permanente de membro, sentido ou função; 
\nIV - aceleração de parto: 
\nPena - reclusão, de um a cinco anos. 
\n§ 2° Se resulta: 
\nI - Incapacidade permanente para o trabalho; 
\nII - enfermidade incuravel; 
\nIII perda ou inutilização do membro, sentido ou função; 
\nIV - deformidade permanente; 
\nV - aborto: 
\nPena - reclusão, de dois a oito anos. 
\nLesão corporal seguida de morte 
\n§ 3° Se resulta morte e as circunstâncias evidenciam que o agente não quís o resultado, nem assumiu o risco de produzí-lo: 
\nPena - reclusão, de quatro a doze anos. 
\nDiminuição de pena 
\n§ 4° Se o agente comete o crime impelido por motivo de relevante valor social ou moral ou sob o domínio de violenta emoção, logo em seguida a injusta provocação da vítima, o juiz pode reduzir a pena de um sexto a um terço. 
\nSubstituição da pena 
\n§ 5° O juiz, não sendo graves as lesões, pode ainda substituir a pena de detenção pela de multa, de duzentos mil réis a dois contos de réis: 
\nI - se ocorre qualquer das hipóteses do parágrafo anterior; 
\nII - se as lesões são recíprocas. 
\nLesão corporal culposa 
\n§ 6° Se a lesão é culposa:
\nPena - detenção, de dois meses a um ano. 
\nAumento de pena 
\n§ 7º - Aumenta-se a pena de um terço, se ocorrer qualquer das hipóteses do art. 121, § 4º. 
\n§ 8º - Aplica-se à lesão culposa o disposto no § 5º do art. 121.
\nViolência Doméstica 
\n§ 9o Se a lesão for praticada contra ascendente, descendente, irmão, cônjuge ou companheiro, ou com quem conviva ou tenha convivido, ou, ainda, prevalecendo-se o agente das relações domésticas, de coabitação ou de hospitalidade:
\nPena - detenção, de 3 (três) meses a 3 (três) anos. 
\n§ 10. Nos casos previstos nos §§ 1o a 3o deste artigo, se as circunstâncias são as indicadas no § 9o deste artigo, aumenta-se a pena em 1/3 (um terço).
\n§ 11. Na hipótese do § 9o deste artigo, a pena será aumentada de um terço se o crime for cometido contra pessoa portadora de deficiência.
},
  :nome => "Lesão Corporal",
  :capit => "Art. 129 - Ofender a integridade corporal ou a saúde de outrem.",
  :acao_penal => "Condicionada a representação para a modalidade simples e culposa; pública incondicionada para as demais.",
  :competencia => "Juizado Especial Criminal (JECrim) para a modalidade simples e culposa; Justiça Estadual para as demais.",
  :pena => "Detenção, de três meses a um ano."  
)

#5
Crime.create!(
  :base => %{
Art. 146 - Constranger alguém, mediante violência ou grave ameaça, ou depois de \nlhe haver reduzido, por qualquer outro meio, a capacidade de resistência, a não \nfazer o que a lei permite, ou a fazer o que ela não manda:
\nPena - detenção, de três meses a um ano, ou multa.
\nAumento de pena
\n§ 1º - As penas aplicam-se cumulativamente e em dobro, quando, para a execução do crime, se reúnem mais de três pessoas, ou há emprego de armas.
\n§ 2º - Além das penas cominadas, aplicam-se as correspondentes à violência.
\n§ 3º - Não se compreendem na disposição deste artigo:
\nI - a intervenção médica ou cirúrgica, sem o consentimento do paciente ou de seu representante legal, se justificada por iminente perigo de vida;
\nII - a coação exercida para impedir suicídio.
},
  :nome => "Constrangimento Ilegal",
  :capit => "Art. 146 - Constranger alguém, mediante violência ou grave ameaça, ou depois de lhe haver reduzido, por qualquer outro meio, a capacidade de resistência, a não fazer o que a lei permite, ou a fazer o que ela não manda.",
  :acao_penal => "Pública Incondicionada",
  :competencia => "Juizado Especial Criminal (JECrim)",
  :pena => "Detenção, de três meses a um ano, ou multa."  
)

#6
Crime.create!(
:base => %{
Art. 147 - Ameaçar alguém, por palavra, escrito ou gesto, ou qualquer outro meio simbólico, de causar-lhe mal injusto e grave:
\nPena - detenção, de um a seis meses, ou multa.
\nParágrafo único - Somente se procede mediante representação.
},
  :nome => "Ameaça",
  :capit => "Art. 147 - Ameaçar alguém, por palavra, escrito ou gesto, ou qualquer outro meio simbólico, de causar-lhe mal injusto e grave.",
  :acao_penal => "Condicionada a representação",
  :competencia => "Juizado Especial Criminal (JECrim)",
  :pena => "Detenção, de um a seis meses, ou multa"  
)

#7
Crime.create!(
:base => %{
\nArt. 155 - Subtrair, para si ou para outrem, coisa alheia móvel:
\nPena - reclusão, de um a quatro anos, e multa.
\n§ 1º - A pena aumenta-se de um terço, se o crime é praticado durante o repouso noturno.
\n§ 2º - Se o criminoso é primário, e é de pequeno valor a coisa furtada, o juiz pode substituir a pena de reclusão pela de detenção, diminuí-la de um a dois terços, ou aplicar somente a pena de multa.
\n§ 3º - Equipara-se à coisa móvel a energia elétrica ou qualquer outra que tenha valor econômico.
\nFurto qualificado
\n§ 4º - A pena é de reclusão de dois a oito anos, e multa, se o crime é cometido:
\nI - com destruição ou rompimento de obstáculo à subtração da coisa;
\nII - com abuso de confiança, ou mediante fraude, escalada ou destreza;
\nIII - com emprego de chave falsa;
\nIV - mediante concurso de duas ou mais pessoas.
\n§ 5º - A pena é de reclusão de três a oito anos, se a subtração for de veículo automotor que venha a ser transportado para outro Estado ou para o exterior.
},
  :nome => "Furto",
  :capit => "Art. 155 - Subtrair, para si ou para outrem, coisa alheia móvel.",
  :acao_penal => "Pública Incondicionada",
  :competencia => "Justiça Estadual",
  :pena => "Reclusão, de um a quatro anos, e multa."  
)

#8
Crime.create!(
:base => %{
\nArt. 157 - Subtrair coisa móvel alheia, para si ou para outrem, mediante grave ameaça ou violência a pessoa, ou depois de havê-la, por qualquer meio, reduzido à impossibilidade de resistência:
\nPena - reclusão, de quatro a dez anos, e multa.
\n§ 1º - Na mesma pena incorre quem, logo depois de subtraída a coisa, emprega violência contra pessoa ou grave ameaça, a fim de assegurar a impunidade do crime ou a detenção da coisa para si ou para terceiro.
\n§ 2º - A pena aumenta-se de um terço até metade:
\nI - se a violência ou ameaça é exercida com emprego de arma;
\nII - se há o concurso de duas ou mais pessoas;
\nIII - se a vítima está em serviço de transporte de valores e o agente conhece tal circunstância.
\nIV - se a subtração for de veículo automotor que venha a ser transportado para outro Estado ou para o exterior;
\nV - se o agente mantém a vítima em seu poder, restringindo sua liberdade. 
\n§ 3º Se da violência resulta lesão corporal grave, a pena é de reclusão, de sete a quinze anos, além da multa; se resulta morte, a reclusão é de vinte a trinta anos, sem prejuízo da multa. 
},
  :nome => "Roubo",
  :capit => "Art. 157 - Subtrair coisa móvel alheia, para si ou para outrem, mediante grave ameaça ou violência a pessoa, ou depois de havê-la, por qualquer meio, reduzido à impossibilidade de resistência.",
  :acao_penal => "Pública Incondicionada",
  :competencia => "Justiça Estadual",
  :pena => "Reclusão, de quatro a dez anos, e multa."  
)

#9
Crime.create!(
:base => %{
Art. 158 - Constranger alguém, mediante violência ou grave ameaça, e com o intuito de obter para si ou para outrem indevida vantagem econômica, a fazer, tolerar que se faça ou deixar fazer alguma coisa:
\nPena - reclusão, de quatro a dez anos, e multa.
\n§ 1º - Se o crime é cometido por duas ou mais pessoas, ou com emprego de arma, aumenta-se a pena de um terço até metade.
\n§ 2º - Aplica-se à extorsão praticada mediante violência o disposto no § 3º do artigo anterior.
\n§ 3o Se o crime é cometido mediante a restrição da liberdade da vítima, e essa condição é necessária para a obtenção da vantagem econômica, a pena é de reclusão, de 6 (seis) a 12 (doze) anos, além da multa; se resulta lesão corporal grave ou morte, aplicam-se as penas previstas no art. 159, §§ 2o e 3o, respectivamente.
},
  :nome => "Extorsão",
  :capit => "Art. 158 - Constranger alguém, mediante violência ou grave ameaça, e com o intuito de obter para si ou para outrem indevida vantagem econômica, a fazer, tolerar que se faça ou deixar fazer alguma coisa.",
  :acao_penal => "",
  :competencia => "",
  :pena => "Reclusão, de quatro a dez anos, e multa."  
)

#10
Crime.create!(
:base => %{
Art. 163 - Destruir, inutilizar ou deteriorar coisa alheia:
\nPena - detenção, de um a seis meses, ou multa.
\nDano qualificado
\nParágrafo único - Se o crime é cometido:
\nI - com violência à pessoa ou grave ameaça;
\nII - com emprego de substância inflamável ou explosiva, se o fato não constitui crime mais grave
\nIII - contra o patrimônio da União, Estado, Município, empresa concessionária de serviços \npúblicos ou sociedade de economia mista;
\nIV - por motivo egoístico ou com prejuízo considerável para a vítima:
\nPena - detenção, de seis meses a três anos, e multa, além da pena correspondente à violência.
},
  :nome => "Dano",
  :capit => "Art. 163 - Destruir, inutilizar ou deteriorar coisa alheia.",
  :acao_penal => "",
  :competencia => "",
  :pena => "Detenção, de um a seis meses, ou multa"  
)

#11
Crime.create!(
:base => %{
Art. 171 - Obter, para si ou para outrem, vantagem ilícita, em prejuízo alheio, induzindo ou mantendo alguém em erro, mediante artifício, ardil, ou qualquer outro meio fraudulento:
\nPena - reclusão, de um a cinco anos, e multa.
\n§ 1º - Se o criminoso é primário, e é de pequeno valor o prejuízo, o juiz pode aplicar a pena conforme o disposto no art. 155, § 2º.
\n§ 2º - Nas mesmas penas incorre quem:
\nDisposição de coisa alheia como própria
\nI - vende, permuta, dá em pagamento, em locação ou em garantia coisa alheia como própria;
\nAlienação ou oneração fraudulenta de coisa própria
\nII - vende, permuta, dá em pagamento ou em garantia coisa própria inalienável, gravada de ônus ou litigiosa, ou imóvel que prometeu vender a terceiro, mediante pagamento em prestações, silenciando sobre qualquer dessas circunstâncias;
\nDefraudação de penhor
\nIII - defrauda, mediante alienação não consentida pelo credor ou por outro modo, a garantia pignoratícia, quando tem a posse do objeto empenhado;
\nFraude na entrega de coisa
\nIV - defrauda substância, qualidade ou quantidade de coisa que deve entregar a alguém;
\nFraude para recebimento de indenização ou valor de seguro
\nV - destrói, total ou parcialmente, ou oculta coisa própria, ou lesa o próprio corpo ou a saúde, ou agrava as conseqüências da lesão ou doença, com o intuito de haver indenização ou valor de seguro;
\nFraude no pagamento por meio de cheque
\nVI - emite cheque, sem suficiente provisão de fundos em poder do sacado, ou lhe frustra o pagamento.
\n§ 3º - A pena aumenta-se de um terço, se o crime é cometido em detrimento de entidade de direito público ou de instituto de economia popular, assistência social ou beneficência.
},
  :nome => "Estelionato",
  :capit => "Art. 171 - Obter, para si ou para outrem, vantagem ilícita, em prejuízo alheio, induzindo ou mantendo alguém em erro, mediante artifício, ardil, ou qualquer outro meio fraudulento.",
  :acao_penal => "",
  :competencia => "",
  :pena => "Reclusão, de um a cinco anos, e multa"  
)

#12
Crime.create!(
:base => %{
Art. 213. Constranger alguém, mediante violência ou grave ameaça, a ter conjunção carnal ou a praticar ou permitir que com ele se pratique outro ato libidinoso: 
\nPena - reclusão, de 6 (seis) a 10 (dez) anos.
\n§ 1o Se da conduta resulta lesão corporal de natureza grave ou se a vítima é menor de 18 (dezoito) ou maior de 14 (catorze) anos:
\nPena - reclusão, de 8 (oito) a 12 (doze) anos. 
\n§ 2o Se da conduta resulta morte:
\nPena - reclusão, de 12 (doze) a 30 (trinta) anos
},
  :nome => "Estupro",
  :capit => "Art. 213 - Constranger alguém, mediante violência ou grave ameaça, a ter conjunção carnal ou a praticar ou permitir que com ele se pratique outro ato libidinoso.",
  :acao_penal => "",
  :competencia => "",
  :pena => "Reclusão, de seis a dez anos."  
)