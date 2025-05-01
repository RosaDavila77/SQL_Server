
USE Northwind

-- Muestra todas las columnas de alguna tabla del sistema, en este caso Categories.

SELECT * FROM Categories

--	Muestra columnas especificas de una tabla (muestra las columnas CategoryName y Description
--	de la tabla Categories
SELECT CategoryName, [Description] FROM Categories

--	La clausula WHERE filtra filas especificas para mostrarlo con SELECT.
SELECT * FROM Customers
WHERE ContactTitle like 'Owner' -- Se puede usar 'like' o '='

--	ORDER BY es una condicion que ordena las filas del conjunto de resultados
--	devueltos por algunas columnas o expresiones.

SELECT * FROM Customers
ORDER BY ContactTitle

-- GROUP BY agrupa resultados por algun valor

SELECT ProductName, count(*) as CANTIDAD	-- La funcion COUNT calcula la cantidad de registros en el grupo.
FROM Products 
GROUP BY ProductName

SELECT ContactTitle , count(*) as CANTIDAD
FROM Customers
GROUP BY ContactTitle


--	La clausula HAVING elimina los grupos que no cumple la condicion.
SELECT ContactTitle , count(*) as CANTIDAD
FROM Customers
GROUP BY ContactTitle
HAVING count(*) <= 10		-- La condicion HAVING pide que CANTIDAD sea menor igual a 10

-- La funcion 'TOP N' retorna solo las primeras N filas en el resultado.
SELECT TOP 5 * FROM Categories

SELECT TOP 10 * FROM Categories

--	'OFFSET n ROWS' omite o desplaza las primeras n filas del conjunto de resultados.
SELECT CompanyName, CustomerID FROM Customers
ORDER BY CompanyName
OFFSET 5 ROWS		--	'FETCH NEXT m ROWS ONLY' despues del OFFSET, devuelve las siguientes m filas.
FETCH NEXT 2 ROWS ONLY	

-- Nota.Es obligatorio incluir las clausula ORDER BY para usar OFFSET FETCH

--Si usas el OFFSET sin FETCH solo omite las primeras N filas.
SELECT CompanyName, CustomerID FROM Customers
ORDER BY CompanyName
OFFSET 10 ROWS

--	SELECT sin FROM (sin fuente de datos)
declare @X int = 17; -- Se declara la funcion X = 17

SELECT @X as X1,
	@X + 2 as X2,
	@X + 10 as X3