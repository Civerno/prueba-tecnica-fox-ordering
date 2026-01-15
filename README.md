# Prueba Técnica - Fox Ordering - Julian Monsalve
## Análisis de Datos de Ventas de Productos para Mascotas


## Descripción del Proyecto

Análisis integral de datos de ventas de comida para mascotas utilizando **SQL**, **Python** y **Power BI**. El proyecto incluye limpieza de datos, análisis estadístico y creación de un dashboard interactivo.

**Período analizado:** Enero 2021 - Diciembre 2022  
**Registros procesados:** 49,084 transacciones  
**Clientes únicos:** 2,515  
**Total de ventas:** 3,030,715 unidades

---

## Objetivos

1. Realizar consultas SQL
2. Limpiar y analizar datos con Python
3. Crear un dashboard en Power BI
4. Identificar insights de negocio accionables

---

## Tecnologías Utilizadas

- **SQL** - Consultas analíticas
- **Python 3.8+** - Procesamiento de datos
  - pandas
  - numpy
  - pyarrow (Parquet)
  - openpyxl (Excel)
  - json
- **Jupyter Notebook** - Análisis exploratorio
- **Power BI Desktop** - Visualización interactiva


## Resultados Principales

### **KPIs Clave:**
- **Total Ventas:** 3,030,715 unidades
- **Clientes Únicos:** 2,515
- **Transacciones:** 49,084
- **Promedio por Pedido:** 61.75 unidades

### **Insights de Negocio:**

#### Distribución Geográfica
- **Cundinamarca y Antioquia** concentran el 44% de las ventas
- Analizando la grafica de lineas, se puede concluir a simple vista que las ventas se han reducido levemente en el 2022 comparadas con el 2021.

#### Segmentación por Edad del Perro
- **ADULTO:** 61% de las ventas
- **CACHORRO:** 39% de las ventas

#### Estructura de Pedidos
- **Pedido mínimo:** 56 unidades **(Por lo que pude ver, la politica de la empresa indica que la compra minima es de 56 unidades)**
- **Pedido máximo:** 882 unidades
- **Promedio:** 61.75 unidades

---

## Proceso de Análisis

### **1. SQL - Consultas Analíticas**
- Query compleja con múltiples JOINs
- Filtrado por país, línea de producto y período
- Agregación de datos de ventas

 - Ver: [`sql/consulta_ventas_colombia.sql`](sql/consulta_ventas_colombia.sql)

### **2. Python - Limpieza y Análisis**
- Carga de múltiples formatos (Excel, JSON, Parquet)
- Identificación y limpieza de 81 registros duplicados
- Análisis estadístico descriptivo
- Generación de vista minable consolidada

 - Ver: [`python/analisis_datos.ipynb`](python/analisis_datos.ipynb)

### **3. Power BI - Visualización**
- Dashboard interactivo con 6+ visualizaciones
- 7 medidas DAX implementadas
- Modelo de datos tipo Star Schema
- Filtros dinámicos por año, zona y cluster

 - Ver: [Capturas del Dashboard](powerbi/capturas/)

---

## Limpieza de Datos

### **Problemas Identificados y Resueltos:**

#### - Duplicados en Maestro de Clientes
- **Problema:** 81 registros duplicados (2,596 → 2,515)
- **Solución:** Priorice los registros del campo `cluster` definido
- **Justificación:** Desde mi punto de vista estos datos son más prioritatios

#### - Archivos Redundantes
- **Problema:** Datos duplicados en múltiples formatos
- **Solución:** Selección de formatos óptimos (Parquet para clientes, JSON para productos, Excel para Ventas Mes)
- **Justificación:** Eficiencia y mejores prácticas

#### - Filas Vacías
- **Problema:** 985 filas vacías en archivo JSON
- **Solución:** Eliminación automática en Power Query

---

## Dashboard - Power BI

### **Componentes Principales:**

1. **KPIs Principales** - 6 tarjetas con métricas clave
2. **Evolución Temporal** - Gráfico de línea mensual
3. **Top Productos** - Tabla con productos más vendidos
4. **Distribución Regional** - Barras horizontales por región
5. **Segmentación por Edad** - Gráfico de dona
6. **Filtros Interactivos** - Año, Zona, Cluster

### **Capturas:**

![Dashboard Completo](powerbi/capturas/dashboard_completo.png)

---


## Licencia

Este proyecto fue desarrollado como parte de un proceso de selección para Fox Ordering.
