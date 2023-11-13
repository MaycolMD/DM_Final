{{ config (materialized = "table") }}
SELECT * FROM {{ ref('personasCamposNulos2018') }}
UNION ALL
SELECT * FROM {{ ref('personasCamposNulos2019') }}
UNION ALL
SELECT * FROM {{ ref('personasCamposNulos2020') }}
UNION ALL
SELECT * FROM {{ ref('personasCamposNulos2021') }}
UNION ALL
SELECT * FROM {{ ref('personasCamposNulos2022') }}
