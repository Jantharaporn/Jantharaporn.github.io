--ต้องการข้อมูลพนักงานทั้งหมด
Select * from Employees
--รหัสพนักงานชื่อนามสกุลพนักงานทุกคน
Select EmployeeID , FirstName , LastName from Employees
--พนักงานที่อยู่เมือง london
Select * from Employees where city = 'london'

Select City, Country from Customers

Select Distinct City, Country from Customers