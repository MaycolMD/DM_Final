{{ config(materialized='table') }}
SELECT * EXCEPT(P6920, median), IFNULL(P6920, median) as P6920
FROM {{ ref('personas_dep') }}, {{ ref('median_') }}