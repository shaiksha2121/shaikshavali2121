{%snapshot emp_snap22%}
{{config(
    target_database='DBT_TEST',
    target_schema='Prod',
    unique_key='emp_id',
    strategy='check',
    check_cols=['emp_name','state']

)}}
select * from Prod.emp02
{%endsnapshot%}