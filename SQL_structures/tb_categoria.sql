-- Seleccionar toda la info
SELECT * 
FROM tb_categorias;


-- Insertar
INSERT INTO tb_categorias (codigo_ca, descripcion_ca)
VALUES (6, 'BORRAR');

-- Actualizar 
UPDATE tb_categorias 
SET descripcion_ca = 'VEHICULOS'
WHERE codigo_ca = 5;

-- Borrar
DELETE FROM tb_categorias
WHERE codigo_ca = 6;