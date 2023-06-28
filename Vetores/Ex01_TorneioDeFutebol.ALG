Algoritmo "Ex01:TorneioDeFutebol"
var
      nome: vetor[1..3] de Caracter
      t, i: Inteiro
inicio
      EscrevaL("---------------------")
      EscrevaL("CAMPEONATO DE FUTEBOL")
      EscrevaL("---------------------")

      Para t <- 1 ate 3 faca
           EscrevaL("Nome do", t, "o. time: ")
           Leia(nome[t])
      FimPara

      LimpaTela
      EscrevaL("------------------")
      EscrevaL("TABELA DE PARTIDAS")
      EscrevaL("------------------")

      Para i <- 1 ate 3 faca
           Para t <- 1 ate 3 faca
                Se (i <> t) entao
                   EscrevaL(nome[i], "[] x []", nome[t])
                FimSe
           FimPara
      FimPara
fimalgoritmo