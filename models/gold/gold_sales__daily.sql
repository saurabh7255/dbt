
{{
    config(
        materialized='view'
    )
}}

SELECT
    o.order_date,
    u.city,
    u.state,
    sum(o.order_amount) as total_revenue
FROM {{ ref("orders")}} o
LEFT JOIN {{ ref("users")}} u
ON o.user_id = u.id
GROUP BY all