
    
    



select count(*) as validation_errors
from "dbttest1"."public"."orders"
where gift_card_amount is null


