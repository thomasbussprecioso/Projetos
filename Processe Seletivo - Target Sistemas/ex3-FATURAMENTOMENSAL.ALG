algoritmo "semnome"
var
   f: vetor[1..10] de real
   c, superiormediamensal, cmedia: inteiro
   maior, menor, mediamensal, soma: real

inicio

      cmedia <- 10

      para c <- 1 ate 10 faca
                escreva ("Digite o faturamento do dia",c,": R$")
                leia (f[c])
                
                soma <- soma + f[c]

                se c = 1 entao
                   menor <- f[c]
                fimse

                se (f[c] > maior) entao
                   maior <- f[c]
                fimse
                
                se (f[c] < menor) e (f[c] <> 0) entao
                   menor <- f[c]
                fimse
                
                se (f[c] = 0) entao
                   cmedia <- cmedia - 1
                fimse-
                
      fimpara
                mediamensal <- soma / cmedia
                
      para c <- 1 ate 10 faca
           se f[c] > mediamensal entao
              superiormediamensal <- superiormediamensal + 1
           fimse
      fimpara
             escreval ("----------------------------------------------")
             escreval ("O menor valor de faturamento no m?s foi: R$",menor,".")
             escreval ("O maior valor de faturamento no m?s foi: R$",maior,".")
             escreval ("A quantidade de dias que o faturamento di?rio foi superior a m?dia mensal foi",superiormediamensal,".")








fimalgoritmo