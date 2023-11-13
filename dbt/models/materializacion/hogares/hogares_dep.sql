{{ config (materialized = "table") }}
SELECT PERIODO, DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, P5010, P8526, P8530, fex_c, REGION, DEPARTAMENTO, personas, paredes, pisos, alcantarillado, acueducto, empleo_formal, desempleo_larga_duracion, barreras_acceso_salud, aseguramiento_salud, trabajo_infantil, atencion_integral, inasistencia_escolar, rezago_escolar, alfabetismo, logro_educativo, hacinamiento, pobre, fexp, ipm, FECHA
FROM {{ ref('hogaresDepIpm2018') }}
UNION ALL
SELECT PERIODO, DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, P5010, P8526, P8530, fex_c, REGION, DEPARTAMENTO, personas, paredes, pisos, alcantarillado, acueducto, empleo_formal, desempleo_larga_duracion, barreras_acceso_salud, aseguramiento_salud, trabajo_infantil, atencion_integral, inasistencia_escolar, rezago_escolar, alfabetismo, logro_educativo, hacinamiento, pobre, fexp, ipm, FECHA
FROM {{ ref('hogaresDepIpm2019') }}
UNION ALL
SELECT PERIODO, DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, P5010, P8526, P8530, fex_c, REGION, DEPARTAMENTO, personas, paredes, pisos, alcantarillado, acueducto, empleo_formal, desempleo_larga_duracion, barreras_acceso_salud, aseguramiento_salud, trabajo_infantil, atencion_integral, inasistencia_escolar, rezago_escolar, alfabetismo, logro_educativo, hacinamiento, pobre, fexp, ipm, FECHA
FROM {{ ref('hogaresDepIpm2020') }}
UNION ALL
SELECT PERIODO, DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, P5010, P8526, P8530, fex_c, REGION, DEPARTAMENTO, personas, paredes, pisos, alcantarillado, acueducto, empleo_formal, desempleo_larga_duracion, barreras_acceso_salud, aseguramiento_salud, trabajo_infantil, atencion_integral, inasistencia_escolar, rezago_escolar, alfabetismo, logro_educativo, hacinamiento, pobre, fexp, ipm, FECHA
FROM {{ ref('hogares_dep_add_2021') }}
UNION ALL
SELECT PERIODO, DIRECTORIO, SECUENCIA_ENCUESTA, SECUENCIA_P, P5010, P8526, P8530, fex_c, REGION, DEPARTAMENTO, personas, paredes, pisos, alcantarillado, acueducto, empleo_formal, desempleo_larga_duracion, barreras_acceso_salud, aseguramiento_salud, trabajo_infantil, atencion_integral, inasistencia_escolar, rezago_escolar, alfabetismo, logro_educativo, hacinamiento, pobre, fexp, ipm, FECHA
FROM {{ ref('hogares_dep_add_2022') }}
