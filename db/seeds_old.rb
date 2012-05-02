# encoding: UTF-8
Usuario.create!(
  :nome => "Administrador",
  :sobrenome => "(SysAdmin)",
  :email => "admin@crimes.com", 
  :password => "sysadmin",
  :password_confirmation => "sysadmin"
)

Usuario.create!(
  :nome => "Nailton",
  :sobrenome => "Gomes",
  :email => "nailtongomes@ig.com.br", 
  :password => "123456",
  :password_confirmation => "123456"
)

Crime.create!(
  :nome => "Homicídio",
  :conceito => "É a supressão da vida humana extrauterina praticada por outra pessoa. ",
  :bem => "Vida humana exterior ao útero materno.",
  :objeto => "É o ser humano que suporta a conduta criminosa.",
  :n_tipo => "Matar",
  :t_crime => "Crime de forma livre",
  :capit => "Art. 121 - Matar alguém",
  :s_ativo => "Crime comum: praticado por qualquer pessoa.",
  :s_passivo =>  "Qualquer pessoa, desde que já nascida e viva.",
  :e_subj => "Dolo, direto ou eventual. Há modalidade culposa.",
  :ele_subj_tipo_esp => "Não há. ",
  :consumacao => "Crime Material: cessação da atividade encefálica. ",
  :admite_tent => "Sim",
  :acao_penal => "Pública Incondicionada",
  :competencia => "Justiça Estadual/Tribunal do Juri",
  :b_doutrinaria => "Cleber Rogério Masson",
  :classificacao => "Crime simples; comum; material; de dano; de forma livre; comissivo ou omissivo; instantâneo; unissubjetivo, unilateral ou de concurso eventual; em regra, plurissubsistente; e progressivo.",
  :pena => "Reclusão, de seis a vinte anos."    
)

Modalidade.create!(
  :crime_id => "1",
  :titulo => "Homicídio Privilegiado",
  
  :b_legal => %{
<p>§ 1º Se o agente comete o crime impelido por motivo de relevante valor social ou moral, ou sob o domínio de violenta emoção, logo em seguida a injusta provocação da vítima...</p> 
},

  :pena => "A pena poderá ser reduzida de um sexto a um terço.",
   
  :anotacoes => %{
<p><b>Por motivo de relevante valor social:</b> diz respeito ao interesse de toda a coletividade.</p>
<p><b>Por motivo de relevante valor moral:</b> interesses particulares do sujeito ativo.</p>
<p><b>Domínio de violenta emoção, logo em seguida a injusta provocação da vítima:</b> é o homicídio emocional, decorrente de intenso choque emocional. A resposta deve ser imediata, sob pena de transmudação em vingança.</p>
}
)

Modalidade.create!(
  :crime_id => "1",
  :titulo => "Homicídio qualificado",
  
  :b_legal => %{
<p>§ 2° Se o homicídio é cometido:</p> 
<p>I - mediante paga ou promessa de recompensa, ou por outro motivo torpe;</p> 
<p>II - por motivo futil;</p>
<p>III - com emprego de veneno, fogo, explosivo, asfixia, tortura ou outro meio insidioso ou cruel, ou de que possa resultar perigo comum;</p>
<p>IV - à traição, de emboscada, ou mediante dissimulação ou outro recurso que dificulte ou torne impossivel a defesa do ofendido;</p>
<p>V - para assegurar a execução, a ocultação, a impunidade ou vantagem de outro crime.</p>
},

  :pena => "Reclusão, de doze a trinta anos.",
   
  :anotacoes => %{
<p>Inciso I: Cirscunstância de caráter subjetiva. Vingança pode ou não configurar motivo torpe, dependerá do caso concreto.</p>
<p>Inciso II: Cirscunstância de caráter subjetiva. Ausência de motivo não significa futilidade.</p>
<p>Inciso II: Cirscunstância de caráter objetiva. Só é homicídio qualificado por tortura quando esta é a causa da morte, do contrário poderá haver concurso material de homicídio com o crime autônomo de tortura.</p>
<p>Inciso IV: Cirscunstância de caráter objetiva. Necessário que a surpresa seja totalmente imprevisível.</p>
<p>Inciso V: Cirscunstância de caráter Subjetiva.</p>
}
)

Modalidade.create!(
  :crime_id => "1",
  :titulo => "Homicídio Culposo",
  
  :b_legal => %{
<p>§ 3º Se o homicídio é culposo:</p> 
},

  :pena => "Detenção, de um a três anos.",
   
  :anotacoes => %{
<p>A culpa decorre de negligência (ausência de precaução), imprudência (afoiteza), imperícia (falta de aptidão técnica).</p>
<p>O agente não quer o resultado ilícito, sua finalidade inicial é lícita. Sequer assume o risco de produzi-lo.</p>
}
)

Crime.create!(
  :nome => "Induzimento, instigação ou auxílio a suicídio",
  :conceito => "Suicídio é a destruição deliberada da própria vida. É também chamado de autocídio ou autoquíria.",
  :bem => "Vida humana exterior ao útero materno.",
  :objeto => "É o ser humano que suporta a conduta criminosa.",
  :n_tipo => "Induzir, Instigar e/ou Auxiliar",
  :t_crime => "Crime de forma livre",
  :capit => "Art. 122 - Induzir ou instigar alguém a suicidar-se ou prestar-lhe auxílio para que o faça.",
  :s_ativo => "Crime comum: praticado por qualquer pessoa.",
  :s_passivo =>  "Qualquer pessoa, desde que possua um mínimo de capacidade de resistência e de discernimento.",
  :e_subj => "Dolo, direto ou eventual. Não há modalidade culposa",
  :ele_subj_tipo_esp => "Não há. ",
  :consumacao => "Crime Material: cessação da atividade encefálica. ",
  :admite_tent => "Sim",
  :acao_penal => "Pública Incondicionada",
  :competencia => "Tribunal do Júri",
  :classificacao => "Crime simples; comum; de dano; comissivo ou omissivo; material; condicionado; de forma livre; instantâneo; unissubjetivo, unilateral ou de concurso eventual; e, em regra, plurissubsistente.",
  :b_doutrinaria => "Cleber Rogério Masson",
  :pena => "Reclusão, de dois a seis anos, se o suicídio se consuma; ou reclusão, de um a três anos, se da tentativa de suicídio resulta lesão corporal de natureza grave."  
)


Crime.create!(
  :nome => "Infanticídio",
  :conceito => "Em seu sentido etimológico significa a morte de um infante. ",
  :bem => "Vida humana exterior ao útero materno.",
  :objeto => "É a criança, nascente ou recém-nascida, contra quem se dirige a conduta criminosa.",
  :n_tipo => "Matar",
  :t_crime => "Crime de forma livre",
  :capit => "Art. 123 - Matar, sob a influência do estado puerperal, o próprio filho, durante o parto ou logo após.",
  :s_ativo => "Genitora sob influência do estado puerperal.",
  :s_passivo =>  "Nascente ou recém-nascido (neonato).",
  :e_subj => "Dolo, direto ou eventual. Não há modalidade culposa",
  :ele_subj_tipo_esp => "Não há. ",
  :consumacao => "Crime Material: dá-se com a morte do nascente ou neonato. ",
  :admite_tent => "Sim",
  :acao_penal => "Pública Incondicionada",
  :competencia => "Tribunal do Júri",
  :classificacao => "Crime próprio; de dano; comissivo ou omissivo; material; de forma livre; instantâneo; unissubjetivo; unilateral ou de concurso eventual; em regra, plurissubsistente; e progressivo.",
  :b_doutrinaria => "Cleber Rogério Masson",
  :pena => "Detenção, de dois a seis anos."  
)

Crime.create!(
  :nome => "Aborto",
  :conceito => "Aborto é a interrupção da gravidez, da qual resulta a morte do produto da concepção.",
  :bem => "Vida humana interior ao útero materno.",
  :objeto => "O feto.",
  :n_tipo => "Provocar ou Consentir",
  :t_crime => "Crime de forma livre",
  :capit => "Art. 124 - Provocar aborto em si mesma ou consentir que outrem lho provoque; Art. 125 - Provocar aborto, sem o consentimento da gestante; Art. 126 - Provocar aborto com o consentimento da gestante.",
  :s_ativo => "Gestante pelo art. 124 e, nos demais casos, qualquer pessoa.",
  :s_passivo =>  "Feto e, pelo art. 125, feto e gestante.",
  :e_subj => "Dolo, direto ou eventual. Não há modalidade culposa",
  :ele_subj_tipo_esp => "Não há. ",
  :consumacao => "Crime Material: dá-se com a morte do feto. É prescindível a expulsão do produto da concepção.",
  :admite_tent => "Sim, em todas as modalidades de aborto criminoso.",
  :acao_penal => "Pública Incondicionada",
  :competencia => "Tribunal do Júri",
  :classificacao => "Crime próprio (art. 124) ou comum (arts. 125 e 126); de dano; comissivo ou omissivo; material; de forma livre; instantâneo; unissubjetivo, unilateral ou de concurso eventual ou plurissubjetivo ou de concurso necessário; em regra, plurissubsistente; e progressivo.",
  :b_doutrinaria => "Cleber Rogério Masson",
  :pena => "Detenção, de um a três anos (124); Reclusão, de três a dez anos (125); Reclusão, de um a quatro anos (126)."  
)

Crime.create!(
  :nome => "Lesão Corporal",
  :conceito => "É a ofensa humana direcionada à integridade corporal ou à saúde de outra pessoa, seja do ponto de vista anatômico ou seja do ponto de vista fisiológico ou mental.",
  :bem => "Incolumidade física em sentido amplo.",
  :objeto => "É a pessoa humana que suporta a conduta criminosa.",
  :n_tipo => "Ofender",
  :t_crime => "Crime de forma livre",
  :capit => "Art. 129 - Ofender a integridade corporal ou a saúde de outrem.",
  :s_ativo => " Crime comum: praticado por qualquer pessoa.",
  :s_passivo =>  " Qualquer pessoa.",
  :e_subj => "Dolo, direto ou eventual. Há modalidade culposa",
  :ele_subj_tipo_esp => "Não há. ",
  :consumacao => "Crime de Dano: se consuma com a efetiva lesão à integridade corporal ou à saúde da vítima.",
  :admite_tent => "Sim, em todas as modalidades de lesão dolosa.",
  :acao_penal => "Pública Condicionada à representação ou Incondicionada, conforme a capitulação.",
  :competencia => "Juizado Especial Criminal ou Justiça Estadual, conforme a pena em abstrato.",
  :classificacao => "Crime comum; de dano; comissivo ou omissivo; material; de forma livre; instantâneo; unissubjetivo, unilateral ou de concurso eventual; em regra, plurissubsistente.",
  :b_doutrinaria => "Cleber Rogério Masson",
  :pena => "Detenção, de três meses a um ano."  
)

Modalidade.create!(
  :crime_id => "5",
  :titulo => "Lesão corporal de natureza grave",
  
  :b_legal => %{
<p>§1º  Se resulta:</p>
<p>I – incapacidade para as ocupações habituais por mais de 30 dias;</p>
<p>II – perigo de vida;</p>
<p>III – debilidade permanente de membro, sentido ou função;</p>
<p>IV – aceleração de parto.</p> 
},

  :pena => "Reclusão, de um a cinco anos.",
   
  :anotacoes => %{
<p>Inciso I - trata não apenas de ocupações laborais, mas também atividades costumeiras, rotineiras. O que deve incapacitar é a lesão, e não a vergonha da lesão.</p>
<p>Inciso II - trata de inciso que só comporta modalidade culposa.</p>
<p>Inciso III - debilidade significa enfraquecimento, diminuição da capacidade funcional.</p>
<p>Inciso IV - o feto deve nascer com vida, senão será lesão gravíssima e deve ter o conhecimento da gravidez, senão será só lesão leve.</p>
}
)

Modalidade.create!(
  :crime_id => "5",
  :titulo => "Lesão corporal de natureza gravíssima",
  
  :b_legal => %{
<p>§2º Se resulta:</p>
<p>I – incapacidade permanente para o trabalho;</p>
<p>II – enfermidade incurável;</p>
<p>III – perda ou inutilização de membro, sentido ou função;</p>
<p>IV – deformidade permanente;</p>
<p>V – aborto;</p> 
},

  :pena => "Reclusão, de dois a oito anos.",
   
  :anotacoes => %{
<p>Inciso I - deve ser uma incapacidade genérica para o trabalho, não necessariamente apenas do trabalho exercido pela vítima..</p>
<p>Inciso II - enfermidade incurável é uma doença ainda sem remédio pela medicina atual ou que envolva tratamento de intervenção cirúrgica arriscada ou tratamento incerto.</p>
<p>Inciso III - perda é a ablação, via mutilação ou amputação. No caso de órgãos duplos, para consumar tem de perder ou inutilizar ambos.</p>
<p>Inciso IV - trata-se de um dano estético de grave relevância e visível que causa vexame à vítima e repulsa a quem vê.</p>
<p>Inciso V - trata de inciso que só comporta modalidade culposa.</p>
}
)

Modalidade.create!(
  :crime_id => "5",
  :titulo => "Lesão corporal seguida de morte",
  
  :b_legal => %{
<p>§3º Se resulta morte e as circunstâncias evidenciam que o agente não quis o resultado, nem assumiu o risco de produzi-lo:</p> 
},

  :pena => "Reclusão, de quatro a doze anos.",
   
  :anotacoes => %{
<p>Trata-se de crime preterdoloso.</p>
}
)

Crime.create!(
  :nome => "Perigo de contágio venéreo",
  :conceito => "...",
  :bem => "Incolumidade física em sentido amplo.",
  :objeto => "É a pessoa humana que pratica relação sexual ou qualquer ato libidinoso com o sujeito contaminado pela doença venérea.",
  :n_tipo => "Expor",
  :t_crime => "De forma vinculada",
  :capit => "Art. 130 - Expor alguém, por meio de relações sexuais ou qualquer ato libidinoso, a contágio de moléstia venérea, de que sabe ou deve saber que está contaminado.",
  :s_ativo => "Crime próprio ou especial: praticado por qualquer pessoa infectada por moléstia venérea.",
  :s_passivo =>  "Qualquer pessoa.",
  :e_subj => "Dolo de perigo, direto ou eventual. Não há modalidade culposa",
  :ele_subj_tipo_esp => "Não há. ",
  :consumacao => "Crime de Perigo e Formal: se consuma com a prática da relação sexual ou do ato libidinoso, independente de contaminação.",
  :admite_tent => "Sim.",
  :acao_penal => "Pública Condicionada à representação.",
  :competencia => "Juizado Especial Criminal ou Justiça Estadual, conforme a pena em abstrato.",
  :classificacao => "Crime próprio e de mão própria; simples; de perigo presumido ou abstrato (caput) ou de perigo com dolo de dano; comissivo; formal; de forma vinculada; instantâneo; unissubjetivo, unilateral ou de concurso eventual; em regra, plurissubsistente.",
  :b_doutrinaria => "Cleber Rogério Masson",
  :pena => "Detenção de três meses a um ano e multa."  
)

Crime.create!(
  :nome => "Perigo de contágio de moléstia grave",
  :conceito => "Moléstia grave é qualquer enfermidade que acarreta séria perturbação da saúde.",
  :bem => "A vida e saúde do ser humano.",
  :objeto => "É a pessoa humana submetida à conduta apta a produzir o contágio de moléstia grave.",
  :n_tipo => "Praticar",
  :t_crime => "De forma livre",
  :capit => "Art. 131 - Praticar, com o fim de transmitir a outrem moléstia grave de que está contaminado, ato capaz de produzir o contágio.",
  :s_ativo => "Crime próprio: praticado por qualquer pessoa infectada por moléstia grave.",
  :s_passivo =>  "Qualquer pessoa.",
  :e_subj => "Dolo de perigo direto. Não há modalidade culposa",
  :ele_subj_tipo_esp => "Com o fim de transmitir.",
  :consumacao => "Crime de Perigo e Formal: se consuma com a prática da relação sexual ou do ato libidinoso, independente de contaminação.",
  :admite_tent => "Sim.",
  :acao_penal => "Pública Incondicionada.",
  :competencia => "Justiça Estadual",
  :classificacao => "Crime próprio; comissivo e, excepcionalmente, omissivo impróprio ou comissivo por omissão; formal; de forma livre; instantâneo; unissubjetivo, unilateral ou de concurso eventual; unissubsistente ou plurissubsistente.",
  :b_doutrinaria => "Cleber Rogério Masson",
  :pena => ""  
)

Crime.create!(
  :nome => "Abandono de incapaz",
  :conceito => "...",
  :bem => "A vida, a saúde e a segurança do ser humano.",
  :objeto => "É a pessoa humana incapaz de defender-se dos riscos resultantes do abandono.",
  :n_tipo => "Abandonar",
  :t_crime => "De forma livre",
  :capit => "Art. 133 - Abandonar pessoa que está sob seu cuidado, guarda, vigilância ou autoridade, e, por qualquer motivo, incapaz de defender-se dos riscos resultantes do abandono.",
  :s_ativo => "Crime próprio: praticado por pessoa que tem o incapaz sob seu cuidado, guarda, vigilância ou autoridade.",
  :s_passivo =>  "É o incapaz de defender-se dos riscos resultantes do abandono e que estava sob a guarda, cuidado, vigilância ou autoridade do sujeito ativo.",
  :e_subj => "Dolo de perigo, direto ou eventual. Não há modalidade culposa",
  :ele_subj_tipo_esp => "...",
  :consumacao => "No momento do abandono, desde que resulte perigo concreto.",
  :admite_tent => "Sim, apenas na modalidade comissiva.",
  :acao_penal => "Pública Incondicionada.",
  :competencia => "Justiça Estadual",
  :classificacao => "Crime próprio; comissivo ou omissivo; formal; de forma livre; instantâneo e de efeitos permanentes; de perigo concreto, unissubjetivo, unilateral ou de concurso eventual; unissubsistente ou plurissubsistente.",
  :b_doutrinaria => "Cleber Rogério Masson",
  :pena => "Detenção de seis meses a três anos."  
)

Crime.create!(
  :nome => "Omissão de Socorro",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 135 - Deixar de prestar assistência, quando possível fazê-lo sem risco pessoal, à criança abandonada ou extraviada, ou à pessoa inválida ou ferida, ao desamparo ou em grave e iminente perigo; ou não pedir, nesses casos, socorro da autoridade pública.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção de um a seis meses ou multa."  
)

Crime.create!(
  :nome => "Maus tratos",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 136 - Expor a perigo a vida ou a saúde de pessoa sob sua autoridade, guarda ou vigilância, para fim de educação, ensino, tratamento ou custódia, quer privando-a de alimentação ou cuidados indispensáveis, quer sujeitando-a a trabalho excessivo ou inadequado, quer abusando de meios de correção ou disciplina.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de dois meses a um ano, ou multa"  
)

Crime.create!(
  :nome => "Rixa",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 137 - Participar de rixa, salvo para separar os contendores.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de quinze dias a dois meses, ou multa."  
)

Crime.create!(
  :nome => "Calúnia",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 138 - Caluniar alguém, imputando-lhe falsamente fato definido como crime.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de seis meses a dois anos, e multa"  
)

Crime.create!(
  :nome => "Difamação",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 139 - Difamar alguém, imputando-lhe fato ofensivo à sua reputação.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de três meses a um ano, e multa."  
)

Crime.create!(
  :nome => "Injúria",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 140 - Injuriar alguém, ofendendo-lhe a dignidade ou o decoro.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão de um a três anos e multa."  
)

Crime.create!(
  :nome => "Constrangimento Ilegal",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 146 - Constranger alguém, mediante violência ou grave ameaça, ou depois de lhe haver reduzido, por qualquer outro meio, a capacidade de resistência, a não fazer o que a lei permite, ou a fazer o que ela não manda.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de três meses a um ano, ou multa."  
)

Crime.create!(
  :nome => "Ameaça",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 147 - Ameaçar alguém, por palavra, escrito ou gesto, ou qualquer outro meio simbólico, de causar-lhe mal injusto e grave.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de um a seis meses, ou multa"  
)

Crime.create!(
  :nome => "Seqüestro e cárcere privado",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 148 - Privar alguém de sua liberdade, mediante seqüestro ou cárcere privado.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de um a três anos."  
)

Crime.create!(
  :nome => "Redução a condição análoga à de escravo",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 149 - Reduzir alguém a condição análoga à de escravo, quer submetendo-o a trabalhos forçados ou a jornada exaustiva, quer sujeitando-o a condições degradantes de trabalho, quer restringindo, por qualquer meio, sua locomoção em razão de dívida contraída com o empregador ou preposto.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de dois a oito anos, e multa, além da pena correspondente à violência."  
)

Crime.create!(
  :nome => "Violação de domicílio",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 150 - Entrar ou permanecer, clandestina ou astuciosamente, ou contra a vontade expressa ou tácita de quem de direito, em casa alheia ou em suas dependências.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de um a três meses, ou multa."  
)

Crime.create!(
  :nome => "Furto",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 155 - Subtrair, para si ou para outrem, coisa alheia móvel.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de um a quatro anos, e multa."  
)

Crime.create!(
  :nome => "Roubo",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 157 - Subtrair coisa móvel alheia, para si ou para outrem, mediante grave ameaça ou violência a pessoa, ou depois de havê-la, por qualquer meio, reduzido à impossibilidade de resistência.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de quatro a dez anos, e multa."  
)

Crime.create!(
  :nome => "Extorsão",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 158 - Constranger alguém, mediante violência ou grave ameaça, e com o intuito de obter para si ou para outrem indevida vantagem econômica, a fazer, tolerar que se faça ou deixar fazer alguma coisa.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de quatro a dez anos, e multa."  
)

Crime.create!(
  :nome => "Extorsão mediante seqüestro",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 159 - Seqüestrar pessoa com o fim de obter, para si ou para outrem, qualquer vantagem, como condição ou preço do resgate.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de oito a quinze anos."  
)

Crime.create!(
  :nome => "Dano",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 163 - Destruir, inutilizar ou deteriorar coisa alheia.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de um a seis meses, ou multa"  
)

Crime.create!(
  :nome => "Apropriação Indébita",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 168 - Apropriar-se de coisa alheia móvel, de que tem a posse ou a detenção.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de um a quatro anos, e multa."  
)

Crime.create!(
  :nome => "Apropriação indébita previdenciária",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 168-A. Deixar de repassar à previdência social as contribuições recolhidas dos contribuintes, no prazo e forma legal ou convencional.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de 2 (dois) a 5 (cinco) anos, e multa."  
)

Crime.create!(
  :nome => "Estelionato",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 171 - Obter, para si ou para outrem, vantagem ilícita, em prejuízo alheio, induzindo ou mantendo alguém em erro, mediante artifício, ardil, ou qualquer outro meio fraudulento.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de um a cinco anos, e multa"  
)

Crime.create!(
  :nome => "Receptação",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 180 - Adquirir, receber, transportar, conduzir ou ocultar, em proveito próprio ou alheio, coisa que sabe ser produto de crime, ou influir para que terceiro, de boa-fé, a adquira, receba ou oculte.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de um a quatro anos, e multa"  
)

Crime.create!(
  :nome => "Violação de direito autoral",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 184. Violar direitos de autor e os que lhe são conexos.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de três meses a um ano, ou multa."  
)

Crime.create!(
  :nome => "Aliciamento de trabalhadores de um local para outro do território nacional",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 207 - Aliciar trabalhadores, com o fim de levá-los de uma para outra localidade do território nacional.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de um a três anos, e multa."  
)

Crime.create!(
  :nome => "Ultraje a culto e impedimento ou perturbação de ato a ele relativo",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 208 - Escarnecer de alguém publicamente, por motivo de crença ou função religiosa; impedir ou perturbar cerimônia ou prática de culto religioso; vilipendiar publicamente ato ou objeto de culto religioso.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de um mês a um ano, ou multa."  
)

Crime.create!(
  :nome => "Destruição, subtração ou ocultação de cadáver",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 211 - Destruir, subtrair ou ocultar cadáver ou parte dele.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de um a três anos, e multa."  
)

Crime.create!(
  :nome => "Vilipêndio a cadáver",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 212 - Vilipendiar cadáver ou suas cinzas.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de um a três anos, e multa."  
)

Crime.create!(
  :nome => "Estupro",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 213 - Constranger alguém, mediante violência ou grave ameaça, a ter conjunção carnal ou a praticar ou permitir que com ele se pratique outro ato libidinoso.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de seis a dez anos."  
)

Crime.create!(
  :nome => "Violação sexual mediante fraude",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 215 - Ter conjunção carnal ou praticar outro ato libidinoso com alguém, mediante fraude ou outro meio que impeça ou dificulte a livre manifestação de vontade da vítima.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de dois a seis anos."  
)

Crime.create!(
  :nome => "Assédio sexual",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 216-A - Constranger alguém com o intuito de obter vantagem ou favorecimento sexual, prevalecendo-se o agente da sua condição de superior hierárquico ou ascendência inerentes ao exercício de emprego, cargo ou função.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de um a dois anos."  
)

Crime.create!(
  :nome => "Estupro de vulnerável",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 217-A - Ter conjunção carnal ou praticar outro ato libidinoso com menor de 14 (catorze) anos.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de oito a quinze anos."  
)

Crime.create!(
  :nome => "Corrupção de menores",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 218 - Induzir alguém menor de 14 (catorze) anos a satisfazer a lascívia de outrem.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de dois a cinco anos."  
)

Crime.create!(
  :nome => "Satisfação de lascívia mediante presença de criança ou adolescente",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 218-A - Praticar, na presença de alguém menor de 14 (catorze) anos, ou induzi-lo a presenciar, conjunção carnal ou outro ato libidinoso, a fim de satisfazer lascívia própria ou de outrem.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de dois a quatro anos."  
)

Crime.create!(
  :nome => "Favorecimento da prostituição ou outra forma de exploração sexual de vulnerável",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 218-B - Submeter, induzir ou atrair à prostituição ou outra forma de exploração sexual alguém menor de 18 (dezoito) anos ou que, por enfermidade ou deficiência mental, não tem o necessário discernimento para a prática do ato, facilitá-la, impedir ou dificultar que a abandone.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de quatro a dez anos."  
)

Crime.create!(
  :nome => "Mediação para servir à lascívia de outrem",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 227 - Induzir alguém a satisfazer a lascívia de outrem.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de um a três anos."  
)

Crime.create!(
  :nome => "Favorecimento da prostituição ou outra forma de exploração sexual",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 228 - Induzir ou atrair alguém à prostituição ou outra forma de exploração sexual, facilitá-la, impedir ou dificultar que alguém a abandone.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de dois a cinco anos, e multa."  
)

Crime.create!(
  :nome => "Casa de prostituição",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 229 - Manter, por conta própria ou de terceiro, estabelecimento em que ocorra exploração sexual, haja, ou não, intuito de lucro ou mediação direta do proprietário ou gerente.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de dois a cinco anos, e multa."  
)

Crime.create!(
  :nome => "Rufianismo",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 230 - Tirar proveito da prostituição alheia, participando diretamente de seus lucros ou fazendo-se sustentar, no todo ou em parte, por quem a exerça.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de um a quatro anos, e multa."  
)

Crime.create!(
  :nome => "Tráfico internacional de pessoa para fim de exploração sexual",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 231 - Promover ou facilitar a entrada, no território nacional, de alguém que nele venha a exercer a prostituição ou outra forma de exploração sexual, ou a saída de alguém que vá exercê-la no estrangeiro.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de três a oito anos."  
)

Crime.create!(
  :nome => "Tráfico interno de pessoa para fim de exploração sexual",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 231-A - Promover ou facilitar o deslocamento de alguém dentro do território nacional para o exercício da prostituição ou outra forma de exploração sexual.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Reclusão, de dois a seis anos."  
)

Crime.create!(
  :nome => "Ato obsceno",
  :conceito => "",
  :bem => "",
  :objeto => "",
  :n_tipo => "",
  :t_crime => "",
  :capit => "Art. 233 - Praticar ato obsceno em lugar público, ou aberto ou exposto ao público.",
  :s_ativo => "",
  :s_passivo =>  "",
  :e_subj => "",
  :ele_subj_tipo_esp => "",
  :consumacao => "",
  :admite_tent => "",
  :acao_penal => "",
  :competencia => "",
  :classificacao => "",
  :b_doutrinaria => "",
  :pena => "Detenção, de três meses a um ano, ou multa."  
)