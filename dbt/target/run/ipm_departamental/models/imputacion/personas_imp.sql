
  
    

    create or replace table `thinking-pillar-402721`.`tablas_dep`.`personas_imp`
      
    
    

    OPTIONS()
    as (
      
with __dbt__cte__data_sabe_leerescribir_promedio as (
SELECT P6920, COUNT(*) OVER() AS cantidad
FROM `thinking-pillar-402721`.`tablas_dep`.`personas_dep`
WHERE P6920 IS NOT NULL
ORDER BY P6920
),  __dbt__cte__row_id_added as (
SELECT *, ROW_NUMBER() OVER () AS row_id
FROM  __dbt__cte__data_sabe_leerescribir_promedio
),  __dbt__cte__median_ as (
SELECT
    CASE
        WHEN MOD(cantidad, 2) = 0 THEN (SELECT AVG(CAST(P6920 AS INT64)) FROM __dbt__cte__row_id_added WHERE row_id BETWEEN cantidad/2 AND cantidad/2+1)
        ELSE (SELECT CAST(P6920 AS INT64) FROM __dbt__cte__row_id_added WHERE row_id = ROUND(cantidad/2))
    END AS median
    FROM __dbt__cte__row_id_added
    LIMIT 1
) SELECT * EXCEPT(P6920, median), IFNULL(CAST(P6920 AS INT64), median) as P6920
FROM `thinking-pillar-402721`.`tablas_dep`.`personas_dep`, __dbt__cte__median_
    );
  