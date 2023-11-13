with __dbt__cte__data_sabe_leerescribir_promedio as (
SELECT P6920, COUNT(*) OVER() AS cantidad
FROM `thinking-pillar-402721`.`tablas_dep`.`personas_dep`
WHERE P6920 IS NOT NULL
ORDER BY P6920
) SELECT *, ROW_NUMBER() OVER () AS row_id
FROM  __dbt__cte__data_sabe_leerescribir_promedio