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