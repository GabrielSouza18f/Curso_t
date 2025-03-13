

select   t3.seller_state
        ,sum(t2.price) as receita_total
        ,sum(t2.price) / count(distinct t2.seller_id) as avg_receita_seller
        ,count(distinct t2.seller_id) as qtde_sellers

from tb_orders as t1

left join tb_order_items as t2
on t1.order_id = t2.order_id

left join tb_sellers as t3
on t2.seller_id = t3.seller_id

where t1.order_status = 'delivered'

group by t3.seller_state