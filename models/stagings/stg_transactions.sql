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
    REGEXP_REPLACE(coalesce(trim(Subcategory), trim(Category)), r'[^a-zA-Z\s]', '')  as subcategory,
    trim(Note) as vendor_name,
    CAD as amount,
    TransactionType as transaction_type,
    Detail as detail
from {{ source('raw_gsheets', 'transactions_raw') }}
