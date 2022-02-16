{{ config(materialized='table') }}

select * from {{source('mysql_rds_sakila','actor')}}
WHERE _fivetran_deleted = FALSE 