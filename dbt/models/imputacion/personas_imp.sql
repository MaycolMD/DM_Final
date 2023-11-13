{{ config(materialized='table') }}
SELECT * EXCEPT(P6920, median), IFNULL(CAST(P6920 AS INT64), median) as P6920
FROM {{ ref('personas_dep') }}, {{ ref('median_') }}