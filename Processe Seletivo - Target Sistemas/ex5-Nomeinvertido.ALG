algoritmo "semnome"
var
   n: caracter
   c: inteiro

inicio

      escreval ("Digite seu nome: ")
      leia (n)
      
      para c <- compr(n) ate 1 passo -1 faca
           escreva (copia(n,c,1))
      fimpara






fimalgoritmo