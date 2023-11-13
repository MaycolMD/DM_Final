
  
    

    create or replace table `thinking-pillar-402721`.`tablas_dep`.`personasCamposNulos2018`
      
    
    

    OPTIONS()
    as (
      
with __dbt__cte__personas_dep_add_2018 as (
SELECT *, 2018 AS FECHA FROM `thinking-pillar-402721`.`personas`.`personas_dep_2018`
) --4
SELECT
  DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, ORDEN, P6020, P6040, fex_c, P6051, P6090, P5665,
  NULLIF(TRIM(P8563), '') AS P8563,
  NULLIF(TRIM(P51), '') AS P51,
  NULLIF(TRIM(P55), '') AS P55,
  NULLIF(TRIM(P774), '') AS P774,
  NULLIF(TRIM(P6160), '') AS P6160,
  NULLIF(TRIM(P8586), '') AS P8586,
  NULLIF(TRIM(P8587), '') AS P8587,
  NULLIF(TRIM(P8587S1), '') AS P8587S1,
  NULLIF(TRIM(P1088), '') AS P1088,
  NULLIF(TRIM(P1088S1), '') AS P1088S1,
  NULLIF(TRIM(P6180), '') AS P6180,
  NULLIF(TRIM(P6240), '') AS P6240,
  NULLIF(TRIM(P6250), '') AS P6250,
  NULLIF(TRIM(P6260), '') AS P6260,
  NULLIF(TRIM(P6270), '') AS P6270,
  NULLIF(TRIM(P6351), '') AS P6351,
  NULLIF(TRIM(P6390S1), '') AS P6390,
  NULLIF(TRIM(P7250), '') AS P7250,
  NULLIF(TRIM(P6920), '') AS P6920,
  FECHA
FROM
  __dbt__cte__personas_dep_add_2018
    );
  