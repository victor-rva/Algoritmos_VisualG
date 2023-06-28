algoritmo "Ex03_ReservaCinema"
var
   cad: Inteiro
   B: vetor [1..10] de caracter
   R, nop: caracter
   
   Procedimento Reserva_Cinema()
   var
   L: Inteiro
inicio

      LimpaTela
      Para L <- 1 ate 10 faca
           Se (B[L] = "") entao
              Escreva("[ B", L, " ]")
           Senao
              Escreva("[---]")
           FimSe
      FimPara
      FimProcedimento
 Inicio
      Repita
      LimpaTela
      Reserva_Cinema()
      EscrevaL("")
      Escreva("------------------------------------------------------------------")
      EscrevaL("")
      Escreva("Reservar a cadeira: B")
      Leia(cad)
      Se (B[cad] = "") então
         B[cad] <- "X"
         Escreva("Cadeira B", cad, " Reservada!")
      Senao
           Escreva("ERRO: Está cadeira já está reservada")
      FimSe
           Escreva("Quer reservar outro? [S/N]")
           Leia (R)
      Ate (R = "N") ou (R = "n")

fimalgoritmo