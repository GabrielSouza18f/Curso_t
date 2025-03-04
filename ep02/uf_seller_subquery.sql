-- Sub-query
select t1. *
from(
    select
            seller_state,
            count(*) as qtde_vendedor

    from tb_sellers

    group by seller_state
    order by qtde_vendedor desc
) as t1

where t1.qtde_vendedor > 10