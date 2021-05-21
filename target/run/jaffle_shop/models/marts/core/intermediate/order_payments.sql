

  create  table "dbttest1"."public"."order_payments__dbt_tmp"
  as (
    

with payments as (

    select * from "dbttest1"."public"."stg_payments"

),

final as (

    select
        order_id,

        sum(case when payment_method = 'credit_card' then amount else 0 end) as credit_card_amount,
        sum(case when payment_method = 'coupon' then amount else 0 end) as coupon_amount,
        sum(case when payment_method = 'bank_transfer' then amount else 0 end) as bank_transfer_amount,
        sum(case when payment_method = 'gift_card' then amount else 0 end) as gift_card_amount,
        sum(amount) as total_amount

    from payments

    group by 1

)

select * from final
  );