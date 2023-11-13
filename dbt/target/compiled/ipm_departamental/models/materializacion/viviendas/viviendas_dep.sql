
with __dbt__cte__viviendas_dep_add_2018 as (
SELECT *, 2018 AS FECHA FROM `thinking-pillar-402721`.`viviendas`.`viviendas_dep_2018`
),  __dbt__cte__viviendas_dep_add_2019 as (
SELECT *, 2019 AS FECHA FROM `thinking-pillar-402721`.`viviendas`.`viviendas_dep_2019`
),  __dbt__cte__viviendas_dep_add_2020 as (
SELECT *, 2020 AS FECHA FROM `thinking-pillar-402721`.`viviendas`.`viviendas_dep_2020`
),  __dbt__cte__viviendas_dep_add_2021 as (
SELECT *, 2021 AS FECHA FROM `thinking-pillar-402721`.`viviendas`.`viviendas_dep_2021`
),  __dbt__cte__viviendas_dep_add_2022 as (
SELECT *, 2022 AS FECHA FROM `thinking-pillar-402721`.`viviendas`.`viviendas_dep_2022`
) SELECT * FROM __dbt__cte__viviendas_dep_add_2018
UNION ALL
SELECT * FROM __dbt__cte__viviendas_dep_add_2019
UNION ALL
SELECT * FROM __dbt__cte__viviendas_dep_add_2020
UNION ALL
SELECT * FROM __dbt__cte__viviendas_dep_add_2021
UNION ALL
SELECT * FROM __dbt__cte__viviendas_dep_add_2022