
    
    



select count(*) as validation_errors
from "dbttest1"."public"."orders"
where order_id is null


