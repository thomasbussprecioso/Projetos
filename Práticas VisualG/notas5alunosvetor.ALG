algoritmo "semnome"
var
   n: vetor[1..5] de real
   c, am: inteiro
   sm, m, maior: real

inicio

      para c <- 1 ate 5 faca
           escreva ("Nota", c, ": ")
           leia (n[c])
           sm <- sm + n[c]
              se (n[c] > maior) entao
                 maior <- n[c]
              fimse
      fimpara
      
             m <- sm / c
             escreval()
             escreval ("A média da turma é ", m:4:2, ".")
             
      para c <- 1 ate 5 faca
           se (n[c] > m) entao
              am <- am + 1
           fimse
      fimpara
      
             escreval()
             escreval (am, " alunos estão acima da média.")
             
      para c <- 1 ate 5 faca
           se (n[c] = maior) entao
              escreval()
              escreva ("A maior nota foi", maior, " e foi digitada na posição", c, ".")
           fimse
      fimpara
      

           












fimalgoritmo