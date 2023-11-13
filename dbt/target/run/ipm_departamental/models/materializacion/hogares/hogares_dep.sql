
  
    

    create or replace table `thinking-pillar-402721`.`tablas_dep`.`hogares_dep`
      
    
    

    OPTIONS()
    as (
      
with __dbt__cte__hogares_dep_add_2021 as (
SELECT *, 2021 AS FECHA FROM `thinking-pillar-402721`.`hogares`.`hogares_dep_2021`
),  __dbt__cte__hogares_dep_add_2022 as (
SELECT *, 2022 AS FECHA FROM `thinking-pillar-402721`.`hogares`.`hogares_dep_2022`
) SELECT PERIODO, DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, P5010, P8526, P8530, fex_c, REGION, DEPARTAMENTO, personas, paredes, pisos, alcantarillado, acueducto, empleo_formal, desempleo_larga_duracion, barreras_acceso_salud, aseguramiento_salud, trabajo_infantil, atencion_integral, inasistencia_escolar, rezago_escolar, alfabetismo, logro_educativo, hacinamiento, pobre, fexp, ipm, FECHA
FROM `thinking-pillar-402721`.`tablas_dep`.`hogaresDepIpm2018`
UNION ALL
SELECT PERIODO, DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, P5010, P8526, P8530, fex_c, REGION, DEPARTAMENTO, personas, paredes, pisos, alcantarillado, acueducto, empleo_formal, desempleo_larga_duracion, barreras_acceso_salud, aseguramiento_salud, trabajo_infantil, atencion_integral, inasistencia_escolar, rezago_escolar, alfabetismo, logro_educativo, hacinamiento, pobre, fexp, ipm, FECHA
FROM `thinking-pillar-402721`.`tablas_dep`.`hogaresDepIpm2019`
UNION ALL
SELECT PERIODO, DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, P5010, P8526, P8530, fex_c, REGION, DEPARTAMENTO, personas, paredes, pisos, alcantarillado, acueducto, empleo_formal, desempleo_larga_duracion, barreras_acceso_salud, aseguramiento_salud, trabajo_infantil, atencion_integral, inasistencia_escolar, rezago_escolar, alfabetismo, logro_educativo, hacinamiento, pobre, fexp, ipm, FECHA
FROM `thinking-pillar-402721`.`tablas_dep`.`hogaresDepIpm2020`
UNION ALL
SELECT PERIODO, DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, P5010, P8526, P8530, fex_c, REGION, DEPARTAMENTO, personas, paredes, pisos, alcantarillado, acueducto, empleo_formal, desempleo_larga_duracion, barreras_acceso_salud, aseguramiento_salud, trabajo_infantil, atencion_integral, inasistencia_escolar, rezago_escolar, alfabetismo, logro_educativo, hacinamiento, pobre, fexp, ipm, FECHA
FROM __dbt__cte__hogares_dep_add_2021
UNION ALL
SELECT PERIODO, DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, P5010, P8526, P8530, fex_c, REGION, DEPARTAMENTO, personas, paredes, pisos, alcantarillado, acueducto, empleo_formal, desempleo_larga_duracion, barreras_acceso_salud, aseguramiento_salud, trabajo_infantil, atencion_integral, inasistencia_escolar, rezago_escolar, alfabetismo, logro_educativo, hacinamiento, pobre, fexp, ipm, FECHA
FROM __dbt__cte__hogares_dep_add_2022
    );
  