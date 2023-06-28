algoritmo "MatrizIdentidade"
var
   mID: vetor[1..3, 1..3] de Inteiro
   i, j: Inteiro
inicio
      Para i <- 1 ate 3 faca
           Para j <- 1 ate 3 faca
                Se (i = j) entao
                   mID[i,j]<- 1
                Senao
                   mID[i,j] <- 0
                FimSe
           FimPara
      FimPara

      Para i <- 1 ate 3 faca
           Para j <- 1 ate 3 faca
                Escreva (mID[i, j]:3)
           FimPara
           EscrevaL()
      FimPara
fimalgoritmo

quando a matrizz é 3x3 ela possui uma matriz indentidade que é composta pelos
espaços que possuem a linha e coluna na mesma posição. Ex:
coluna 1 linha 1
coluna 2 linha 2
coluna 3 linha 3
Essa é a matriz identidade de 3a ordem. Se forem 4 colunas e 4 linhas tem será
uma matriz identidade 4a ordem, e assim por em diante