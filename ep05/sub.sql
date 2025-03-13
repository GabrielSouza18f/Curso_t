select t1.seller_state,
        avg(receita_total) as avg_seller

from (
       

        select   t3.seller_state
                ,t2.seller_id
                ,sum(t2.price) as receita_total
            
        from tb_orders as t1

        left join tb_order_items as t2
        on t1.order_id = t2.order_id

        left join tb_sellers as t3
        on t2.seller_id = t3.seller_id

        where t1.order_status = 'delivered'

        group by t3.seller_state, t2.seller_id

) as t1
 
group by t1.seller_state