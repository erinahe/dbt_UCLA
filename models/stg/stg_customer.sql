{{ config(materialized='table') }}

select * from {{source('mysql_rds_sakila','customer')}}
WHERE _fivetran_deleted = FALSE 

