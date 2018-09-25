with customer_orders as (
  select
  customer_id
  , min(order_date) as first_order
  , max(order_date) as most_recent_order
  , count(id) as number_of_orders
  , sum(amount) as total_order_amount
  from {{ ref('base_orders') }}
  group by 1
)

select
base_customers.id
, base_customers.first_name
, base_customers.last_name
, base_customers.email
, customer_orders.first_order
, customer_orders.most_recent_order
, customer_orders.number_of_orders
, customer_orders.total_order_amount
from {{ ref('base_customers') }} as base_customers
left join customer_orders on base_customers.id = customer_orders.customer_id
