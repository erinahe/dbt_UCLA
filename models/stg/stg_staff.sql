{{ config(materialized='table') }}

select * from {{source('mysql_rds_sakila','staff')}}
WHERE _fivetran_deleted = FALSE 