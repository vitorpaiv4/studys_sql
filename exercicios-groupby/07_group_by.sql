--Qual o produto mais transacionado?
SELECT 
    IdTransacao,
    count(DISTINCT IdTransacao) AS Quantidade_Transacoes
FROM transacoes
GROUP BY IdProuto
ORDER BY Quantidade_Transacoes DESC