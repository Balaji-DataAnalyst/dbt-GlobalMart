select 
 o.orderid,
 o.orderdate,
 o.shipdate,
 o.shipmode,
 o.ordercp as costPrice,
 o.ordersp as sellingPrice,
 (o.ordersp - o.ordercp) as orderprofit,
 c.customerid,
 c.customername,
 c.segment,
 c.country,
 p.productid,
 p.productname,
 p.category,
 p.subcategory
from {{ ref('raw_orders') }} as o
Left Join {{ ref('raw_customer') }} as c 
on o.customerid = c.customerid
Left Join {{ ref('raw_product') }} as p
on p.productid = o.productid