{%macro update_rundate()%}

insert into Prod.dbt_logs(Model_Name,Schema_Name,Database_Name,CREATED_DATE) 
VALUES('{{ this }}','{{ this.schema}}','{{this.database}}',current_date)

{%endmacro%}