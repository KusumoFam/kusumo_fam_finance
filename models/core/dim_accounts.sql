{{
    config(
        materialized = 'table',
    )
}}

select
    distinct
    {{ dbt_utils.surrogate_key(['account_name']) }} as account_id,
    account_name
from {{ ref('stg_transactions') }}
