with last_order as (
    select
        customer,
        max(ordered_at) as last_order_date
    from
        raw__orders
    group by
        customer
)

SELECT * FROM raw__customers
LEFT JOIN last_order
ON raw__customers.id = last_order.customer
