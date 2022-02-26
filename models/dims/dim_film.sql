{{ config(materialized='table') }}

SELECT 	
    {{ dbt_utils.surrogate_key(['f.film_id']) }} as FILM_KEY,
    f.film_id,
	f.title,
	f.language_id,
	f.replacement_cost,
	f.rental_rate
FROM {{ ref('stg_film') }} f