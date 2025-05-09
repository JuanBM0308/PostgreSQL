SELECT *
FROM tb_articulos;

INSERT INTO tb_articulos(codigo_ar, descripcion_ar, marca_ar, codigo_um, codigo_ca)
VALUES (5, 'Soplador', 'Kaiser', 7, 4);

-- Inner join :D
SELECT codigo_ar, descripcion_ar, marca_ar, descripcion_um, descripcion_ca
FROM tb_articulos
INNER JOIN tb_unidades_medidas ON tb_articulos.codigo_um = tb_unidades_medidas.codigo_um
INNER JOIN tb_categorias ON tb_articulos.codigo_ca = tb_categorias.codigo_ca;