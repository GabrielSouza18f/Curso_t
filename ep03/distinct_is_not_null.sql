select distinct product_category_name
    
from tb_products

where product_category_name is not null

group by product_category_name