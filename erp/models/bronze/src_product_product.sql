WITH  product_product AS(
    SELECT * FROM {{source('erp_source_bronze_schema', 'src_product_product')}}
)

SELECT * FROM product_product