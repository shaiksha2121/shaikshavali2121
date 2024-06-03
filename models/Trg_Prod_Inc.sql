{{config(materialized='incremental',
          unique_key='PROD_ID')}}

select * from Prod.src_product
{%if is_incremental()%}
where 
UPDATED_DT>(select max(UPDATED_DT) from {{this}})
{%endif%}
