{{ config(materialized='table')}}
SELECT
    *,
    ipm / 100 AS ipm
FROM {{ ref('hogares_dep_add_2019') }}
