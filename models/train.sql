{{
    config(
        materialized='table'
    )
}}
select * except(split_col) from {{ ref('features') }} where split_col = 'training'