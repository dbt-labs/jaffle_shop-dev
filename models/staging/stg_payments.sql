with source as (

    select * from {{ ref('raw_payments') }}

)

select * from source
