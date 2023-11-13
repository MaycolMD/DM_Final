
  
    

    create or replace table `thinking-pillar-402721`.`tablas_dep`.`relacionViviendas`
      
    
    

    OPTIONS()
    as (
      
SELECT
    COUNT(CASE WHEN DIRECTORIO IS NULL THEN 1 END) AS DIRECTORIO,
    COUNT(CASE WHEN SECUENCIA_ENCUESTA IS NULL THEN 1 END) AS SECUENCIA_ENCUESTA,
    COUNT(CASE WHEN SECUENCIA_P IS NULL THEN 1 END) AS SECUENCIA_P,
    COUNT(CASE WHEN P3 IS NULL THEN 1 END) AS P3,
    COUNT(CASE WHEN P4005 IS NULL THEN 1 END) AS P4005,
    COUNT(CASE WHEN P4015 IS NULL THEN 1 END) AS P4015,
    COUNT(CASE WHEN P8520S3 IS NULL THEN 1 END) AS P8520S3,
    COUNT(CASE WHEN P8520S5 IS NULL THEN 1 END) AS P8520S5,
    COUNT(CASE WHEN FECHA IS NULL THEN 1 END) AS FECHA,
    COUNT(*) AS total_filas
FROM
    `thinking-pillar-402721`.`tablas_dep`.`viviendas_dep`

UNION ALL

SELECT
    COUNT(CASE WHEN DIRECTORIO IS NULL THEN 1 END) / COUNT(*) AS DIRECTORIO_div_total,
    COUNT(CASE WHEN SECUENCIA_ENCUESTA IS NULL THEN 1 END) / COUNT(*) AS SECUENCIA_ENCUESTA_div_total,
    COUNT(CASE WHEN SECUENCIA_P IS NULL THEN 1 END) / COUNT(*) AS SECUENCIA_P_div_total,
    COUNT(CASE WHEN P3 IS NULL THEN 1 END) / COUNT(*) AS P3_div_total,
    COUNT(CASE WHEN P4005 IS NULL THEN 1 END) / COUNT(*) AS P4005_div_total,
    COUNT(CASE WHEN P4015 IS NULL THEN 1 END) / COUNT(*) AS P4015_div_total,
    COUNT(CASE WHEN P8520S3 IS NULL THEN 1 END) / COUNT(*) AS P8520S3_div_total,
    COUNT(CASE WHEN P8520S5 IS NULL THEN 1 END) / COUNT(*) AS P8520S5_div_total,
    COUNT(CASE WHEN FECHA IS NULL THEN 1 END) / COUNT(*) AS FECHA_div_total,
    1 AS total_div_total
FROM
    `thinking-pillar-402721`.`tablas_dep`.`viviendas_dep`
    );
  