--Ex1: Quantos produtos temos da categoria 'artes'?

SELECT COUNT(product_category_name) as Quantidade, product_id, product_category_name
FROM tb_products

WHERE product_category_name = 'artes'

-- Resposta:

-- 55,"3aa071139cb16b67ca9e5dea641aaa2f","artes"


--Ex2: Quantos produtos tem mais de 5 litros?

SELECT count(*) as Quantidade,  count(distinct product_id) from tb_products

WHERE product_length_cm * product_height_cm * product_width_cm / 1000> 5

--limit 100
--Respota:
-- 19407
  
--Ex3: Crie uma coluna nova que contenha a informação de volume em m3
  
SELECT 
product_id,
product_category_name,
product_name_lenght,
product_description_lenght,
product_photos_qty,
product_weight_g,
product_length_cm,
product_height_cm,
product_width_cm,
product_length_cm * product_height_cm * product_width_cm / 1000000 as Volume from tb_products
--ALTER TABLE tb_products ADD Volume VARCHAR(255) NOT NULL DEFAULT;

--Ex4: Quantos produtos de 'beleza_saude' com menos de 1 litro?

SELECT count(*) as Quantidade,  count(distinct product_id) from tb_products

WHERE product_category_name == 'beleza_saude' AND (product_length_cm * product_height_cm * product_width_cm / 1000 < 1)

--Resposta:
-- 132
