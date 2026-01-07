-- Qual dia da semana quem mais pedidos em 2025?
SELECT 
    CASE strftime('%w' , substr(Dtcriacao, 1, 10))
        WHEN '0' THEN 'Domingo'
        WHEN '1' THEN 'Segunda-feira'
        WHEN '2' THEN 'Terça-feira'
        WHEN '3' THEN 'Quarta-feira'
        WHEN '4' THEN 'Quinta-feira'
        WHEN '5' THEN 'Sexta-feira'
        WHEN '6' THEN 'Sábado'
    END AS Dia_da_Semana,
count(DISTINCT IdTransacao) AS qtdeTransacoes

FROM transacoes
WHERE substr(DtCriacao, 1, 4) = '2025'
GROUP BY Dia_da_Semana