{{
    config(
        materialized = 'table',
    )
}}

select
    distinct
    {{ dbt_utils.surrogate_key(['category', 'subcategory']) }} as category_id,
    category,
    REGEXP_REPLACE(subcategory, r'[^a-zA-Z\s]', '') as subcategory
from {{ ref('stg_transactions') }}
