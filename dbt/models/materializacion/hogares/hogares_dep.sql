{{ config (materialized = "table") }}
SELECT * FROM {{ ref('hogares_dep_add_2018') }}
UNION ALL
SELECT * FROM {{ ref('hogares_dep_add_2019') }}
UNION ALL
SELECT * FROM {{ ref('hogares_dep_add_2020') }}
UNION ALL
SELECT * FROM {{ ref('hogares_dep_add_2021') }}
UNION ALL
SELECT * FROM {{ ref('hogares_dep_add_2022') }}
