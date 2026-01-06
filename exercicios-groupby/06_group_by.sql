-- Qual dia da semana quem mais pedidos em 2025?
SELECT 
strftime('%w', substr(Dtcriacao, 1, 10)) AS diaSemana,
count(DISTINCT IdTransacao) AS qtdeTransacoes

FROM transacoes
WHERE substr(DtCriacao, 1, 4) = '2025'
GROUP BY diaSemana