WITH  sale_order AS(
    SELECT * FROM {{source('erp_source_bronze_schema', 'src_sale_order')}}
)

SELECT * FROM sale_order