with last_order as (
    select
        customer,
        max(ordered_at) as last_order_date
    from
        orders
    group by
        customer
)

SELECT * FROM customers
LEFT JOIN last_order
ON customers.id = last_order.customer
