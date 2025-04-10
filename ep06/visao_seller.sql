select    seller_id
        , product_id
        , count(*) as qtde_produto
        , sum(price) as receita_produto

from tb_orders as t1

left join tb_order_items  as t2
on t1.order_id = t2.order_id

where order_status = 'delivered'

group by  seller_id
        , product_id

order by seller_id