WITH denormalized_currency_rate AS(

    SELECT curr.full_name AS currency_full_name,
           curr_rate.rate AS rate, 
           curr_rate.create_date AS create_date
    FROM {{source('erp_source_bronze_schema','src_res_currency')}} curr
    JOIN {{source('erp_source_bronze_schema','src_res_currency_rate')}} curr_rate
    ON curr.id = curr_rate.currency_id 
)

SELECT * FROM denormalized_currency_rate