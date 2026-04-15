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

### 🗄️ Database Layer (SQL Scripts)
* **[01_db_schema_setup.sql](./SQL/01_db_schema_setup.sql):** Inicialización de esquemas y entorno.
* **[02_patients_table_setup.sql](./SQL/02_patients_table_setup.sql):** Registro normalizado de pacientes.
* **[03_consultas_médicas_config.sql](./SQL/03_consultas_médicas_config.sql):** Lógica transaccional de citas.
* **[04_database_audit_summary.sql](./SQL/04_database_audit_summary.sql):** Consultas analíticas para auditoría de volumen.
* **[05_entity_relationships_constraints.sql](./SQL/05_entity_relationships_constraints.sql):** Integridad referencial avanzada.
---

### 👤 Autor
**Wily Duvan Villamil Rey** *Senior Database Administrator | Data Engineer*

* **LinkedIn:** [linkedin.com/in/wily-rey-dba](https://www.linkedin.com/in/wily-rey-dba)
* **Email:** [willyvillamil861@gmail.com](mailto:willyvillamil861@gmail.com)
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


