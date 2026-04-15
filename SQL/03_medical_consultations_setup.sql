--Tabla de consultas médicas con relaciones
CREATE TABLE mediCare.consultas (
  id_consulta SERIAL PRIMARY KEY,
  id_paciente INT REFERENCES mediCare.pacientes(id_paciente) ON DELETE CASCADE,
  id_medico INT REFERENCES mediCare.medicos(id_medico) ON DELETE SET NULL,
  fecha_consulta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  motivo TEXT,
  diagnostico TEXT,
  tratamiento TEXT
);
