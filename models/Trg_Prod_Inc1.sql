{{config(materialized='incremental',
          unique_key='SRC_PRODUCT_id')}}

select * from Prod.src_product1
{%if is_incremental()%}
where 
UPDATED_AT>(select max(UPDATED_AT) from {{this}})
{%endif%}
