{% docs __overview__ %}

## Data Documentation for Jaffle Shop

`jaffle_shop` is a fictional ecommerce store.

This [dbt](https://www.getdbt.com/) project is for demonstrations and tutorials.

The source code can be found [here](https://github.com/clrcrl/jaffle_shop).

{% enddocs %}

{% docs orders_status %}

Orders can be one of the following statuses:

| status         | description                                                                                                            |
|----------------|------------------------------------------------------------------------------------------------------------------------|
| placed         | The order has been placed but has not yet left the warehouse                                                           |
| shipped        | The order has ben shipped to the customer and is currently in transit                                                  |
| completed      | The order has been received by the customer                                                                            |
| return_pending | The customer has indicated that they would like to return the order, but it has not yet been received at the warehouse |
| returned       | The order has been returned by the customer and received at the warehouse                                              |


{% enddocs %}
