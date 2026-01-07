--qual mês tivemos mais lista de presença assinadas?
SELECT 
       substr(t1.Dtcriacao, 1, 7) AS AnoMes,
       COUNT(DISTINCT t1.IdTransacao) AS TotalListasDePresenca,
       t1.IdTransacao,
       t3.DescCategoriaProduto
FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescCategoriaProduto = 'Lista de presença'

GROUP BY substr(t1.Dtcriacao, 1, 7)