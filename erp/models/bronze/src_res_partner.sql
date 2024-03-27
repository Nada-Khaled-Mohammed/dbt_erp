WITH  res_partner AS(
    SELECT * FROM {{source('erp_source_bronze_schema', 'src_res_partner')}}
)

SELECT * FROM res_partner