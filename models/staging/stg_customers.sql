with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_customers') }}

),

renamed as (

    select
        1 as customer_id,
        first_name,
        last_name,
        email

    from source

)

select * from renamed
