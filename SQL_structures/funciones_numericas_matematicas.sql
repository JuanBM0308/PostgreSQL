-- Funciones numericas y matematicas
-- Obtener el residuo de una division
SELECT MOD(10, 2);

-- Redondear un numero, tambien es podible decir si redondea con decimales
SELECT ROUND(10.40);
SELECT ROUND(10.406767435, 3);

-- Obtener la raiz cuadrada de un numero
SELECT SQRT(12);

-- Obtener el valor de pi
SELECT PI();

-- Valores random con random
SELECT ROUND(RANDOM() * 10);

-- Obtener el valor absoluto d eun numero
SELECT ABS(-12.3);

-------------------------------------
-- APLICANDO FUNCIONES CON SONSULTAS
-------------------------------------

-- Contar
SELECT COUNT(codigo_ca) FROM tb_categorias;

-- Sumar toda la info numerica
SELECT SUM(codigo_ca) FROM tb_categorias;

-- Valor minimo/menor 
SELECT MIN(codigo_ca) FROM tb_categorias;

-- Valor maximo/mayor 
SELECT MAX(codigo_ca) FROM tb_categorias;