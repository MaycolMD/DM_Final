SELECT *, 2021 AS FECHA FROM {{ source('personas', 'personas_dep_2021') }}