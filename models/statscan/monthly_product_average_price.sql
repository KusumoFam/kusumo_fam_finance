select
    parse_date('%Y-%m', date_month) as date_month,
    cast(product_id as int64) as product_id,
    cast(value as float64) as value
from {{ source('statscan_raw', 'monthly_product_average_price') }}