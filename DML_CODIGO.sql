--Uso de el database Northwind
USE Northwind

--Crea una tabla HelloWorld

CREATE TABLE HelloWorld (
	Id INT IDENTITY,
	Description VARCHAR(1000))

--INSERT, inserta una fila en la tabla
INSERT INTO HelloWorld (Description) VALUES ('Hello World')

--SELECT, Muestra la tabla
SELECT * FROM HelloWorld

--Selecciona una columna especifica de la tabla
SELECT Description FROM HelloWorld

--La funcion Count muestra el numero de registros de la tabla
SELECT Count(*) FROM HelloWorld


--UPDATE, actualiza una fila especifica en la tabla
UPDATE HelloWorld SET Description = 'Hello, World' WHERE Id = 1

--Selecciona las filas de la tabla (observa como Description ha cambiado despues del UPDATE)
SELECT * FROM HelloWorld

--DELETE, elimina una fila de la tabla
DELETE FROM HelloWorld WHERE Id=1

--Observa el contenido de la tabla despues de la operacion DELETE
SELECT * FROM HelloWorld
