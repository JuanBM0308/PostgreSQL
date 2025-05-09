-- Obtener la longitud
SELECT length('HOLA MUNDO!, Estoy aprendiendo ausar PostgreSQL');

-- Concatenar texto
SELECT 'Hola ' || 'Juan!';
SELECT CONCAT('Hola ', 'Juan!');

-- Convertir el string a mayusculas
SELECT UPPER('Mi gato es naranja');

-- Convertir el string a minusculas
SELECT LOWER('Mi gato es naranja');

-- Tomar caracteres de izquierda a derecha
SELECT LEFT('Mi gato es naranja', 7);

-- Tomar caracteres de derecha a izquierda
SELECT RIGHT('Mi gato es naranja', 7);

------------------------------------------------
-- CLASE 2
------------------------------------------------

-- Extraer texto
-- El conteo de caracteres es desde el 1
SELECT SUBSTRING('Soy un pokemon' FROM 8 FOR 7);
SELECT SUBSTR('Soy un pokemon', 8, 7);

-- Rellenar o adornar un string
-- Contar el string mas el espacio que deseamos agregar

-- Adorno a lado izquierdo
SELECT LPAD('Hola Mundo', 12, '&');

-- Adorno a lado derecho
SELECT RPAD('Hola Mundo', 12, '&');

-- Ejemplo creando un code personalizado
-- Resultado "C-001"
SELECT 'C-' || LPAD('1', 3, '0');

------------------------------------------------
-- CLASE 3
------------------------------------------------

-- Reemplazar string por posicion
SELECT OVERLAY('Este es mi pais' PLACING 'perro' FROM 12 FOR 4);

-- Crear un contenido para buscar otro dentro de un string, indicando su posicion como integer
SELECT POSITION('gar' IN 'Bienvenido a mi hogar');