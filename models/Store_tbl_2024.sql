{{config(materialized='table')}}
with store_tbl_2024 as(
    select * from {{source('test_prod','store')}}
)
select * from store_tbl_2024
