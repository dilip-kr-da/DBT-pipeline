select
    order_item_id,
    order_id,
    product_id,
    quantity
from {{ source('ecommerce', 'order_items') }}