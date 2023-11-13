
with __dbt__cte__personas_dep_add_2022 as (
SELECT *, 2022 AS FECHA FROM `thinking-pillar-402721`.`personas`.`personas_dep_2022`
) --4
SELECT
  DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, ORDEN, P6020, P6040, fex_c, P6051, P6090, P5665,
  NULLIF(TRIM(CAST(P8563 AS STRING)),'') AS P8563,
  NULLIF(TRIM(CAST(P51 AS STRING)), '') AS P51,
  NULLIF(TRIM(CAST(P55 AS STRING)), '') AS P55,
  NULLIF(TRIM(CAST(P774 AS STRING)), '') AS P774,
  NULLIF(TRIM(CAST(P6160 AS STRING)), '') AS P6160,
  NULLIF(TRIM(CAST(P8586 AS STRING)), '') AS P8586,
  NULLIF(TRIM(CAST(P8587 AS STRING)), '') AS P8587,
  NULLIF(TRIM(CAST(P8587S1 AS STRING)), '') AS P8587S1,
  NULLIF(TRIM(CAST(P1088 AS STRING)), '') AS P1088,
  NULLIF(TRIM(CAST(P1088S1 AS STRING)), '') AS P1088S1,
  NULLIF(TRIM(CAST(P6180 AS STRING)), '') AS P6180,
  NULLIF(TRIM(CAST(P6240 AS STRING)), '') AS P6240,
  NULLIF(TRIM(CAST(P6250 AS STRING)), '') AS P6250,
  NULLIF(TRIM(CAST(P6260 AS STRING)), '') AS P6260,
  NULLIF(TRIM(CAST(P6270 AS STRING)), '') AS P6270,
  NULLIF(TRIM(CAST(P6351 AS STRING)), '') AS P6351,
  NULLIF(TRIM(CAST(P6390 AS STRING)), '') AS P6390,
  NULLIF(TRIM(CAST(P7250 AS STRING)), '') AS P7250,
  NULLIF(TRIM(CAST(P6920 AS STRING)), '') AS P6920,
  FECHA
FROM
  __dbt__cte__personas_dep_add_2022