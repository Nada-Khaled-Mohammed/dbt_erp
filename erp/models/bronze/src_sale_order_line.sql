WITH  sale_order_line AS(
    SELECT * FROM {{source('erp_source_bronze_schema', 'src_sale_order_line')}}
)

SELECT * FROM sale_order_line