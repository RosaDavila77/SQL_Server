# SQL_Server
SQL Server es un sistema de gestión de bases de datos desarrollado por Microsoft. Sirve para almacenar, organizar y gestionar grandes cantidades de datos.

##  Data Manipulation Language / Lenguaje de Manipulación de Datos (DML)
Es un subconjunto de SQL (Structured Query Language) que se usa para trabajar con los datos que ya están en las tablas de una base de datos. Incluye operaciones como **INSERT , UPDATE y DELETE**

[Codigo](https://github.com/RosaDavila77/SQL_Server/commit/00cbd40e54db31e230698c4a878e4381972fc0f6)

## Northwind Database
Northwind es una base de datos de ejemplo creada por Microsoft, diseñada para simular las operaciones de una empresa que importa y exporta productos alimenticios. Se utiliza comúnmente para aprender y practicar conceptos de bases de datos.

[Northwind Database](https://github.com/RosaDavila77/SQL_Server/blob/main/northwind.sql)

1. Los 10 primeros registros de la tabla Customers, ordenado por la columna CompanyName
![Captura de pantalla 2025-04-26 150732](https://github.com/user-attachments/assets/7478bb02-bba3-4723-9d3c-c6b73b617a87)

Esto es util cuando se consulta en diferentes bases de datos. Donde [dbo] se denomina esquema y se debe especificar mientras se usa la sintaxis completa.
  **SELECT TOP 10 * FROM Pubs.[dbo].[Authors]**
  
Si la tabla de la base de datos contiene columnas que se nombran como palabras reservadas.

  **SELECT TOP 10 [Date] FROM dbo.MyLogTable**
  **ORDER BY [Date] DESC**
