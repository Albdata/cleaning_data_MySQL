
/*EMPLEADOS_TABLE*/

 # REMOVING IRRELEVANT DATA.
 
   -- Let's suppose I want to find out clerks who work in the accounting department (which is code 4); let's filter them out. 
     
      SELECT *
      FROM empleados.empleado
      WHERE codigo_departamento = 2 ;
      
 # HANDELING MISSING DATA.

   -- We can observe there are rows with missing values (Null).
   -- What we can do is either remove those rows or replece the Null values depending on if they are cateogrical or numerical values.
   -- The first option can make us lose information, we could replace the missing values with 'missing' if they are categorical or '0' if they are numerical.
   -- After having checked the Data we observe there are Null values in 'codigo_departamento. 
   -- This is a problem if we want to check in which department our clerks work, so let's remove it.
  
      SELECT *
      FROM empleados.empleado
      WHERE codigo_departamento is NOT NULL ; 
    
   -- Also, we can change the value in 'apellido2' with another value such as 'empty'.
    
	  SELECT CASE WHEN apellido2 IS NULL THEN 'EMPTY' 
		ELSE apellido2 END AS apellido2_replaced 
      FROM empleados.empleado ;
    
/*JARDINERÍA_TABLE*/ 
   
 # REMOVE DUPLICATE DATA.
 
   -- Let's find out if we have duplicated data in 'nombre_cliente' column.
   
      SELECT nombre_cliente, COUNT(*)
      FROM jardineria.cliente
	   GROUP BY nombre_cliente
       HAVING COUNT(*) > 1 ;
   
   -- In this case, we notice that we  have some duplicated values in 'nombre_cliente', so let's remove them.
   
      SELECT DISTINCT(nombre_cliente)
      FROM jardineria.cliente ;
      
   -- Also, we can remove duplicated values by using 'GROUP BY', ROW_NUMBER(), SUBQUERIES, ETC...
   
 # FIX STRUCTURAL ERRORS.
   
   -- We can find unnecessary spaces between the strings, incorrect capitalization or terms which are misspelled or we just want to abreviate them.
   -- If for example, I want to change the 'nombre' values in 'jardineria.empleado' to capital letters; I can use the following code:
   -- We have to take into account this will change the word into capital letters, if we wanted to change only the first one into capital letter we'd use (INITCAP).
   
     SELECT UPPER(nombre)
     FROM jardineria.empleado ;
   
   -- After checking 'jardineria_oficina' I notice in 'region' column when it refers to the sate of Massachusetts , it is written as ' MA' and this is really unclear.
    
     SELECT
       CASE
	   WHEN region = 'MA' THEN 'Massachusetts'
	   ELSE region
       END AS region_modificada
	 FROM jardineria.oficina ;

