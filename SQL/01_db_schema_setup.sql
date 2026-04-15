-- Creación de la base de datos y esquema
CREATE DATABASE medicare_db
WITH
OWNER = postgres
ENCODING = 'UTF8'
LC_COLLATE = 'es_CO.UTF-8'
LC_CTYPE = 'es_CO.UTF-8'
TEMPLATE = template0;

CREATE SCHEMA IF NOT EXISTS mediCare;
