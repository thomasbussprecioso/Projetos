algoritmo "Fibonacci"

var

   resp, n, teste1, teste2, auxiliar1, auxiliar2: inteiro
   aux1, aux2: real
   
inicio

      repita

      escreval ("Digite [1] para iniciar ou [2] para finalizar o programa: ")
      leia (resp)
            
      se resp = 1 entao
         escreva ("Digite um número para verificar: ")
         leia(n)
         escreval
         
         teste1 <- (5*n*n + 4)
         teste2 <- (5*n*n - 4)
         aux1 <- raizq(teste1)
         aux2 <- raizq(teste2)
         auxiliar1 <- int(aux1)
         auxiliar2 <- int(aux2)
         
         se (raizq(teste1) = auxiliar1) ou (raizq(teste2) = auxiliar2) entao
            escreval ("---------------------------------")
            escreval ("Faz parte da sequência Fibonacci.")
            escreval ("---------------------------------")
            escreval
         senao
              escreval ("-------------------------------------")
              escreval ("Não faz parte da sequência Fibonacci.")
              escreval ("-------------------------------------")
              escreval
         fimse
      fimse
      
      ate resp = 2









fimalgoritmo
