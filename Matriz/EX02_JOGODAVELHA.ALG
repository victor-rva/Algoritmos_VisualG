algoritmo "Ex02_JOGODAVELHA"
var
   v: vetor [1..3, 1..3] de Caracter
   L, C, Cont,Po: Inteiro
   Simb: Caracter
   R: Logico
   

Procedimento InicioJogoV()
inicio
      EscrevaL("+---+---+---+")
      Para L <- 1 ate 3 faca
           Para C <- 1 ate 3 faca
               Escreva("|  ", v[L,C]:1)
           FimPara
           Escreva("|")
           EscrevaL()
           EscrevaL("+---+---+---+")
      FimPara
FimProcedimento

Procedimento MudarJogador()
Inicio
      Se (Simb = "X") entao
         Simb <- "O"
      Senao
         Simb <- "X"
      FimSe
FimProcedimento

Funcao Jogar(S: Caractere; P: Inteiro):Logico
var
mudou: Logico
Inicio
      mudou <- Falso
      Para L <- 1 ate 3 faca
          Para C <- 1 ate 3 faca
             Se (v[L,C] = NumpCarac(P)) entao
                v[L,C] <- S
                mudou <- Verdadeiro
              FimSe
          FimPara
      FimPara
      retorne mudou
FimFuncao

Funcao TerminouJogo(): Logico
var
terminou: Logico
ocorr: Inteiro
Inicio
      terminou <- Falso
      // Jogos em linha
      Para L <- 1 ate 3 faca
         Se (v[L,1] = v[L,2]) e (v[L,2] = v[L,3]) entao
            terminou <- Verdadeiro
         FimSe
      FimPara
      // Jogos em coluna
      Para C <- 1 ate 3 faca
         Se (v[1,C] = v[2,C]) e (v[2,C] = v[3,C]) entao
            terminou <- Verdadeiro
         FimSe
      FimPara
      // Jogos em diagonal
      Se (v[1,1] = v[2,2]) e (v[2,2] = v[3,3]) entao
         terminou <- Verdadeiro
      FimSe
      
      Se (v[1,3] = v[2,2]) e (v[2,2] = v[3,1]) entao
         terminou <- Verdadeiro
      FimSe
      // Deu Velha
      ocorr <- 0
      Para L <- 1 ate 3 faca
          Para C <- 1 ate 3 faca
               Se (v[L,C] <> "X") e (v[L,C] <> "Y") entao
                  ocorr <- ocorr + 1
               FimSe
          FimPara
      FimPara
      
      Se (ocorr = 0) entao
         terminou <- Verdadeiro
      FimSe
      
retorne terminou
FimFuncao

Inicio
Cont <-1
Simb <- "X"
     Para L <- 1 ate 3 faca
      Para C <- 1 ate 3 faca
           v[L,C] <- numpcarac(cont)
           Cont <- Cont + 1
      FimPara
     FimPara
     
     InicioJogoV()
     
     Repita
      Repita
      EscrevaL ("Vai jogar [", Simb:1, "] em qual posição?")
      Leia (Po)
      R <- Jogar(Simb, Po)
       Se (R = falso) entao
          EscrevaL("JOGADA INVÁLIDA!")
       FimSe
       Ate (R = verdadeiro)
       
       MudarJogador()
       
       LimpaTela
       
       InicioJogoV()
       
      Ate (TerminouJogo() = verdadeiro)
      EscrevaL("JOGO ENCERRADO!")
fimalgoritmo