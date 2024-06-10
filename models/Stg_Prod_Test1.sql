with Product as(
select A.PRODUCT_NAME,A.state,A.REGION,B.unit_sold,sum(amount) from 
Prod.DIM_PRODUCT A inner join 
Prod.FACT_SALES B on A.PRODUCT_ID=B.PRODUCT_ID
group by 
A.PRODUCT_NAME,A.state,A.REGION,B.unit_sold)
select * from Product