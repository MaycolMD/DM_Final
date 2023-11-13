
  
    

    create or replace table `thinking-pillar-402721`.`tablas_dep`.`relacionHogares`
      
    
    

    OPTIONS()
    as (
      
-- no me parecio necesario dividirlo en 2
--5.1
SELECT
    COUNT(CASE WHEN PERIODO IS NULL THEN 1 END) AS PERIODO,
    COUNT(CASE WHEN DIRECTORIO IS NULL THEN 1 END) AS DIRECTORIO,
    COUNT(CASE WHEN SECUENCIA_ENCUESTA IS NULL THEN 1 END) AS SECUENCIA_ENCUESTA,
    COUNT(CASE WHEN SECUENCIA_P IS NULL THEN 1 END) AS SECUENCIA_P,
    COUNT(CASE WHEN P5010 IS NULL THEN 1 END) AS P5010,
    COUNT(CASE WHEN P8526 IS NULL THEN 1 END) AS P8526,
    COUNT(CASE WHEN P8530 IS NULL THEN 1 END) AS P8530,
    COUNT(CASE WHEN fex_c IS NULL THEN 1 END) AS fex_c,
    COUNT(CASE WHEN REGION IS NULL THEN 1 END) AS REGION,
    COUNT(CASE WHEN DEPARTAMENTO IS NULL THEN 1 END) AS DEPARTAMENTO,
    COUNT(CASE WHEN personas IS NULL THEN 1 END) AS personas,
    COUNT(CASE WHEN paredes IS NULL THEN 1 END) AS paredes,
    COUNT(CASE WHEN pisos IS NULL THEN 1 END) AS pisos,
    COUNT(CASE WHEN alcantarillado IS NULL THEN 1 END) AS alcantarillado,
    COUNT(CASE WHEN acueducto IS NULL THEN 1 END) AS acueducto,
    COUNT(CASE WHEN empleo_formal IS NULL THEN 1 END) AS empleo_formal,
    COUNT(CASE WHEN desempleo_larga_duracion IS NULL THEN 1 END) AS desempleo_larga_duracion,
    COUNT(CASE WHEN barreras_acceso_salud IS NULL THEN 1 END) AS barreras_acceso_salud,
    COUNT(CASE WHEN aseguramiento_salud IS NULL THEN 1 END) AS aseguramiento_salud,
    COUNT(CASE WHEN trabajo_infantil IS NULL THEN 1 END) AS trabajo_infantil,
    COUNT(CASE WHEN atencion_integral IS NULL THEN 1 END) AS atencion_integral,
    COUNT(CASE WHEN inasistencia_escolar IS NULL THEN 1 END) AS inasistencia_escolar,
    COUNT(CASE WHEN rezago_escolar IS NULL THEN 1 END) AS rezago_escolar,
    COUNT(CASE WHEN alfabetismo IS NULL THEN 1 END) AS alfabetismo,
    COUNT(CASE WHEN logro_educativo IS NULL THEN 1 END) AS logro_educativo,
    COUNT(CASE WHEN hacinamiento IS NULL THEN 1 END) AS hacinamiento,
    COUNT(CASE WHEN ipm IS NULL THEN 1 END) AS ipm,
    COUNT(CASE WHEN pobre IS NULL THEN 1 END) AS pobre,
    COUNT(CASE WHEN fexp IS NULL THEN 1 END) AS fexp,
    COUNT(CASE WHEN FECHA IS NULL THEN 1 END) AS FECHA,
    COUNT(*) AS total_filas
FROM
    `thinking-pillar-402721`.`tablas_dep`.`hogares_dep`
UNION ALL
SELECT
    COUNT(CASE WHEN PERIODO IS NULL THEN 1 END) / COUNT(*) AS PERIODO_div_total,
    COUNT(CASE WHEN DIRECTORIO IS NULL THEN 1 END) / COUNT(*) AS DIRECTORIO_div_total,
    COUNT(CASE WHEN SECUENCIA_ENCUESTA IS NULL THEN 1 END) / COUNT(*) AS SECUENCIA_ENCUESTA_div_total,
    COUNT(CASE WHEN SECUENCIA_P IS NULL THEN 1 END) / COUNT(*) AS SECUENCIA_P_div_total,
    COUNT(CASE WHEN P5010 IS NULL THEN 1 END) / COUNT(*) AS P5010_div_total,
    COUNT(CASE WHEN P8526 IS NULL THEN 1 END) / COUNT(*) AS P8526_div_total,
    COUNT(CASE WHEN P8530 IS NULL THEN 1 END) / COUNT(*) AS P8530_div_total,
    COUNT(CASE WHEN fex_c IS NULL THEN 1 END) / COUNT(*) AS fex_c_div_total,
    COUNT(CASE WHEN REGION IS NULL THEN 1 END) / COUNT(*) AS REGION_div_total,
    COUNT(CASE WHEN DEPARTAMENTO IS NULL THEN 1 END) / COUNT(*) AS DEPARTAMENTO_div_total,
    COUNT(CASE WHEN personas IS NULL THEN 1 END) / COUNT(*) AS personas_div_total,
    COUNT(CASE WHEN paredes IS NULL THEN 1 END) / COUNT(*) AS paredes_div_total,
    COUNT(CASE WHEN pisos IS NULL THEN 1 END) / COUNT(*) AS pisos_div_total,
    COUNT(CASE WHEN alcantarillado IS NULL THEN 1 END) / COUNT(*) AS alcantarillado_div_total,
    COUNT(CASE WHEN acueducto IS NULL THEN 1 END) / COUNT(*) AS acueducto_div_total,
    COUNT(CASE WHEN empleo_formal IS NULL THEN 1 END) / COUNT(*) AS empleo_formal_div_total,
    COUNT(CASE WHEN desempleo_larga_duracion IS NULL THEN 1 END) / COUNT(*) AS desempleo_larga_duracion_div_total,
    COUNT(CASE WHEN barreras_acceso_salud IS NULL THEN 1 END) / COUNT(*) AS barreras_acceso_salud_div_total,
    COUNT(CASE WHEN aseguramiento_salud IS NULL THEN 1 END) / COUNT(*) AS aseguramiento_salud_div_total,
    COUNT(CASE WHEN trabajo_infantil IS NULL THEN 1 END) / COUNT(*) AS trabajo_infantil_div_total,
    COUNT(CASE WHEN atencion_integral IS NULL THEN 1 END) / COUNT(*) AS atencion_integral_div_total,
    COUNT(CASE WHEN inasistencia_escolar IS NULL THEN 1 END) / COUNT(*) AS inasistencia_escolar_div_total,
    COUNT(CASE WHEN rezago_escolar IS NULL THEN 1 END) / COUNT(*) AS rezago_escolar_div_total,
    COUNT(CASE WHEN alfabetismo IS NULL THEN 1 END) / COUNT(*) AS alfabetismo_div_total,
    COUNT(CASE WHEN logro_educativo IS NULL THEN 1 END) / COUNT(*) AS logro_educativo_div_total,
    COUNT(CASE WHEN hacinamiento IS NULL THEN 1 END) / COUNT(*) AS hacinamiento_div_total,
    COUNT(CASE WHEN ipm IS NULL THEN 1 END) / COUNT(*) AS ipm_div_total,
    COUNT(CASE WHEN pobre IS NULL THEN 1 END) / COUNT(*) AS pobre_div_total,
    COUNT(CASE WHEN fexp IS NULL THEN 1 END) / COUNT(*) AS fexp_div_total,
    COUNT(CASE WHEN FECHA IS NULL THEN 1 END) / COUNT(*) AS FECHA_div_total,
    1 AS total_div_total
FROM
    `thinking-pillar-402721`.`tablas_dep`.`hogares_dep`
    );
  