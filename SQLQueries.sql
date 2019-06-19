use Airport

 -- Simple queries --

SELECT * FROM Airoport

SELECT PortName, PassportNumber FROM Boss

SELECT PartName, NumberOfEmpl FROM Partition 
WHERE PortA = 'Borispol'

SELECT FlightNumber FROM Flight 
WHERE FlightTime = '01:45:00' OR TimeTable = '20191210 07:00:00.00'

 -- Medium queries --

 SELECT FirstName, LastName, FlightNumb FROM Passenger1
 INNER JOIN IntermediateTable
 ON Passenger1.PassportNumber = IntermediateTable.PassportNumb
 WHERE Sex = 'M'

 SELECT FirstName, LastName, FlightNumber FROM Pilot
 RIGHT JOIN Flight 
 ON Pilot.FlightNumb = Flight.FlightNumber

 SELECT BirthYear, COUNT(PassportNumber) FROM Pilot
 GROUP BY BirthYear
 HAVING BirthYear >= 1990
 ORDER BY BirthYear DESC

 SELECT * FROM Pilot
 WHERE BirthYear BETWEEN 1990 AND 1995
 AND Sex = 'M' 
 AND FlightNumb IN (SELECT FlightNumb FROM Flight WHERE AirportName = 'Borispol')

 SELECT FirstName, LastName FROM Passenger1
 WHERE FirstName LIKE '%a%' 
 AND YEAR(BirthDate) >= 1995

 SELECT DISTINCT FlightNumb FROM IntermediateTable
 INNER JOIN Passenger1 ON IntermediateTable.PassportNumb = Passenger1.PassportNumber
 WHERE Passenger1.PassportNumber IN (SELECT PassportNumber FROM Passenger1 WHERE PassportNumbPartner IS NOT NULL)

 SELECT FlightNumber, TimeTable, PlaneNumber, TypeP, PassportNumber FROM Flight
 LEFT JOIN Plane ON Flight.FlightNumber = Plane.FlightNumb
 RIGHT JOIN Pilot ON Flight.FlightNumber = Pilot.FlightNumb
 WHERE Pilot.BirthYear >= 1990 AND Plane.Maker = 'Airbus'

