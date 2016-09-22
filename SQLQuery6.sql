USE [Northwind]
GO

--9.
UPDATE [dbo].[Orders]
   SET 
      [ShipRegion] = 'EuroZone'
      
      where [ShipCountry] = 'France'
 
 GO

 --10.
 DELETE FROM [dbo].[Order Details]
      WHERE Quantity = 1
GO

--11. 
select AVG (quantity), MAX (quantity), MIN (quantity)
from [Order Details] 

--12.
select AVG (quantity), MAX (quantity), MIN (quantity)
from [Order Details] 
group by OrderID

--13.
select *  
from Orders
where OrderID = '10290'

--14.
select *
from Orders 
inner join customers on Orders.CustomerID=Customers.CustomerID

select *
from Orders 
left join customers on Orders.CustomerID=Customers.CustomerID

select *
from Orders 
right  join customers on Orders.CustomerID=Customers.CustomerID

--15.
select *
from Employees
where ReportsTo is NULL

--16.
select *
from Employees
where ReportsTo = 2

 