{{config(materalized='table')}}
with Cte1 as(
select * from Prod.Product
)
select * from Cte1