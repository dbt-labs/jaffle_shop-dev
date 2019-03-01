with source as (

    select * from {{ ref('raw_orders') }}

)

select * from source
