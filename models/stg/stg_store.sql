{{ config(materialized='table') }}

select * from {{source('mysql_sakila','store')}}
WHERE _fivetran_deleted = FALSE 