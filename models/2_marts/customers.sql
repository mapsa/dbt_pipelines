SELECT
    id AS customer_id,
    name,
FROM {{ ref('staging__customers')}}
