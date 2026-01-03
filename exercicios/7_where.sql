--Lista de transações com o produto “Resgatar Ponei”
SELECT idtransacao,
        IdProduto
FROM transacao_produto
WHERE IdProduto = 15;

 

 ----produtos----
 SELECT idproduto, 
       DescNomeProduto
FROM produtos
WHERE DescNomeProduto LIKE '%Resgatar Ponei%';
