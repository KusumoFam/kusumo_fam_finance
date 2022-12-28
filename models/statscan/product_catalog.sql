select
    cast(id as int64) as product_id,
    name,
    unit_measurement as unit_of_measurement
from {{ source('statscan_raw', 'product_catalog') }}