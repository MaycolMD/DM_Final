
  
    

    create or replace table `thinking-pillar-402721`.`tablas_dep`.`hogaresDepIpm2020`
      
    
    

    OPTIONS()
    as (
      
with __dbt__cte__hogares_dep_add_2020 as (
SELECT *, 2020 AS FECHA FROM `thinking-pillar-402721`.`hogares`.`hogares_dep_2020`
) SELECT
    * EXCEPT(ipm),
    ipm / 100 AS ipm
FROM __dbt__cte__hogares_dep_add_2020
    );
  