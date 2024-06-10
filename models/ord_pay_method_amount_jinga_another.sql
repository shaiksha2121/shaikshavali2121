{%set pay_method=["bank_tran","credit","gift"]%}
select o_id,
{%for pay_method in pay_method%}
sum(case when pay_method ='{{pay_method}}' then amount end) as {{pay_method}}_amount,
sum(amount)as total_amount
{% if not loop.last%},
{%endif%}
{%endfor%}
from {{ref('payment_cards')}}
group by 1