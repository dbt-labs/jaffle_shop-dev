
    
    



select count(*) as validation_errors
from "dbttest1"."public"."orders"
where customer_id is null


