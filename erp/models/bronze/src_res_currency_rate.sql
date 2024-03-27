
/*
    No need to rename this file to be the same name as specified
    in sources.yml
*/
-- {{ config(materialized='table') }}
WITH  res_currency_rate AS(
    SELECT * FROM {{source('erp_source_bronze_schema', 'src_res_currency_rate')}}
)

SELECT * FROM res_currency_rate