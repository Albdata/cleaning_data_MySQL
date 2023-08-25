# cleaning_data_MySQL
Let's see the ways we can use to clean data in SQL.

MySQL is a powerful tool to clean data, there are several ways to do it and, in this repository we will see a few of them.
Some of the most important aspects we have to keep in mind if we want to clean data in MySQL are:  
  -REMOVE IRRELVANT DATA
  -HANDLE MISSING DATA.
  -REMOVE DUPLICATE DATA.
  -FIX STRUCTURAL ERRORS.
  -DO TYPE CONVERSIONS.
  -NORMALIZE/VALIDATE DATA.

We used two tables to carry out the cleanining: 
  - empleados.empleado (codigo, nif, apellido1, apellido2, codigo_departamento).
  - empleados.departamento (codigo, nombre, presupuesto, gastos).

  - jardineria.cliente (nombre_contacto, nombre_contacto, apellido_contacto, telefono, fax, linea_direccion1, linea_direccion2, ciudad, region, pais, codigo_postal,
    codigo_empleado_rep_ventas, limite_credito).
  - jardineria.empleado (codigo_empleado, nombre, apellido1, apellido2, extension, email, codigo_oficina, codigo_jefe, puesto).
  - jardineria.oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, linea_direccion1, linea_direccion2).
