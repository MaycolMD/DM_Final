
with __dbt__cte__hogares_dep_add_2018 as (
SELECT *, 2018 AS FECHA FROM `thinking-pillar-402721`.`hogares`.`hogares_dep_2018`
) SELECT
    * EXCEPT(ipm),
    ipm / 100 AS ipm
FROM __dbt__cte__hogares_dep_add_2018