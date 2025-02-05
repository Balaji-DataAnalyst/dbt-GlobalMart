with orders as  (
    select * from
    {{ ref('raw_orders') }}
)
select 
    orderid,
    SUM(ordersp) as total_price
from    
    orders
group by 1
having total_price <= 0