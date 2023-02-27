algoritmo "semnome"
var
   SP, RJ, MG, ES, Outros, ftotalmensal: real
   resp: inteiro
inicio

      repita

      SP <- 67836.43
      RJ <- 36678.66
      MG <- 29229.88
      ES <- 27165.48
      Outros <- 19849.53
      
      ftotalmensal <- SP + RJ + MG + ES + Outros
      
      escreval ("--------------------------")
      escreval ("[1] para percentual de SP.")
      escreval ("[2] para percentual de RJ.")
      escreval ("[3] para percentual de MG.")
      escreval ("[4] para percentual de ES.")
      escreval ("[5] para percentual de Outros.")
      escreval ("[6] para SAIR.")
      escreval ("--------------------------")
      leia (resp)
      limpatela
      escreval
      
      escolha resp
      
              caso 1
                   SP <- (SP * 100) / ftotalmensal
                   escreval ("O percentual de SP é ",SP:4:2,"%.")

              caso 2
                   RJ <- (RJ * 100) / ftotalmensal
                   escreval ("O percentual de RJ é ",RJ:4:2,"%.")
                   
              caso 3
                   MG <- (MG * 100) / ftotalmensal
                   escreval ("O percentual de MG é ",MG:4:2,"%.")
                   
              caso 4
                   ES <- (ES * 100) / ftotalmensal
                   escreval ("O percentual de ES é ",ES:4:2,"%.")
                   
              caso 5
                   Outros <- (Outros * 100) / ftotalmensal
                   escreval ("O percentual de Outros é ",Outros:4:2,"%.")

      fimescolha

      
      ate resp = 6
      
      
      
      
      
      
      
      
fimalgoritmo