{{
    config(
        materialized = 'table',
    )
}}


select
    {{ dbt_utils.surrogate_key(['date', 'da.account_id', 'dc.category_id', 'dv.vendor_id', 'st.amount', 'st.transaction_type']) }} as transaction_id,
    date,
    da.account_id,
    dc.category_id,
    dv.vendor_id,
    st.amount,
    st.transaction_type,
    st.detail
from {{ ref('stg_transactions') }} st
join {{ ref('dim_accounts') }} da on st.account_name = da.account_name
join {{ ref('dim_categories') }} dc on st.category = dc.category and st.subcategory = dc.subcategory
join {{ ref('dim_vendors') }} dv on st.vendor_name = dv.vendor_name
