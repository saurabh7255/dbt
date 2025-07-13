SELECT
    id,
    user_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price AS order_amount,
    date_format(created_at, 'yyyy-MM-dd') as order_date
FROM {{ ref("bronze_orders")}}