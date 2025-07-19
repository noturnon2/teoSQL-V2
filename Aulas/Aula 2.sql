SELECT product_category_name,
        max(product_weight_g) as maior_peso,
		min(product_weight_g) as menor_peso,
        ROUND(avg(product_weight_g), 2) as media
        
FROM tb_products

GROUP BY product_category_name

---------------------------------------------------------------

SELECT product_category_name,
		COUNT(*) as Quantidade,
        max(product_weight_g) as maior_peso,
		min(product_weight_g) as menor_peso,
        ROUND(avg(product_weight_g), 2) as media
        
FROM tb_products

GROUP BY product_category_name

---------------------------------------------------------------

SELECT product_category_name,
		COUNT(*) as Quantidade,
        max(product_weight_g) as maior_peso,
		min(product_weight_g) as menor_peso,
        ROUND(avg(product_weight_g), 2) as media
        
FROM tb_products

WHERE product_category_name IS NOT NULL

GROUP BY product_category_name

----------------------------------------------------------------

SELECT product_category_name,
		COUNT(*) as Quantidade,
        max(product_weight_g) as maior_peso,
		min(product_weight_g) as menor_peso,
        ROUND(avg(product_weight_g), 2) as media
        
FROM tb_products
--Isso vem antes do group by (no processamento)
WHERE product_category_name IS NOT NULL
AND product_category_name != 'alimentos'
And product_category_name <> 'agro_industria_e_comercio'

GROUP BY product_category_name

---------------------------------------------------------------------

-- SELECT * from tb_sellers

SELECT seller_state as Estado, COUNT(*) as qtde_Vendedores from tb_sellers

GROUP BY seller_state

---------------------------------------------------------------------

SELECT seller_state as Estado, COUNT(*) as qtde_Vendedores from tb_sellers

WHERE seller_state IN ('SP','RJ','MG')

GROUP BY seller_state

---------------------------------------------------------------------

SELECT seller_state as Estado, COUNT(*) as qtde_Vendedores from tb_sellers

GROUP BY seller_state

HAVING qtde_Vendedores > 10

---------------------------------------------------------------------

-- Sub Querie
SELECT *

from ( SELECT seller_state as Estado, COUNT(*) as qtde_Vendedores from tb_sellers

GROUP BY seller_state ) as t1

WHERE t1.qtde_Vendedores > 10

---------------------------------------------------------------------

SELECT seller_state as Estado, COUNT(*) as qtde_Vendedores from tb_sellers
-- Filtro pré agregação
WHERE seller_state in ( 'SP', 'RJ', 'PR', 'AC' )

GROUP BY seller_state
-- Filtro pós agregação 
HAVING COUNT(*) > 10

---------------------------------------------------------------------