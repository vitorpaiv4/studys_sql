SELECT  sum(QtdePontos) AS SomaDePontos,
   QtdePontos,
   sum(Case
   WHEN QtdePontos > 0 THEN QtdePontos
   END) AS QtDePontosPositivos,
   sum(Case 
   WHEN QtdePontos < 0 THEN QtdePontos
   END) AS QtDePontosNegativos
FROM transacoes