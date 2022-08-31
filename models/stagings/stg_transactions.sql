{{
    config(
        materialized = 'table',
        schema = 'stg'
    )
}}

select
    Period as date,
    Accounts as account_name,
    trim(Category) as category,
    coalesce(trim(Subcategory), trim(Category)) as subcategory,
    trim(Note) as vendor_name,
    CAD as amount,
    TransactionType as transaction_type,
    Detail as detail
from {{ source('raw_gsheets', 'transactions_raw') }}
