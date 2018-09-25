{% set payment_methods = ['credit_card', 'coupon', 'bank_transfer', 'gift_card'] %}
with order_payments as (
  select
  order_id,
  {% for payment_method in payment_methods -%}
  sum(case when payment_method = '{{payment_method}}' then amount else 0 end) as {{payment_method}}_amount,
  {% endfor -%}
  sum(amount) as total_amount
  from {{ ref('base_payments') }}
  group by 1
)

select
base_orders.id
, base_orders.customer_id
, base_orders.order_date
, base_orders.status
, base_orders.amount
{% for payment_method in payment_methods -%}
, order_payments.{{payment_method}}_amount
{% endfor -%}
from {{ ref('base_orders') }} as base_orders
left join order_payments on order_payments.order_id = base_orders.id
