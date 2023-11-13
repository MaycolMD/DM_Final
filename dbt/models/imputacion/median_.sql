SELECT
    CASE
        WHEN MOD(cantidad, 2) = 0 THEN (SELECT AVG(CAST(P6920 AS INT64)) FROM {{ ref('row_id_added') }} WHERE row_id BETWEEN cantidad/2 AND cantidad/2+1)
        ELSE (SELECT CAST(P6920 AS INT64) FROM {{ ref('row_id_added') }} WHERE row_id = ROUND(cantidad/2))
    END AS median
    FROM {{ ref('row_id_added') }}
    LIMIT 1