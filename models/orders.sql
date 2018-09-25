{% set payment_methods = ['credit_card', 'coupon', 'bank_transfer', 'gift_card'] %}
with order_payments as (
  select
  order_id,
  {% for payment_method in payment_methods -%}
  sum(case when payment_method = '{{payment_method}}' then amount else 0 end) as {{payment_method}}_amount,
  {% endfor %}
  sum(amount) as total_amount
  from {{ ref('raw_payments') }}
  group by 1
)

select
raw_orders.id
, raw_orders.customer_id
, raw_orders.order_date
, raw_orders.status
, raw_orders.amount
{% for payment_method in payment_methods -%}
, order_payments.{{payment_method}}_amount
{%- endfor %}
from {{ ref('raw_orders') }} as raw_orders
left join order_payments on order_payments.order_id = raw_orders.id
