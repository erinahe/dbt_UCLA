{{ config(materialized='table') }}

select * from {{source('mysql_sakila','actor')}}
WHERE _fivetran_deleted = FALSE 