{{ config(materialized='table') }}

select * from {{source('mysql_rds_sakila','dim_date')}}