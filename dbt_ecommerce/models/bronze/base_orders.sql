{{ config(
    materialized = 'table',
    indexes=[
      {'columns': ['order_id'], 'unique': True},
    ]
)}}

WITH clean AS (
    -- tranformation part
    select *
    from {{ source('public', 'orders') }}
)
SELECT
    *,
    {{ status_mapping('status', 'numeric') }} as status_code,
    {{ status_mapping('status', 'text') }} as status_description
FROM
    clean