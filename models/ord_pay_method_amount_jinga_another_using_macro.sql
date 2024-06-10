{{config(materialized='table')}}
with cte1 as
(select o_id,
{% for pay_method in pay_methods() %}
sum(case when pay_method ='{{pay_method}}' then amount end) as {{pay_method}}_amount
{% if not loop.last %},
{% endif %}
{% endfor %}
from {{ref('payment_cards')}}
group by 1)
where amount is not null
