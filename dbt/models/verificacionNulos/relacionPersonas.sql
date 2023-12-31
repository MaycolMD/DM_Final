{{ config(materialized='table') }}
SELECT
    COUNT(CASE WHEN DIRECTORIO IS NULL THEN 1 END) AS DIRECTORIO,
    COUNT(CASE WHEN SECUENCIA_ENCUESTA IS NULL THEN 1 END) AS SECUENCIA_ENCUESTA,
    COUNT(CASE WHEN SECUENCIA_P IS NULL THEN 1 END) AS SECUENCIA_P,
    COUNT(CASE WHEN ORDEN IS NULL THEN 1 END) AS ORDEN,
    COUNT(CASE WHEN P6020 IS NULL THEN 1 END) AS P6020,
    COUNT(CASE WHEN P6040 IS NULL THEN 1 END) AS P6040,
    COUNT(CASE WHEN fex_c IS NULL THEN 1 END) AS fex_c,
    COUNT(CASE WHEN P6051 IS NULL THEN 1 END) AS P6051,
    COUNT(CASE WHEN P6090 IS NULL THEN 1 END) AS P6090,
    COUNT(CASE WHEN P5665 IS NULL THEN 1 END) AS P5665,
    COUNT(CASE WHEN P8563 IS NULL THEN 1 END) AS P8563,
    COUNT(CASE WHEN P51 IS NULL THEN 1 END) AS P51,
    COUNT(CASE WHEN P55 IS NULL THEN 1 END) AS P55,
    COUNT(CASE WHEN P774 IS NULL THEN 1 END) AS P774,
    COUNT(CASE WHEN P6160 IS NULL THEN 1 END) AS P6160,
    COUNT(CASE WHEN P8586 IS NULL THEN 1 END) AS P8586,
    COUNT(CASE WHEN P8587 IS NULL THEN 1 END) AS P8587,
    COUNT(CASE WHEN P8587S1 IS NULL THEN 1 END) AS P8587S1,
    COUNT(CASE WHEN P1088 IS NULL THEN 1 END) AS P1088,
    COUNT(CASE WHEN P1088S1 IS NULL THEN 1 END) AS P1088S1,
    COUNT(CASE WHEN P6180 IS NULL THEN 1 END) AS P6180,
    COUNT(CASE WHEN P6240 IS NULL THEN 1 END) AS P6240,
    COUNT(CASE WHEN P6250 IS NULL THEN 1 END) AS P6250,
    COUNT(CASE WHEN P6260 IS NULL THEN 1 END) AS P6260,
    COUNT(CASE WHEN P6270 IS NULL THEN 1 END) AS P6270,
    COUNT(CASE WHEN P6351 IS NULL THEN 1 END) AS P6351,
    COUNT(CASE WHEN P6390 IS NULL THEN 1 END) AS P6390,
    COUNT(CASE WHEN P7250 IS NULL THEN 1 END) AS P7250,
    COUNT(CASE WHEN P6920 IS NULL THEN 1 END) AS P6920,
    COUNT(CASE WHEN FECHA IS NULL THEN 1 END) AS FECHA
FROM
    {{ ref('personas_dep') }}

UNION ALL
SELECT
    COUNT(CASE WHEN DIRECTORIO IS NULL THEN 1 END) / COUNT(*) AS DIRECTORIO_div_total,
    COUNT(CASE WHEN SECUENCIA_ENCUESTA IS NULL THEN 1 END) / COUNT(*) AS SECUENCIA_ENCUESTA_div_total,
    COUNT(CASE WHEN SECUENCIA_P IS NULL THEN 1 END) / COUNT(*) AS SECUENCIA_P_div_total,
    COUNT(CASE WHEN ORDEN IS NULL THEN 1 END) / COUNT(*) AS ORDEN_div_total,
    COUNT(CASE WHEN P6020 IS NULL THEN 1 END) / COUNT(*) AS P6020_div_total,
    COUNT(CASE WHEN P6040 IS NULL THEN 1 END) / COUNT(*) AS P6040_div_total,
    COUNT(CASE WHEN fex_c IS NULL THEN 1 END) / COUNT(*) AS fex_c_div_total,
    COUNT(CASE WHEN P6051 IS NULL THEN 1 END) / COUNT(*) AS P6051_div_total,
    COUNT(CASE WHEN P6090 IS NULL THEN 1 END) / COUNT(*) AS P6090_div_total,
    COUNT(CASE WHEN P5665 IS NULL THEN 1 END) / COUNT(*) AS P5665_div_total,
    COUNT(CASE WHEN P8563 IS NULL THEN 1 END) / COUNT(*) AS P8563_div_total,
    COUNT(CASE WHEN P51 IS NULL THEN 1 END) / COUNT(*) AS P51_div_total,
    COUNT(CASE WHEN P55 IS NULL THEN 1 END) / COUNT(*) AS P55_div_total,
    COUNT(CASE WHEN P774 IS NULL THEN 1 END) / COUNT(*) AS P774_div_total,
    COUNT(CASE WHEN P6160 IS NULL THEN 1 END) / COUNT(*) AS P6160_div_total,
    COUNT(CASE WHEN P8586 IS NULL THEN 1 END) / COUNT(*) AS P8586_div_total,
    COUNT(CASE WHEN P8587 IS NULL THEN 1 END) / COUNT(*) AS P8587_div_total,
    COUNT(CASE WHEN P8587S1 IS NULL THEN 1 END) / COUNT(*) AS P8587S1_div_total,
    COUNT(CASE WHEN P1088 IS NULL THEN 1 END) / COUNT(*) AS P1088_div_total,
    COUNT(CASE WHEN P1088S1 IS NULL THEN 1 END) / COUNT(*) AS P1088S1_div_total,
    COUNT(CASE WHEN P6180 IS NULL THEN 1 END) / COUNT(*) AS P6180_div_total,
    COUNT(CASE WHEN P6240 IS NULL THEN 1 END) / COUNT(*) AS P6240_div_total,
    COUNT(CASE WHEN P6250 IS NULL THEN 1 END) / COUNT(*) AS P6250_div_total,
    COUNT(CASE WHEN P6260 IS NULL THEN 1 END) / COUNT(*) AS P6260_div_total,
    COUNT(CASE WHEN P6270 IS NULL THEN 1 END) / COUNT(*) AS P6270_div_total,
    COUNT(CASE WHEN P6351 IS NULL THEN 1 END) / COUNT(*) AS P6351_div_total,
    COUNT(CASE WHEN P6390 IS NULL THEN 1 END) / COUNT(*) AS P6390_div_total,
    COUNT(CASE WHEN P7250 IS NULL THEN 1 END) / COUNT(*) AS P7250_div_total,
    COUNT(CASE WHEN P6920 IS NULL THEN 1 END) / COUNT(*) AS P6920_div_total,
    COUNT(CASE WHEN FECHA IS NULL THEN 1 END) / COUNT(*) AS FECHA_div_total
FROM
    {{ ref('personas_dep') }}
