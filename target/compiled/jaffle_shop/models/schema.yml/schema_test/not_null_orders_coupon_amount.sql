
    
    



select count(*) as validation_errors
from "dbttest1"."public"."orders"
where coupon_amount is null


