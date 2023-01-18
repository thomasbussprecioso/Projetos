algoritmo "semnome"
var
   b: vetor[1..10] de caractere
   c, cad: inteiro
   r: caracter



inicio

      repita
            para c <- 1 ate 10 faca
            se (b[c] = "") entao
               escreva ("[B", c, "]")
            senao
                escreva ("[----]")
           fimse
           fimpara
      
           escreval ()
           escreva ("Escolha o lugar: B")
           leia (cad)
                se (b[cad] = "") entao
                   b[cad] <- "X"
                senao
                     escreval("Lugar OCUPADO.")
                fimse
                escreva("Deseja escolher outro lugar? [S/N]")
                leia (r)
                limpatela

      ate (r = "N") ou (r = "n")













fimalgoritmo