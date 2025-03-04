
select
        seller_state,
        count(*) as qtde_vendedor

from tb_sellers

-- Filtro pré agg (agregação)
where seller_state in ('SP', 'RJ', 'PR')

group by seller_state

-- Filtro pos agg (agregação)
having count(*) > 10