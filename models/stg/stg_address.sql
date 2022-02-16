{{ config(materialized='table') }}

select * from {{source('mysql_sakila','address')}}
WHERE _fivetran_deleted = FALSE 