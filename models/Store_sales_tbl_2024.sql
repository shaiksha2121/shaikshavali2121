{{config(materialized='table')}}
with store_sales_tbl_2024 as(
    select * from {{source('test_prod','store_sales')}}
)
select * from store_sales_tbl_2024