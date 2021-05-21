
    
    



select count(*) as validation_errors
from "dbttest1"."public"."stg_payments"
where payment_id is null


