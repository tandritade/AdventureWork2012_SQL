use adventureworks

-- 1. Get all the details from the person table including email ID, phone number, and phone number type

select PP.*, PE.EmailAddress ,PT.PhoneNumberTypeID 
from Person.Person PP , person.EmailAddress PE, Person.PhoneNumberType PT

-- 2. Get the details of the sales header order made in May 2011

select * from sales.SalesOrderHeader where month(OrderDate) = 5 and year(orderdate) = 2011

-- 3. Get the details of the sales details order made in the month of May 2011

SELECT MONTH(SSH.ORDERDATE) 'MAY',YEAR(SSH.ORDERDATE), SSO.*, '2011' FROM SALES.SALESORDERDETAIL SSO 
JOIN
SALES.SALESORDERHEADER SSH
ON
SSO.SALESORDERID = SSH.SALESORDERID
WHERE MONTH(SSH.ORDERDATE) = 5 AND YEAR(SSH.ORDERDATE) = 2011

-- 4. Get the total sales made in May 2011

SELECT  SubTotal 
FROM SALES.SalesOrderHeader 
WHERE MONTH(ORDERDATE) = 5 AND YEAR(ORDERDATE) = 2011

-- 5. Get the total sales made in the year 2011 by month order by increasing sales

SELECT * FROM SALES.SalesOrderHeader
WHERE YEAR(ORDERDATE) = 2011 ORDER  BY MONTH(ORDERDATE),SUBTOTAL

-- 6. Get the total sales made to the customer with FirstName='Gustavo' and LastName='Achong'

SELECT PP.FIRSTNAME, PP.LASTNAME, SS.SUBTOTAL 
FROM SALES.SalesOrderHeader SS
JOIN
PERSON.Person PP 
ON SS.ROWGUID = PP.ROWGUID 
WHERE FirstName = 'GUSTAVO' AND LASTNAME = 'ACHONG'