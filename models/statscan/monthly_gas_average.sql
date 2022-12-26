select
    parse_date('%Y-%m', month_date) as month_date,
    cast(value as float64) as value
from {{ source('statscan_raw', 'monthly_gas_average') }}