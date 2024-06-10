with Product as(
select PRODUCT_NAME,state,REGION,unit_sold,sum(amount) from 
DIM_PRODUCT A inner join 
FACT_SALES B on A.PRODUCT_ID=B.PRODUCT_ID
group by 
1,2,3,4)
select * from Product