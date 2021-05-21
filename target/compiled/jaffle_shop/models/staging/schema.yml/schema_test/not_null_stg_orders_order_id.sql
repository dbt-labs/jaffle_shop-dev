
    
    



select count(*) as validation_errors
from "dbttest1"."public"."stg_orders"
where order_id is null


