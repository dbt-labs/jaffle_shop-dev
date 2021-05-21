
    
    



select count(*) as validation_errors
from "dbttest1"."public"."orders"
where bank_transfer_amount is null


