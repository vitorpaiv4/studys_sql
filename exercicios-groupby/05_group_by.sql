--qual o valor medio de pontos positivos por dia?
SELECT 
        sum(QtdePontos) AS TOTALPONTOS,
        count(substr(DtCriacao,1,10)) AS Quantidade_dias_repetidos,
        
               count(DISTINCT substr(DtCriacao,1,10)) AS Quantidade_dias_distintos,
 
        (sum(QtdePontos)) / count(DISTINCT substr(DtCriacao,1,10)) AS MEDIA_PONTOS_POR_DIA

FROM transacoes
WHERE QtdePontos > 0;