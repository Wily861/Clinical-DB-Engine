-- Relaciones entre entidades
SELECT
  rel.relname AS tabla_relacionada,
  ref.relname AS tabla_referenciada,
  att_rel.attname AS columna_relacionada,
  att_ref.attname AS columna_referenciada,
  con.conname AS restriccion
FROM pg_constraint con
JOIN pg_class rel ON con.conrelid = rel.oid
JOIN pg_class ref ON con.confrelid = ref.oid
JOIN pg_attribute att_rel ON att_rel.attrelid = con.conrelid AND att_rel.attnum = ANY(con.conkey)
JOIN pg_attribute att_ref ON att_ref.attrelid = con.confrelid AND att_ref.attnum = ANY(con.confkey)
WHERE con.contype = 'f'
ORDER BY tabla_relacionada;
