SELECT P6920, COUNT(*) OVER() AS cantidad
FROM {{ ref('personas_dep') }}
WHERE P6920 IS NOT NULL
ORDER BY P6920
