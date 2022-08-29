{{
    config(
        materialized = 'table'
    )
}}

select
    Period as date,
    Accounts as account,
    Category as category,
    Subcategory as subcategory,
    trim(Note) as vendor,
    CAD as amount,
    TransactionType as transaction_type,
    Detail as detail
from {{ source('raw_gsheets', 'transactions_raw') }}
