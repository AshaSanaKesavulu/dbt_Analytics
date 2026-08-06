select
    order_id,
    order_date,
    payment_finalized_date
from {{ ref('int_orders') }}
where payment_finalized_date < order_date