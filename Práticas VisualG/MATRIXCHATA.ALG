algoritmo "semnome"
var
   mat: vetor[1..4, 1..4] de inteiro
   l, c, resp, t: inteiro


inicio

      para l <- 1 ate 4 faca
           para c <- 1 ate 4 faca
                escreva ("Digite um número para a posição [", l, " X", c, " ]: ")
                leia (mat[l,c])
           fimpara
      fimpara
      limpatela
      
      escreval ("Menu de opções:")
      escreval ("---------------")
      
      repita

      escreval ()
      escreval ("[1] Mostrar matriz.")
      escreval ("[2] Diagonal principal.")
      escreval ("[3] Triângulo superior.")
      escreval ("[4] Triângulo inferior.")
      escreval ("[5] Sair.")
      escreval ()
      escreva ("Opção: ")
      leia (resp)
      escreval ()
      
      escolha resp
                  caso 1
                         limpatela
                         para l <- 1 ate 4 faca
                              para c <- 1 ate 4 faca
                              escreva (mat[l,c]:4)
                              fimpara
                              escreval ()
                         fimpara
                  caso 2
                  
                         limpatela
                         para l <- 1 ate 4 faca
                              escreval(mat[l,l]:4)
                              para c <- 1 ate l faca
                                   escreva ("    ")
                              fimpara
                         fimpara
                         
                  caso 3
                         limpatela
                         para l <- 1 ate 4 faca
                              escreva ("    ")
                              para c <- l + 1 ate 4 faca
                                   escreva (mat[l,c]:4)
                              fimpara
                              escreval ()
                              para t <- 1 ate l faca
                                   escreva ("    ")
                              fimpara
                         fimpara
                         
                  caso 4
                         limpatela
                         escreval ()
                         para l <- 2 ate 4 faca
                              escreval ()
                              para c <- 1 ate l - 1 faca
                                   escreva (mat[l,c]:4)
                              fimpara
                         fimpara
                         escreval ()
                         
                  caso 5
                         limpatela
                         escreva ("Encerrando!")

      fimescolha

      ate (resp = 5)



fimalgoritmo