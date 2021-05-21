
    
    



select count(*) as validation_errors
from (

    select
        payment_id

    from "dbttest1"."public"."stg_payments"
    where payment_id is not null
    group by payment_id
    having count(*) > 1

) validation_errors


