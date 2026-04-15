--Tabla de pacientes:
CREATE TABLE mediCare.pacientes (
  id_paciente SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  genero VARCHAR(10),
  direccion TEXT,
  telefono VARCHAR(20),
  email VARCHAR(50),
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
