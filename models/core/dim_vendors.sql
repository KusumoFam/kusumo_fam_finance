{{
    config(
        materialized = 'table',
    )
}}

select
    distinct
    {{ dbt_utils.surrogate_key(['vendor_name']) }} as vendor_id,
    vendor_name
from {{ ref('stg_transactions') }}
