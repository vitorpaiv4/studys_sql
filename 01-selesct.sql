SELECT 
DtCriacao,
   strftime('%d-%m-%Y - %wº dia da semana', DtCriacao) AS DtCriacaoNova
 FROM clientes
