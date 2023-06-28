algoritmo "Ex02_CorrigiProvas"
var
   a: Inteiro
   soma, MT: Real
   gab: vetor[1..5] de caracter
   gabA: vetor[1..5] de caracter
   nome: vetor[1..3] de caracter
   notas: vetor[1..3] de real

 procedimento cadastro_gabarito()
 var
 q: Inteiro
 inicio
 EscrevaL("CADASTRO DE GABARITO")
      EscrevaL("--------------------")
      Para q <- 1 ate 5 faca
          Escreva("Questão", q,":")
          Leia(gab[q])
      FimPara
FimProcedimento

Funcao gabarito_aluno():Real
var
   q: Inteiro
   acertos: Real
inicio
      acertos <- 0
      EscrevaL("RESPOTAS DADAS")
      Para q <- 1 ate 5 faca
           Escreva("Questão", q,":")
           Leia(gabA[q])
           Se (Maiusc(gabA[q]) = Maiusc(gab[q])) entao
               acertos <- acertos + 2
           FimSe
      FimPara
      retorne acertos
FimFuncao

inicio

     cadastro_gabarito()
     LimpaTela
     Para a <- 1 ate 3 faca
          LimpaTela
          EscrevaL("--------------------")
          EscrevaL("ALUNO", a)
          EscrevaL("--------------------")
          Escreva("Nome: ")
          Leia(nome[a])
          notas[a] <- gabarito_aluno()
          soma <- soma + notas[a]
      FimPara
      
      LimpaTela
      
      EscrevaL("NOTAS FINAIS")
      EscrevaL("--------------------")
      
      Para a <- 1 ate 3 faca
           EscrevaL(nome[a]:10, notas[a])
      FimPara
      
      EscrevaL("--------------------")
      MT <- soma/3
      Escreva("Media da Turma: ", MT)


fimalgoritmo

gab = gabarito
gabA = gabarito aluno
MT = media da turma