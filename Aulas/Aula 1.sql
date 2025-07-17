BD OLIST

SELECT * 

from tb_orders

--------------------------------------------------------------
SELECT * 

from tb_orders WHERE order_delivered_customer_date NOTNULL
--------------------------------------------------------------

SELECT price as preço, product_id as ID

from tb_order_items as toi
---------------------------------------------------------------

SELECT *

FROM tb_sellers
---------------------------------------------------------------

SELECT *

FROM tb_sellers where seller_city = 'rio de janeiro'
----------------------------------------------------------------

SELECT seller_id, seller_state

FROM tb_sellers
----------------------------------------------------------------
SELECT *

from tb_customers

limit 10
----------------------------------------------------------------
SELECT customer_id as Cliente, product_id as ID, price as Preço

from tb_orders as tbc 
INNER join tb_order_items as itens
on tbc.order_id = itens.order_id
GROUP by price
limit 20
------------------------------------------------------------------

SELECT customer_id as Cliente, product_id as ID, price as Preço

from tb_orders as tbc 
INNER join tb_order_items as itens
on tbc.order_id = itens.order_id
inner JOIN tb_order_payments as pay
on itens.order_id = pay.order_id
GROUP by ID
limit 20
------------------------------------------------------------------

SELECT product_id, product_category_name, product_photos_qty

FROM tb_products
------------------------------------------------------------------

SELECT product_id, product_category_name, product_photos_qty

FROM tb_products

WHERE product_category_name = 'bebes' AND product_photos_qty > 1
--------------------------------------------------------------------

SELECT product_id, product_category_name, product_photos_qty

FROM tb_products

WHERE ( product_category_name = 'bebes'
or product_category_name = 'perfumaria' ) AND product_photos_qty > 1
-----------------------------------------------------------------------

-- Bebes acima de uma foto ou perfume acima de 5 fotos
SELECT t1.product_id, t1.product_category_name, t1.product_photos_qty

FROM tb_products as t1

WHERE ( t1.product_category_name = 'bebes' and t1.product_photos_qty > 1  )

or ( t1.product_category_name = 'perfumaria' and t1.product_photos_qty > 5  )

order BY product_category_name

--------------------------------------------------------------------------------

