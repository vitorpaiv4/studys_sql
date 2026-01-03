--quantos produtos são de RPG?
SELECT COUNT(*) AS QtdeProdutosRPG
FROM produtos
WHERE DescCategoriaProduto LIKE '%RPG%';


--outras formas--
SELECT DescCategoriaProduto,
       COUNT(*) AS QtdeProdutos
FROM produtos
GROUP BY DescCategoriaProduto;