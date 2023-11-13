SELECT
    CASE
        WHEN MOD(cantidad, 2) = 0 THEN (SELECT AVG(P6920) FROM {{ ref('row_id_added') }} WHERE row_id BETWEEN cantidad/2 AND cantidad/2+1)
        ELSE (SELECT P6920 FROM {{ ref('row_id_added') }} WHERE row_id = ROUND(cantidad/2))
    END AS median
    FROM {{ ref('row_id_added') }}
    LIMIT 1