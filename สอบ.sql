--แสดงหมายเลขเดือนในปี 1996 พร้อมยอดขายทั้งหมด(รวมเดือนที่เหมือนกันแล้วหายอดทั้งหมด) จำนวนใบสั่งซื้อ เฉพาะพนักงานที่ชื่อ Margare Anne และ Nancy

select * from Orders
select * from Employees
select * from [Order Details]
select * from Suppliers

select FORMAT(o.OrderDate, 'MM') หมายเลขเดือนในปี1996,cast(sum(od.unitprice * od.quantity*(1-discount)) as decimal(10,2)) ยอดขายทั้งหมด, count(DISTINCT o.OrderID) จำนวนใบสั่งซื้อ
from Orders o
join Employees e ON o.EmployeeID = e.EmployeeID
join [Order Details] od ON o.OrderID = od.OrderID
WHERE YEAR(o.OrderDate) = 1996 and e.FirstName in ('Margaret', 'Anne', 'Nancy') 
GROUP BY 
    FORMAT(o.OrderDate, 'MM')
