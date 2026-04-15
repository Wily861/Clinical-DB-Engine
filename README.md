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


