-- x1. Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria
SELECT product_category_name,
	   round(avg(product_description_lenght), 2) as Tam_medio_descr,
       max(product_description_lenght) as Tam_max_descr,
       min(product_description_lenght) as Tam_min_descr
from tb_products

order BY product_category_name

---Resposta:
-- 771.5 | 3992 | 4

-- Ex2. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria
	
SELECT product_category_name,
	   round(avg(product_name_lenght), 2) as Tam_medio_descr,
       max(product_name_lenght) as Tam_max_descr,
       min(product_name_lenght) as Tam_min_descr
from tb_products

-- Respotsa

order BY product_category_name
-- Ex3. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 100.

-- Ex4. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 100. Exiba apenas as categorias com tamanho médio de descrição do objeto maior que 500 caracteres.
