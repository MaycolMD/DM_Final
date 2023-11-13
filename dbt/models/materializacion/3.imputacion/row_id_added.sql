SELECT *, ROW_NUMBER() OVER () AS row_id
FROM  {{ ref('data_sabe_leerescribir_promedio') }}