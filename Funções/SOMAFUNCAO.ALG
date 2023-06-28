algoritmo "SomaFuncao"
var
   V1, V2: Inteiro
   
Funcao Soma(X,Y:Inteiro): Inteiro
Inicio
   Retorno X + Y
FimFuncao
inicio
      Escreva("Digite o primeiro valor:")
      Leia(V1)
      Escreva("Digite o segundo valor: ")
      Leia(V2)
      S<- Soma(V1, V2)
      EscrevaL("A soma entre", V1, "e", V2, "é igual a ",S)
fimalgoritmo