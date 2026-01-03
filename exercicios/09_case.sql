-- Listar todas as transações adicionando uma coluna extra
-- sinalizando "alto", "medio" e "baixo" para o valor dos pontos [ <10 ; <500; >= 500 ]

SELECT idtransacao,
       QtdePontos,
         CASE 
              WHEN QtdePontos < 10 THEN 'baixo'
              WHEN QtdePontos < 500 THEN 'medio'
              ELSE 'alto'
         END AS nivel_pontos
FROM transacoes
ORDER BY QtdePontos DESC;