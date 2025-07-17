--Ex1: Quantos produtos temos da categoria 'artes'?

SELECT COUNT(product_category_name) as Quantidade, product_id, product_category_name
FROM tb_products

WHERE product_category_name = 'artes'

-- Resposta:

-- 55,"3aa071139cb16b67ca9e5dea641aaa2f","artes"


Ex2: Quantos produtos tem mais de 5 litros?

Ex3: Crie uma coluna nova que contenha a informação de volume em m3

Ex4: Quantos produtos de 'beleza_saude' com menos de 1 litro?
