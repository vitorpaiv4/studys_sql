SELECT round(avg(QtdePontos), 2) AS MediaDePontos,
       sum(QtdePontos) / count(Distinct IdCliente) AS MediaDePontosPorCliente,
       min(QtdePontos) AS MenorQtdePontos,
         max(QtdePontos) AS MaiorQtdePontos,
         sum(flTwitch) AS TotalDeClientesTwitch,
         sum(flEmail) AS TotalDeClientesEmail
FROM clientes;