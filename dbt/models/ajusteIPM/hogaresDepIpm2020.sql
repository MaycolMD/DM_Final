{{ config(materialized='table')}}
SELECT
    * EXCEPT(ipm),
    ipm / 100 AS ipm
FROM {{ ref('hogares_dep_add_2020') }}
