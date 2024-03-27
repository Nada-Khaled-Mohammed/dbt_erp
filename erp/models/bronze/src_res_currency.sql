WITH  res_currency AS(
    SELECT * FROM {{source('erp_source_bronze_schema', 'src_res_currency')}}
)

SELECT * FROM res_currency