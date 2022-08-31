{{
    config(
        materialized = 'table',
    )
}}

select
    distinct
    {{ dbt_utils.surrogate_key(['category', 'subcategory']) }} as category_id,
    category,
    subcategory
from {{ ref('stg_transactions') }}
