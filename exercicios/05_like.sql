--Lista de produtos com nome que começa com “Venda de”;
SELECT idProduto,
       DescNomeProduto
  FROM produtos
 WHERE DescNomeProduto LIKE 'Venda de%';