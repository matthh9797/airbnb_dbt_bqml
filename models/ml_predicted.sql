{{
    config(
        materialized='table'
    )
}}

with predict_features as (
    select      * except(label)
    from        {{ ref('test') }}
)
select * from {{ dbt_ml.predict(ref('ml_linreg'), 'predict_features') }}