select
    o.order_id,
    o.customer_id,
    o.order_date,
    o.status,
    r.order_revenue
from {{ ref('int_orders') }} o
left join {{ ref('int_order_revenue') }} r
    on o.order_id = r.order_id