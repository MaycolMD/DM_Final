SELECT *, 2018 AS FECHA FROM {{ source('viviendas', 'viviendas_dep_2018') }}