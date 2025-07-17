--ต้องการข้อมูลพนักงานทั้งหมด
Select * from Employees
--รหัสพนักงานชื่อนามสกุลพนักงานทุกคน
Select EmployeeID , FirstName , LastName from Employees
--พนักงานที่อยู่เมือง london
Select * from Employees where city = 'london'
--แสดงชื่อเมือง และประเทศทั้งหมดของลูกค้า
Select City, Country from Customers
--ISTINCT ข้อมูลที่แสดงออกมาซ้ำกันจะแสดงเพียง 1 แถว
Select Distinct City, Country from Customers
--แสดงข้อมูลสินค้าที่มีราคาสูงกว่า 200
SELECT * FROM Products WHERE Unitprice > 200
--แสดงข้อมูลลูกค้าที่ตั้งอยู่ใน London หรือ Vancouver
SELECT * FROM Customers WHERE City ='London' OR City ='Vancouver'

--การเปรียบเทียบเงื่อนไข โดยใช้ OR แสดงข้อมูลลูกค้าที่อยู่ในประเทศ USA หรือในเมือง Vancouver
SELECT * FROM Customers WHERE Country = 'USA' OR City = 'Vancouver'

--การเปรียบเทียบเงื่อนไขโดยใช้ AND
--แสดงข้อมูลสินค้าที่มีราคาตั้งแต่ 50 $ ขึ้นไปและจำนวนคงเหลือน้อยกว่า 20 ชิ้น
SELECT * FROM Products WHERE UnitPrice >= 50 AND UnitsInStock < 20

--แสดงข้อมูลสินค้าที่มีจำนวนคงเหลลือต่ำกว่า 20 
--หรือ มีจำนวนคงเหลือน้อยกว่าระดับการสั่งซื้อ
Select * from Products
where UnitsInStock<20 or UnitsInStock <= ReorderLevel

--การเปรียบเทียบเงื่อนไข โดยใช้ BETWEEN ... AND ...แสดงข้อมูลสินค้าที่มีราคาตั้งแต่ 50-100 $
SELECT * FROM Products
WHERE UnitPrice BETWEEN 50 AND 100

SELECT * FROM Products
WHERE UnitPrice >= 50 AND UnitPrice<=100

--การเปรียบเทียบเงื่อนไข โดยใช้ IN
SELECT * FROM Customers
WHERE Country IN ('Brazil','Argentina','Mexico');
SELECT * FROM Customers
WHERE Country = 'Brazil' or Country = 'Argentina' or Country = 'Mexico'

--การเปรียบเทียบเงื่อนไข โดยใช้ LIKE 
--แสดงข้อมูลพนักงานมีชื่อขึ้นต้นด้วยตัวอักษร N
SELECT * FROM Employees WHERE FirstName LIKE 'N%'

--แสดงข้อมูลพนักงานที่มีชื่อประกอบด้วยตัวอักษร 5 ตัว

SELECT * FROM Employees WHERE FirstName LIKE '_____'

--ต้องการข้อมูลลูกค้าที่ขึ้นต้นด้วยตัว A
Select * from Customers where CompanyName LIKE 'A%'

--ต้องการข้อมูลลูกค้าที่มีชื่อลงท้ายด้วย Y
Select * from Customers where CompanyName LIKE '%Y'

--ต้องการชื่อ นามสกุล พนักงานที่มีชื่อปรพกอบด้วยตัวอักษา 'an'
Select firstname, lastname from Employees
where FirstName like '%an%'

--ต้องการชื่อบริษัทลูกค้าที่มีตัวอักษรตัวที่ 2 เป็น 'A'
Select CompanyName from Customers
where CompanyName LIKE '_A%'

--การจัดเรียงข้อมูล(ORDER BY)
--แสดงข้อมูลรหัสสินค้า, ชื่อสินค้า และราคา โดยเรียงลำดับผลลัพธ์จากราคาสูงที่สุดไปต่ำที่สุด
SELECT ProductID,ProductName,UnitPrice FROM Products ORDER BY UnitPrice desc

--•แสดงข้อมูลรหัสประเภทสินค้า, ชื่อสินค้า และราคา โดยเรียงลำดับตามรหัสประเภทสินค้าจากน้อยไปมาก หากรหัสประเภทเป็นรหัส
--เดียวกันให้เรียงตามราคาสินค้าจากมากไปน้อย
SELECT CategoryID, ProductName, UnitPrice
FROM Products ORDER BY CategoryID ASC , UnitPrice DESC

--ต้องการชื่อ และราคาสินค้าที่มีจำนวนในสต๊อกสูงที่สึด 10 อันดับแรก
Select top 10 ProductName, UnitPrice, UnitsInStock
from Products
order by UnitsInStock desc

