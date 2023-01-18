algoritmo "semnome"
var
   gab, resp, nome: vetor[1..5] de caracter
   notaf: vetor[1..3] de real
   c, ca: inteiro
   m: real

inicio

      escreval ("Cadastro de gabarito")
      escreval ("--------------------")
      para c <- 1 ate 5 faca
           escreva ("Questão", c, ": ")
           leia (gab[c])
      fimpara
      limpatela
      
      para ca <- 1 ate 3 faca
           escreval ("-------")
           escreva ("Aluno: ")
           leia (nome[ca])
           para c <- 1 ate 5 faca
                escreva ("Questão", c, ": ")
                leia (resp[c])
                     se (resp[c] = gab[c]) entao
                     notaf[ca] <- notaf[ca] + 2
                     fimse
           fimpara

           m <- m + notaf[ca]
           se (ca = 3) entao
              m <- m / ca
           fimse
           limpatela
      fimpara

           escreval ("Médias")
           escreval ("------")
           para ca <- 1 ate 3 faca
                escreval (nome[ca], " nota: ", notaf[ca]:4:2, ".")
           fimpara
           
           escreval ("A média da turma é: ", m:4:2, ".")

      






fimalgoritmo