{{config(materialized='table')}}
select o_id,
sum(case when pay_method ='bank_tran' then amount end) as ban_tran_amount,
sum(case when pay_method ='credit' then amount end) as credit_amount,
sum(case when pay_method ='gift' then amount end) as gift_amount,
sum(amount) as total_amount
from {{ref('payment_cards')}}
group by 1