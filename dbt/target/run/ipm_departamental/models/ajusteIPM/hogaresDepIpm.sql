
  
    

    create or replace table `thinking-pillar-402721`.`tablas_dep`.`hogaresDepIpm`
      
    
    

    OPTIONS()
    as (
      
with __dbt__cte__hogares_dep_add_2019 as (
SELECT *, 2019 AS FECHA FROM `thinking-pillar-402721`.`hogares`.`hogares_dep_2019`
) SELECT
    * EXCEPT(ipm),
    ipm / 100 AS ipm
FROM __dbt__cte__hogares_dep_add_2019
    );
  