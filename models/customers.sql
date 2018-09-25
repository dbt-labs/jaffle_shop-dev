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
raw_customers.id
, raw_customers.first_name
, raw_customers.last_name
, raw_customers.email
, customer_orders.first_order
, customer_orders.most_recent_order
, customer_orders.number_of_orders
, customer_orders.total_order_amount
from {{ ref('base_customers') }} as raw_customers
left join customer_orders on raw_customers.id = customer_orders.customer_id
