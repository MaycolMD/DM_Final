SELECT P6920, COUNT(*) OVER() AS cantidad
FROM `thinking-pillar-402721`.`tablas_dep`.`personas_dep`
WHERE P6920 IS NOT NULL
ORDER BY P6920