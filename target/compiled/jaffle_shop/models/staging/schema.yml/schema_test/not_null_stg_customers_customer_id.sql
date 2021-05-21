
    
    



select count(*) as validation_errors
from "dbttest1"."public"."stg_customers"
where customer_id is null


