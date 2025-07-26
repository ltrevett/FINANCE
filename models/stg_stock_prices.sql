{{ config(materialized='table') }}

select 

    ticker,
    asset_class,
    primary_exchange_code,
    primary_exchange_name,
    variable,
    variable_name,
    date,
    value

from {{ source('FINANCE__ECONOMICS', 'STOCK_PRICE_TIMESERIES') }}
