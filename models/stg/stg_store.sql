{{ config(materialized='table') }}

select * from {{source('mysql_rds_sakila','store')}}
WHERE _fivetran_deleted = FALSE 