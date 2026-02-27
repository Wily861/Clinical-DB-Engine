# 🏥 HealthData Architecture: Gestión Clínica en PostgreSQL

> **Sistema Integral de Información Clínica:** Diseño de una base de datos relacional para la gestión hospitalaria, integrando capacidades de Reporting Estratégico mediante conectividad ODBC/Excel.

---
### 🏆 Logros de Ingeniería en este Proyecto

* **Arquitectura de Datos Robusta:** Diseño de un modelo relacional en **3NF (Tercera Forma Normal)** que garantiza la integridad referencial y elimina la redundancia de datos sensibles.
  
* **Optimización de Capacidad:** Implementación de restricciones (`Constraints`) de nivel empresarial para asegurar que el 100% de las citas médicas cumplan con las reglas de negocio (estados, horarios y especialistas).
  
* **Integración BI (Excel/ODBC):** Desarrollo de una capa de abstracción mediante **Vistas (Views)** que permite la conexión directa con herramientas de visualización para la toma de decisiones estratégicas.
  
* **Gobernanza de Datos:** Configuración de roles y permisos específicos para asegurar el cumplimiento de la privacidad de los datos clínicos (Principio de Menor Privilegio).
---

## 🎯 Alcance del Proyecto
Implementación de un ecosistema de datos para el sector salud, enfocado en la centralización de registros clínicos, trazabilidad de pacientes y optimización de la agenda médica. El proyecto demuestra la capacidad de transformar datos transaccionales en **dashboards operativos**.

---

## 🛠️ Stack Tecnológico
* **Database Engine:** PostgreSQL (Modelado Relacional & SQL Avanzado).
* **Reporting & BI:** Microsoft Excel (Power Query / Conectividad ODBC).
* **Lógica de Datos:** SQL (Constraints, Views para reporteo e Integridad Referencial).

---

## 📂 Contenido Técnico & Arquitectura

### 1. Modelado de Datos (Clinical Schema)
Estructura normalizada (3NF) para garantizar la consistencia en:
* **Gestión de Pacientes:** Historias clínicas y datos demográficos.
* **Control Operativo:** Agendamiento de citas y disponibilidad de personal médico.
* **Trazabilidad:** Tratamientos, diagnósticos y evolución clínica.

### 2. Integridad y Reglas de Negocio
* Implementación de **Foreign Keys** y **Check Constraints** para asegurar la calidad del dato clínico.
* **Views Estratégicas:** Consultas pre-compiladas para simplificar el acceso a KPI's hospitalarios.

### 3. Visualización & Analytics (Excel Integration)
* Conexión directa mediante **ODBC** para la extracción de datos en tiempo real.
* Generación de reportes dinámicos sobre ocupación de citas y efectividad de tratamientos, facilitando la toma de decisiones administrativas.

---

### 👤 Autor
**Wily Duvan Villamil Rey** *Senior Database Administrator | Data Engineer*

* **LinkedIn:** [linkedin.com/in/wily-rey-dba](https://www.linkedin.com/in/wily-rey-dba)
* **Email:** [willyvillamil861@gmail.com](mailto:willyvillamil861@gmail.com)
---
## 🧩 Consultas y Scripts Destacados

A continuación, se presentan fragmentos clave del desarrollo de la base de datos MediCare_db, los cuales demuestran un enfoque profesional y buenas prácticas en el diseño clínico relacional:

```sql
-- Creación de la base de datos y esquema
CREATE DATABASE medicare_db
WITH
OWNER = postgres
ENCODING = 'UTF8'
LC_COLLATE = 'es_CO.UTF-8'
LC_CTYPE = 'es_CO.UTF-8'
TEMPLATE = template0;

CREATE SCHEMA IF NOT EXISTS mediCare;

```

![Base de datos y Esquema](https://drive.google.com/uc?export=view&id=11IfZJeUCf8lX0UHEB0MwMrRzJjpHFzmF)


## 🧬 Estructura clínica relacional 
```sql
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

```
![Tabla Paciente](https://drive.google.com/uc?export=view&id=1Vyo70dAnBYlFhVcQXWYCGb4Csf5BbtgS)

```sql
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

```
![Tabla consultas](https://drive.google.com/uc?export=view&id=1k5l0X00QSKIdFfdRuNMvTwZ0jKimAMvZ)

```sql
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

```

![Registros por tabla](https://drive.google.com/uc?export=view&id=1C2FPCe0Mzx8gFkLzNiGpU-JN4_Ymb19f)

```sql
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

```
![Relación de entidades](https://drive.google.com/uc?export=view&id=1eLUXINf7kxddbADLSaPO0KIPiPPnBRcX)

---
## 🔗 Integración PostgreSQL + Excel

Una parte clave del proyecto fue la integración entre **PostgreSQL** y **Microsoft Excel** mediante ODBC. Este enlace muestra cómo se realizó la conexión de manera práctica:

![Maqueta de conexión](https://drive.google.com/uc?export=view&id=1oz25Z0FYRzL6zc5_vCEy-cDDmirsADHV)

> Esta conexión permitió cargar dinámicamente las tablas clínicas desde el motor de base de datos `medicare_db` hacia Excel, facilitando la creación de reportes visuales y análisis estratégicos.

---

## 🧠 Aprendizajes Destacados

- Reforcé mis habilidades en diseño de bases de datos relacionales aplicadas a escenarios clínicos reales.
- Automatización de consultas SQL y exploración de relaciones entre entidades.
- Integración de PostgreSQL con herramientas externas como Microsoft Excel mediante ODBC.
- Mejora en la documentación técnica y estructuración de proyectos en GitHub.

---
## 🔄 Posibles Mejores Futuras

- Implementar visualizaciones dinámicas en Power BI conectadas en tiempo real a PostgreSQL.
- Diseñar un formulario web básico para la carga de datos clínicos.
- Crear procedimientos almacenados para reportes recurrentes.
- Establecer control de acceso según roles clínicos (médico, administrador, laboratorio).
---

## 💻 Cómo Ejecutar el Proyecto

1. Instalar PostgreSQL y crear la base de datos ejecutando `script_postgresql.sql`.
2. Abrir Excel y establecer la conexión ODBC con la base de datos `medicare_db`.
3. Cargar tablas mediante Power Query.
4. Explorar los dashboards desde `visualizaciones/reportes_excel.xlsx`.

---

## 🚨 Notas sobre Seguridad o Ética de Datos

>⚠️ **Este proyecto es académico. Los datos utilizados fueron generados con fines ilustrativos. No representan información real de pacientes.**


