with source as (

    select * from {{ ref('raw_customers') }}

)

select * from source
