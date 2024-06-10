{%snapshot emp_snap33%}
{{config(
    target_database='DBT_TEST',
    target_schema='Prod',
    unique_key='emp_id',
    strategy='check',
    check_cols=['emp_name','state']

)}}
select * from Prod.emp03
{%endsnapshot%}