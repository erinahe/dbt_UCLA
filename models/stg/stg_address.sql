{{ config(materialized='table') }}

select * from {{source('mysql_rds_sakila','address')}}
WHERE _fivetran_deleted = FALSE 