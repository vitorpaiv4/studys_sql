-- Qual o produto com mais pontos transacionados?
SELECT 
    IdTransacao,
    sum(QtdePontos) AS TotalPontos
FROM transacoes
GROUP BY IdTransacao
ORDER BY TotalPontos DESC