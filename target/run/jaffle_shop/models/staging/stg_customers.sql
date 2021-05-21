
  create view "dbttest1"."public"."stg_customers__dbt_tmp" as (
    with source as (
    select * from "dbttest1"."public"."raw_customers"

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        email

    from source

)

select * from renamed

--test customers
  );
