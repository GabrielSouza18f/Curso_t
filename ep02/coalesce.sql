-- Para achar valores nulos e substituir
select distinct coalesce (product_category_name, 'outros') as categoria_fillna

from tb_products

order by product_category_name


-- A função COALESCE verifica os valores na ordem definida e retorna o primeiro valor não nulo encontrado. 
-- Se todos forem NULL, ela retorna o último argumento, que no seu caso é 0.
select 
        tel1,
        tel2,
        tel_cel,
        tel_cel2,
        coalece(tel_cel, tel_cel2, tel1, tel2, 0) as melhor_tel

from contato
