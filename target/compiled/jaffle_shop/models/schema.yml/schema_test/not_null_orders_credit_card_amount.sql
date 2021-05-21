
    
    



select count(*) as validation_errors
from "dbttest1"."public"."orders"
where credit_card_amount is null


