SELECT *, 2018 AS FECHA FROM {{ source('personas', 'personas_dep_2018') }}