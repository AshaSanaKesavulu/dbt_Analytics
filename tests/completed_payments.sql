select
    order_id,
    total_amount_paid
from {{ ref('int_orders') }}
where total_amount_paid < 0
  and total_amount_paid is not null