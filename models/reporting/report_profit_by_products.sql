select 
    productid,
    productname,
    category,
    subcategory,
    SUM(orderprofit) as Profit
from {{ ref('stg_orders') }}
GROUP BY 1,2,3,4