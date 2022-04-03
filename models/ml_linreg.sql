{{
    config(
        materialized = 'model',

        ml_config={
            'model_type': 'linear_reg',
            'early_stop': true,
            'ls_init_learn_rate': 2
        }
    )
}}

select * from {{ ref('train') }}