-- Table: public.tb_fabricante

-- DROP TABLE IF EXISTS public.tb_fabricante;

CREATE TABLE IF NOT EXISTS public.tb_fabricante
(
    id_fa integer NOT NULL DEFAULT nextval('tb_fabricante_id_fa_seq'::regclass),
    nombre_fa character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT tb_fabricante_pkey PRIMARY KEY (id_fa)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tb_fabricante
    OWNER to postgres;

-----------------------------------------------------------------------------------
-- Table: public.tb_producto

-- DROP TABLE IF EXISTS public.tb_producto;

CREATE TABLE IF NOT EXISTS public.tb_producto
(
    id_pro integer NOT NULL,
    nombre_pro character varying(100) COLLATE pg_catalog."default",
    precio_pro double precision NOT NULL,
    id_fa integer NOT NULL,
    CONSTRAINT tb_producto_pkey PRIMARY KEY (id_pro),
    CONSTRAINT "FK_01" FOREIGN KEY (id_fa)
        REFERENCES public.tb_fabricante (id_fa) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tb_producto
    OWNER to postgres;
-----------------------------------------------------------------------------------

-- Insertar datos
INSERT INTO tb_fabricante VALUES(1, 'Asus');
INSERT INTO tb_fabricante VALUES(2, 'Lenovo');
INSERT INTO tb_fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO tb_fabricante VALUES(4, 'Samsung');
INSERT INTO tb_fabricante VALUES(5, 'Seagate');
INSERT INTO tb_fabricante VALUES(6, 'Crucial');
INSERT INTO tb_fabricante VALUES(7, 'Gigabyte');
INSERT INTO tb_fabricante VALUES(8, 'Huawei');
INSERT INTO tb_fabricante VALUES(9, 'Xiaomi');

INSERT INTO tb_producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO tb_producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO tb_producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO tb_producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO tb_producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO tb_producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO tb_producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO tb_producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO tb_producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO tb_producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO tb_producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);

-- Visualizar datos
SELECT * FROM tb_fabricante;
SELECT * FROM tb_producto;

--------------------------
-- EJERCICIOS DE PRACTICA|
--------------------------

-- Lista el nombre de todos los productos que hay en la tabla producto.
SELECT nombre_pro
FROM tb_producto;

-- Lista los nombres y los precios de todos los productos de la tabla producto.
SELECT nombre_pro, precio_pro
FROM tb_producto;

-- Lista todas las columnas de la tabla producto.
SELECT * FROM tb_producto;

-- Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
SELECT nombre_pro, precio_pro AS precio_euro, precio_pro * 1.12 AS precio_dolar
FROM tb_producto
ORDER BY precio_dolar ASC;

-- Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
SELECT UPPER(nombre_pro), precio_pro
FROM tb_producto;

-- Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
SELECT LOWER(nombre_pro), precio_pro
FROM tb_producto;

-- Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
SELECT nombre_fa,  UPPER(SUBSTR(nombre_fa, 1, 2))
FROM tb_fabricante;

-- Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
SELECT nombre_pro, ROUND(precio_pro)
FROM tb_producto;

-- 10) Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
SELECT nombre_pro, ROUND(precio_pro)
FROM tb_producto;

-- Lista el identificador de los fabricantes que tienen productos en la tabla producto.
SELECT fab.id_fa, nombre_fa
FROM tb_fabricante AS fab
INNER JOIN tb_producto ON fab.id_fa = tb_producto.id_fa
ORDER BY fab.id_fa ASC;

-- Lista el identificador de los fabricantes que tienen productos en la tabla producto, eliminando los identificadores que aparecen repetidos.
SELECT DISTINCT  fab.id_fa, nombre_fa
FROM tb_fabricante AS fab
INNER JOIN tb_producto ON fab.id_fa = tb_producto.id_fa
ORDER BY fab.id_fa ASC;

-- Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT nombre_fa
FROM tb_fabricante
ORDER BY nombre_fa ASC;

-- Lista los nombres de los fabricantes ordenados de forma descendente.
SELECT nombre_fa
FROM tb_fabricante
ORDER BY nombre_fa DESC;

-- Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
SELECT nombre_pro, precio_pro
FROM tb_producto 
ORDER BY nombre_pro ASC, precio_pro DESC;

-- Devuelve una lista con las 5 primeras filas de la tabla fabricante.
SELECT * 
FROM tb_producto
LIMIT 5;

-- Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.
SELECT * 
FROM tb_fabricante
OFFSET 3
LIMIT 2;

-- Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre_pro, precio_pro
FROM tb_producto 
ORDER BY precio_pro ASC
LIMIT 1;

-- Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre_pro, precio_pro
FROM tb_producto 
ORDER BY precio_pro DESC
LIMIT 1;

-- 20) Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.
SELECT pro.id_fa, nombre_fa, nombre_pro
FROM tb_producto AS pro
INNER JOIN tb_fabricante AS fab 
ON pro.id_fa = fab.id_fa
WHERE pro.id_fa = 2;