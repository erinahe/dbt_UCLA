{{ config(materialized='table') }}

select * from {{source('mysql_rds_sakila','film')}}
WHERE _fivetran_deleted = FALSE 