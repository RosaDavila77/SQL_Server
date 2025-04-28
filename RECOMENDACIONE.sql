USE Northwind
GO
-- Mostrara los 10 primeros registros de la tabla Customers, ordenado por la columna CompanyName
SELECT TOP 10 * FROM Customers
ORDER BY CompanyName

-- Tambien puede hacer referencia a la base de datos utilizando la sintaxis
-- completa con el formato [Base de datos]. [Esquema]. [Tabla]

SELECT TOP 10 * FROM Northwind.[dbo].[Customers]
ORDER BY CompanyName

--Retorna todas los CompanyName que tienen el nombre comienza con AL.
SELECT TOP 10 * FROM Northwind.dbo.Customers
WHERE CompanyName LIKE N'AL%'
ORDER BY CompanyName

--Retorna todos los CompanyName que contiene app.
SELECT * FROM Northwind.dbo.Customers
WHERE CompanyName LIKE '%app%'

--Retorna el nombre del caracter faltante
SELECT * FROM Northwind.dbo.Customers
WHERE CompanyName LIKE 'Ernst _andel'

--Retorna los nombre que incian con los caracteres F,G,H,I,J,K,L,M,N,Ñ,O,P Y Q Y terminan
-- en ANK.
SELECT * FROM Northwind.dbo.Customers
WHERE CustomerID LIKE '[F-Q]RANK'

--Retorna los ID que no contienen O despues de B y empiezan con B.
SELECT * FROM Northwind.dbo.Customers
WHERE CustomerID LIKE 'B[^O]%'


--RECOMENDACIONES:

--Esto es util cuando se consulta en diferentes bases de datos. Donde [dbo] se denomina 
--esquema y se debe especificar mientras se usa la sintaxis completa.
SELECT TOP 10 * FROM Pubs.[dbo].[Authors]

-- Si la tabla de la base de datos contiene columnas con nombres de palabras reservadas, por ejemplo Date
-- se necesita encerrar la columna nombrada en corchetes
SELECT TOP 10  [Date] FROM dbo.MyLogTable
ORDER BY [Date] DESC

-- Lo mismo se aplica si el nombre de la columna contiene spacios en su nombre
-- (lo cual no es recomendable). Una sintaxis alternativa es usar comillas dobles en lugar de corchetes.

SELECT TOP 10 "Date" FROM dbo.My.LogTable
ORDER BY "Date" DESC

-- Es equivalente pero no es comunmente usado. Nota.La diferencia entre las comillas dobles y las comillas
-- simples: Las comillas simples son usadas para strings

SELECT TOP 10 "Date" FROM dbo.MyLogTable
WHERE UserId ='Johndoe'
ORDER BY "Date" DESC


