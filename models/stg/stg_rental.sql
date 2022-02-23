{{ config(materialized='table') }}

select * from {{source('mysql_rds_sakila','rental')}}
WHERE _fivetran_deleted = FALSE 