select 
    customerid,
    customername,
    segment,
    country,
    SUM(orderprofit) as Profit
    from {{ ref('stg_orders') }}
GROUP BY 1,2,3,4