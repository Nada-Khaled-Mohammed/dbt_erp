WITH  product_template AS(
    SELECT * FROM {{source('erp_source_bronze_schema', 'src_product_template')}}
)

SELECT * FROM product_template