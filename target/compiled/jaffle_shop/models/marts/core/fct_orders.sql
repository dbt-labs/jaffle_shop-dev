

with orders as (

    select * from "dbttest1"."public"."stg_orders"

),

order_payments as (

    select * from "dbttest1"."public"."order_payments"

),

final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        orders.status,

        order_payments.credit_card_amount,

        order_payments.coupon_amount,

        order_payments.bank_transfer_amount,

        order_payments.gift_card_amount,

        order_payments.total_amount as amount

    from orders

    left join order_payments using (order_id)

)

select * from final