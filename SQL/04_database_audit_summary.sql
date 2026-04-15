-- Consulta analítica de resumen de cantidad de registros por tabla
WITH conteo_tablas AS (
  SELECT 'pacientes' AS tabla, COUNT(*) AS cantidad FROM mediCare.pacientes
  UNION ALL
  SELECT 'medicos', COUNT(*) FROM mediCare.medicos
  UNION ALL
  SELECT 'consultas', COUNT(*) FROM mediCare.consultas
  UNION ALL
  SELECT 'historial_medico', COUNT(*) FROM mediCare.historial_medico
  UNION ALL
  SELECT 'tratamientos', COUNT(*) FROM mediCare.tratamientos
  UNION ALL
  SELECT 'facturacion', COUNT(*) FROM mediCare.facturacion
  UNION ALL
  SELECT 'citas_medicas', COUNT(*) FROM mediCare.citas_medicas
  UNION ALL
  SELECT 'recetas_medicas', COUNT(*) FROM mediCare.recetas_medicas
  UNION ALL
  SELECT 'hospitalizaciones', COUNT(*) FROM mediCare.hospitalizaciones
  UNION ALL
  SELECT 'laboratorios', COUNT(*) FROM mediCare.laboratorios
  UNION ALL
  SELECT 'especialidades', COUNT(*) FROM mediCare.especialidades
  UNION ALL
  SELECT 'usuarios', COUNT(*) FROM mediCare.usuarios
  UNION ALL
  SELECT 'seguros_medicos', COUNT(*) FROM mediCare.seguros_medicos
  UNION ALL
  SELECT 'proveedores', COUNT(*) FROM mediCare.proveedores
  UNION ALL
  SELECT 'notas_evolucion', COUNT(*) FROM mediCare.notas_evolucion
  UNION ALL
  SELECT 'procedimientos_medicos', COUNT(*) FROM mediCare.procedimientos_medicos
  UNION ALL
  SELECT 'equipos_medicos', COUNT(*) FROM mediCare.equipos_medicos
  UNION ALL
  SELECT 'suministros_medicos', COUNT(*) FROM mediCare.suministros_medicos
  UNION ALL
  SELECT 'turnos_guardia', COUNT(*) FROM mediCare.turnos_guardia
)
SELECT tabla, cantidad
FROM conteo_tablas
ORDER BY cantidad DESC;
