use Airport

/*DROP TABLE Airoport
DROP TABLE Partition
DROP TABLE Boss
DROP TABLE Flight
DROP TABLE Plane
DROP TABLE Pilot
DROP TABLE FreightFlight
DROP TABLE CharterFlight
DROP TABLE PassengersFlight
DROP TABLE IntermediateTable
DROP TABLE Passenger1
DROP TABLE Passenger2*/

CREATE TABLE Airoport
(
  AirportName NVARCHAR(30) PRIMARY KEY,
  AirportAddress NVARCHAR(40) NOT NULL
)

CREATE TABLE Partition
(
  PartName NVARCHAR(30),
  NumberOfEmpl INT CHECK (NumberOfEmpl >= 5) NOT NULL,
  PortA NVARCHAR(30) REFERENCES Airoport(AirportName),
  PRIMARY KEY (PartName, PortA)
)

CREATE TABLE Boss
(
  PassportNumber NVARCHAR(35) PRIMARY KEY,
  FirstNameBoss NVARCHAR(25) NOT NULL,
  LastNameBoss NVARCHAR(35) NOT NULL,
  Sex CHAR(1) CHECK (Sex = 'M' OR Sex = 'F') NOT NULL,
  BirthYear INT NOT NULL,
  PortName NVARCHAR(30) UNIQUE NOT NULL
  FOREIGN KEY (PortName) REFERENCES Airoport(AirportName)
)

CREATE TABLE Flight
(
  FlightNumber INT PRIMARY KEY,
  TimeTable DATETIME NOT NULL,
  AirportName NVARCHAR(30) NOT NULL,
  FlightTime TIME NOT NULL,
  FOREIGN KEY (AirportName) REFERENCES Airoport(AirportName)
)

ALTER TABLE Flight
ADD CHECK (FlightNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9]')

CREATE TABLE Plane
(
  PlaneNumber NVARCHAR(3) PRIMARY KEY,
  TypeP NVARCHAR(10) NOT NULL,
  Maker NVARCHAR(30) NOT NULL,
  LatestReview DATE NOT NULL,
  FlightNumb INT UNIQUE NOT NULL
  FOREIGN KEY (FlightNumb) REFERENCES Flight(FlightNumber)
)

ALTER TABLE Plane
ADD CHECK (PlaneNumber LIKE '[0-9][0-9][0-9]')

CREATE TABLE Pilot
(
  PassportNumber NVARCHAR(35) PRIMARY KEY,
  FirstName NVARCHAR(25) NOT NULL,
  LastName NVARCHAR(35) NOT NULL,
  Sex CHAR(1) CHECK (Sex = 'M' OR Sex = 'F') NOT NULL,
  BirthYear INT NOT NULL,
  LastMedicalView INT NOT NULL,
  FlightNumb INT NOT NULL,
  FOREIGN KEY (FlightNumb) REFERENCES Flight(FlightNumber)
)

CREATE TABLE FreightFlight
(
  FlightNumb INT PRIMARY KEY,
  MaxLoadCapacity FLOAT CHECK (MaxLoadCapacity >= 1) NOT NULL
  FOREIGN KEY (FlightNumb) REFERENCES Flight(FlightNumber)
)

CREATE TABLE CharterFlight
(
  FlightNumb INT PRIMARY KEY,
  Customer NVARCHAR(88) NOT NULL,
  FOREIGN KEY (FlightNumb) REFERENCES Flight(FlightNumber)
)

CREATE TABLE PassengersFlight
(
  FlightNumb INT PRIMARY KEY,
  MaxNumbPasseng INT CHECK (MaxNumbPasseng >= 5) NOT NULL,
  FOREIGN KEY (FlightNumb) REFERENCES Flight(FlightNumber)
)

CREATE TABLE IntermediateTable
(
  FlightNumb INT,
  PassportNumb NVARCHAR(35),
  PRIMARY KEY(FlightNumb, PassportNumb),
  FOREIGN KEY (FlightNumb) REFERENCES PassengersFlight(FlightNumb),
  FOREIGN KEY (PassportNumb) REFERENCES Passenger1(PassportNumber)
)

CREATE TABLE Passenger1
(
  PassportNumber NVARCHAR(35) PRIMARY KEY,
  FirstName NVARCHAR(25) NOT NULL,
  LastName NVARCHAR(35) NOT NULL,
  Sex CHAR(1) CHECK (Sex = 'M' OR Sex = 'F') NOT NULL,
  BirthDate DATE NOT NULL,
  PassportNumbPartner NVARCHAR(35) NULL
)

CREATE TABLE Passenger2
(
  PassportNumber NVARCHAR(35) PRIMARY KEY,
  FirstName NVARCHAR(25) NOT NULL,
  LastName NVARCHAR(35) NOT NULL,
  Sex CHAR(1) CHECK (Sex = 'M' OR Sex = 'F') NOT NULL,
  BirthYear INT NOT NULL,
  PassportNumbPartner NVARCHAR(35) UNIQUE NULL
  FOREIGN KEY (PassportNumbPartner) REFERENCES Passenger1(PassportNumber)
)

CREATE TRIGGER CheckBirthDateBoss
ON Boss
AFTER INSERT, UPDATE 
AS 
IF EXISTS (SELECT * FROM inserted
  WHERE inserted.BirthYear < 1915 OR inserted.BirthYear > 2019)
ROLLBACK TRANSACTION

CREATE TRIGGER CheckBirthDatePilot
ON Pilot
AFTER INSERT, UPDATE 
AS 
IF EXISTS (SELECT * FROM inserted
  WHERE inserted.BirthYear < 1915 OR inserted.BirthYear > 2019)
ROLLBACK TRANSACTION

CREATE TRIGGER CheckLastMedicalView
ON Pilot
AFTER INSERT, UPDATE 
AS
IF EXISTS (SELECT * FROM inserted
  WHERE inserted.BirthYear > inserted.LastMedicalView)
ROLLBACK TRANSACTION

CREATE TRIGGER CheckPassNumbPart
ON Passenger2
AFTER INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM inserted 
		   INNER JOIN Passenger1 
		   ON inserted.PassportNumbPartner = Passenger1.PassportNumber
		   WHERE Passenger1.PassportNumbPartner != inserted.PassportNumber)
ROLLBACK TRANSACTION  
