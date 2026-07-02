select
    oi.order_id,
    sum(
        oi.quantity * p.price
    ) as order_revenue
from {{ ref('stg_order_items') }} oi
inner join {{ ref('stg_products') }} p
    on oi.product_id = p.product_id
group by 1