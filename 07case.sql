SELECT IdCliente,  
       QtdePontos,
       CASE 
           WHEN QtdePontos <= 100 THEN 'BOSTINHA'
           WHEN QtdePontos <= 500 THEN 'PONEI'
           WHEN QtdePontos <= 1000 THEN 'PONEI PREMIUM'
           WHEN QtdePontos <= 5000 THEN 'MAGO APRENDIZ'
           WHEN QtdePontos <= 10000 THEN 'MAGO MESTRE'
           WHEN QtdePontos > 10000 THEN 'DRAGAO ANCIÃO'
       END AS NivelCliente,

       CASE 
           WHEN QtdePontos > 10000 THEN 'PARABÉNS, VOCÊ É UM DRAGÃO ANCIÃO!'
           WHEN QtdePontos > 5000 THEN 'INCRÍVEL! VOCÊ É UM MAGO MESTRE!'
           WHEN QtdePontos > 1000 THEN 'ÓTIMO! VOCÊ É UM MAGO APRENDIZ!'
           WHEN QtdePontos > 500 THEN 'BOM TRABALHO! VOCÊ É UM PONEI PREMIUM!'
           WHEN QtdePontos > 100 THEN 'VOCÊ É UM PONEI!'
           ELSE 'VOCÊ É UMA BOSTINHA!'
         END AS MensagemCliente

FROM clientes
ORDER BY QtdePontos DESC