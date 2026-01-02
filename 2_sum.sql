SELECT sum(QtdePontos) AS SomaDePontos,
  
    sum(Case 
        WHEN QtdePontos > 0 THEN QtdePontos
    END) AS QtDePontosPositivos,

   sum(Case 
   WHEN QtdePontos < 0 THEN QtdePontos
   END) AS QtDePontosNegativos,


   count(CASE
        WHEN QtdePontos < 0 THEN QtdePontos
    END) AS QtdeTransacoesNegativas


FROM transacoes
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'


ORDER BY qtdePontos;