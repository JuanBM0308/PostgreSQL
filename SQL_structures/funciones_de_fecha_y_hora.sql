-- Funciones de fecha y hora

-- Fecha actual
SELECT CURRENT_DATE;

-- Hora actual
SELECT CURRENT_TIME;

-- Obtener fecha y hora al mismo tiempo
SELECT CURRENT_TIMESTAMP;

-- Extraer valores de solo el año, mes, dia etc
-- año
SELECT EXTRACT(YEAR FROM CURRENT_DATE);

-- mes
SELECT EXTRACT(MONTH FROM CURRENT_DATE); 

-- dia
SELECT EXTRACT(DAY FROM CURRENT_DATE); 

-- Extraer valores de solo el hora, minuto, segundo etc
-- hora
SELECT EXTRACT(HOUR FROM CURRENT_TIME); 

-- minuto
SELECT EXTRACT(MINUTE FROM CURRENT_TIME); 

-- segundo
SELECT EXTRACT(SECOND FROM CURRENT_TIME); 

---------------------------------------------
-- CLASE 2
---------------------------------------------

-- Dia en numero de la semana en que me encuentro
SELECT EXTRACT(DOW FROM CURRENT_DATE);

-- Numero de la semana en que me encuentro
SELECT EXTRACT(WEEK FROM CURRENT_DATE);


-- Agregando fecha actual a una tabla
SELECT * FROM tb_articulos;
UPDATE tb_articulos 
SET fecha_crea = CURRENT_DATE;