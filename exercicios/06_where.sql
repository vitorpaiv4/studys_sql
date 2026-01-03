--Lista de produtos com nome que termina com “Lover”;
SELECT idproduto, 
       DescNomeProduto
FROM produtos
WHERE DescNomeProduto LIKE '%Lover%';

--Lista de produtos que são “chapéu” atv 8;
SELECT idproduto, 
       DescNomeProduto
FROM produtos
WHERE DescNomeProduto LIKE '%chapéu%';