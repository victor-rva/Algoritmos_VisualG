algoritmo "ex01_DissecandoMatrizes"
var
   m: vetor [1..4, 1..4] de Inteiro
   op, l, c: Inteiro
   
Procedimento MostrarMatriz()
Inicio
      Para l <- 1 ate 4 faca
           Para c <- 1 ate 4 faca
                Escreva(m[l,c])
           FimPara
           EscrevaL()
      FimPara
FimProcedimento

Procedimento DiagonalPrincipal()
var:
t: Inteiro
Inicio
      Para l <- 1 ate 4 faca
           EscrevaL(m[l,l]:4)
                Para t <- 1 ate l faca
                     Escreva("   ")
                FimPara
      FimPara
FimProcedimento

Procedimento TrianguloSuperior()
var:
t: Inteiro
Inicio
      Para l <- 1 ate 3 faca
           Escreva("  ")
           Para c <- l+1 ate 4 faca
                Escreva(m[l,c]:4)
           FimPara
                  EscrevaL()
                  Para t <- 1 ate l faca
                       Escreva("  ")
                  FimPara
      FimPara
      EscrevaL()
FimProcedimento

Procedimento TrianguloInferior()
Inicio
      Para l <- 2 ate 4 faca
           EscrevaL()
           Para c <- 1 ate l-1 faca
                Escreva(m[l,c]:4)
           FimPara
      FimPara
      EscrevaL()
FimProcedimento

inicio
      Para l <- 1 ate 4 faca
           Para c <- 1 ate 4 faca
                Escreva("Digite valor para posição [", l, "," , c, "]")
                Leia(m[l,c])
           FimPara
      FimPara

      LimpaTela
      
      Repita
            EscrevaL()
            EscrevaL("MENU DE OPÇÕES")
            EscrevaL("=====================")
            EscrevaL("[1] Mostrar a Matriz")
            EscrevaL("[2] Diagonal Principal")
            EscrevaL("[3] Triangulo Superior")
            EscrevaL("[4] Triangulo Inferior")
            EscrevaL("[5] Sair")
            Leia(op)
            EscrevaL("=====================")
            EscrevaL("OPÇÃO: ")
            LimpaTela
            Escolha op
                   caso 1
                        MostrarMatriz()
                   caso 2
                        DiagonalPrincipal()
                   caso 3
                        TrianguloSuperior()
                   caso 4
                        TrianguloInferior()
                   caso 5
                        EscrevaL ("SAINDO...")
                   FimEscolha
            até (op = 5)
fimalgoritmo
op = opção
MM = Mostrar a matriz
diaP = diagonal principal
TriAngS = triangulo superior
TriangI = Triangulo Inferior