WITH sales as (
    select 
    sales_id,
    product_sk,
    customer_sk,
    {{ multiply('unit_price', 'quantity') }} as calculate_price,
    gross_amount,
    payment_method
     from {{ ref('bronze_sales') }}
),
products as (
    select 
    product_sk,
    category
     from {{ ref('bronze_product') }}
),
customer as (
    select 
    customer_sk,
    gender
     from {{ ref('bronze_customer') }}
),
{# This query joins the sales, products, and customer tables #}
joint_query as (
select 
    s.sales_id,
    p.category,
    c.gender,
    s.gross_amount,
    s.payment_method
from sales s
join products p on s.product_sk = p.product_sk   
join customer c on s.customer_sk = c.customer_sk
)
{# This query aggregates sales data by product category and customer gender #}
select 
category,
gender,
sum(gross_amount) as total_sales
from joint_query
group by
category,
gender
order by
total_sales desc

{# Note - this is not just a one big table(OBT),
basically a kpi that created in the silver layer on the basis of the requirements 
 #}
