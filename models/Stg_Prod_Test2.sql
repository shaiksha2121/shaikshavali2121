with Product as(
select A.PRODUCT_ID,A.PRODUCT_NAME,A.state,A.REGION,B.unit_sold from 
Prod.DIM_PRODUCT A inner join 
Prod.FACT_SALES B on A.PRODUCT_ID=B.PRODUCT_ID
)
select * from Product