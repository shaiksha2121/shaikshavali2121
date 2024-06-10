{{config(materialized='table')}}
{%set pay_method=["bank_tran","credit","gift"]%}
select o_id,
{%for pay_method in ["bank_tran","credit","gift"]%}
sum(case when pay_method ='{{pay_method}}' then amount end) as {{pay_method}}_amount,
{%endfor%}
sum(amount)as total_amount
from {{ref('payment_cards')}}
group by 1