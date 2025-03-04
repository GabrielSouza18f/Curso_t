-- qual a receita de cada categoria de produto?
-- e o total de vendas?
-- em unidades e em pedidos?

--select * from tb_products; -- tabela de produtos


--select * from tb_orders; -- tabela de vendas

-- Pega meus dados da esquerda que sai do from e preserva trazendo dados só da tabela T2
select 
        -- t1.*, -- para trazer tudo da primeira tabela
        t2.product_category_name,
        t1.order_id,
        t1.order_item_id,
        t1.product_id,
        t1.price

from tb_order_items as t1

left join tb_products as t2
on t1.product_id = t2.product_id

