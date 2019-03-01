with customers as (

    select * from {{ ref('stg_customers') }}

),

customer_orders as (

    select * from {{ ref('customer_orders') }}

),


final as (

    select
        customers.id,
        customers.first_name,
        customers.last_name,
        customers.email,
        customer_orders.first_order,
        customer_orders.most_recent_order,
        customer_orders.number_of_orders,
        customer_orders.total_order_amount

    from customers

    left join customer_orders on customers.id = customer_orders.customer_id

)

select * from final
