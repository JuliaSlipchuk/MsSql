use Airport

/*Truncate table Airoport
Truncate table Partition
Truncate table Boss
Truncate table Flight
Truncate table Plane
Truncate table Pilot
Truncate table FreightFlight
Truncate table CharterFlight
Truncate table PassengersFlight
Truncate table IntermediateTable
Truncate table Passenger1
Truncate table Passenger2*/

INSERT INTO Airoport (AirportName, AirportAddress)
VALUES
('Borispol', 'Borispol, Kyiv region, 08307'),
('Zhulyany', 'street Medova, 2, Kiev, 02000'),
('Airport Vinnytsia', 'Ò0231 v. Gavryshivka 23202'),
('Airport Dnipropetrovsk', 'street Nezaleznosti 34 078999')

INSERT INTO Partition (PartName, NumberOfEmpl, PortA)
VALUES
('RunWay', 80, 'Borispol'),
('WaitingHall', 200, 'Borispol'),
('Maintenance', 170, 'Borispol'),
('Terrace', 40, 'Borispol'),
('RunWay', 70, 'Zhulyany'),
('WaitingHall', 150, 'Zhulyany'), 
('Maintenance', 30, 'Zhulyany'),
('RunWay', 70, 'Airport Vinnytsia'),
('WaitingHall', 120, 'Airport Vinnytsia'),
('Terrace', 20, 'Airport Vinnytsia'),
('RunWay', 85, 'Airport Dnipropetrovsk'), 
('WaitingHall', 90, 'Airport Dnipropetrovsk')

INSERT INTO Boss (PassportNumber, FirstNameBoss, LastNameBoss, Sex, BirthYear, PortName)
VALUES
('123456', 'Jack', 'Daniels', 'M', 1970, 'Borispol'),
('654321', 'Maria', 'Velika', 'F', 1980, 'Zhulyany'),
('456789', 'Richard', 'Nikolas', 'M', 1965, 'Airport Vinnytsia'),
('987654', 'Mike', 'Gordon', 'M', 1970, 'Airport Dnipropetrovsk')

INSERT INTO Flight (FlightNumber, TimeTable, AirportName, FlightTime)
VALUES
('741852', '20190508 12:35:00.00', 'Borispol', '02:35:00'),
('963852', '20191007 13:00:00.00', 'Borispol', '01:50:00'),
('123789', '20190520 06:30:00.00', 'Borispol', '00:55:00'),
('987321', '20191010 07:00:00.00', 'Borispol', '03:20:00'),
('111111', '20191010 07:00:00.00', 'Zhulyany', '02:22:00'),
('222222', '20190619 15:45:00.00', 'Zhulyany', '04:08:00'),
('333333', '20190825 20:20:00.00', 'Zhulyany', '00:40:00'),
('444444', '20191114 16:27:00.00', 'Zhulyany', '01:10:00'),
('555555', '20190727 20:20:00.00', 'Airport Vinnytsia', '01:45:00'),
('101010', '20191001 01:01:00.00', 'Airport Vinnytsia', '12:00:00'),
('888888', '20190707 22:40:00.00', 'Airport Vinnytsia', '10:10:00'),
('848625', '20190910 04:40:00.00', 'Airport Vinnytsia', '02:00:00'),
('951159', '20191118 18:18:00.00', 'Airport Vinnytsia', '01:00:00'),
('357753', '20191210 07:00:00.00', 'Airport Dnipropetrovsk', '07:15:00')

INSERT INTO Flight (FlightNumber, TimeTable, AirportName, FlightTime)
VALUES 
('410365', '20190826 16:17:00.00', 'Airport Dnipropetrovsk', '04:00:00'),
('850255', '20190705 22:20:00.00', 'Airport Vinnytsia', '00:55:00'),
('879213', '20190619 05:05:00.00', 'Zhulyany', '01:10:00')

INSERT INTO Plane (PlaneNumber, TypeP, Maker, LatestReview, FlightNumb)
VALUES
('111', 'NC87', 'Airbus', '2019-01-05', '357753'),
('222', 'PL95', 'Airbus', '2019-02-09', '848625'),
('333', 'NK77', 'Cessna Aircraft', '2019-04-09', '101010'),
('444', 'PP20', 'Beechcraft', '2019-04-04', '444444'),
('555', 'KL85', 'Beechcraft', '2019-01-17', '222222'),
('666', 'IP11', 'Airbus', '2019-01-22', '987321'),
('777', 'FR10', 'Airbus', '2019-12-12', '963852'),
('888', 'MM12', 'Cessna Aircraft', '2019-03-25', '741852'),
('999', 'OP44', 'Cessna Aircraft', '2019-01-21', '123789'),
('000', 'GH77', 'Beechcraft', '2019-04-04', '111111'),
('101', 'LT86', 'Beechcraft', '2019-02-15', '333333'),
('202', 'LL47', 'Beechcraft', '2019-02-05', '555555'),
('404', '''MK26', 'Embraer', '2018-11-12', '888888'),
('911', 'GT74', 'Airbus', '2019-04-10', '951159')

INSERT INTO Pilot (PassportNumber, FirstName, LastName, Sex, BirthYear, LastMedicalView, FlightNumb)
VALUES
('250250', 'Nazarii', 'Godovan', 'M', 1974, 2019, '357753'),
('114114', 'Pavlo', 'Kravchuk', 'M', 1989, 2019, '101010'),
('989878', 'Oleksandr', 'Nalialo', 'M', 1975, 2019, '222222'),
('120021', 'Lelia', 'Horta', 'F', 1980, 2019, '963852'),
('852020', 'Yurii', 'Kolosha', 'M', 1992, 2019, '123789'),
('456654', 'Maria', 'Revia', 'F', 1990, 2019, '333333'),
('741203', 'Lubomyr', 'Genadiy', 'M', 1968, 2019, '888888'), 
('879978', 'Oleg', 'Bilikov', 'M', 1985, 2019, '848625'),
('792927', 'Artem', 'Boliuyar', 'M', 1988, 2019, '444444'),
('114118', 'Bogdan', 'Blakash', 'M', 1978, 2019, '987321'),
('982160', 'Anna', 'Leilai', 'F', 1974, 2019, '741852'), 
('103746', 'Georgii', 'Stanislavski', 'M', 1972, 2019, '111111'),
('761349', 'Urgan', 'Kirkorov', 'M', 1969, 2019, '555555'),
('864590', 'Nazar', 'Peritov', 'M', 1991, 2019, '951159'),
('480022', 'Julian', 'Petrovich', 'M', 1988, 2019, '111111'),
('775566', 'Kiril', 'Karavanov', 'M', 1987, 2019, '333333'),
('146985', 'Katerina', 'Petrova', 'F', 1992, 2019, '987321'),
('432012', 'Oleg', 'Bachan', 'M', 1980, 2019, '444444'),
('784512', 'Mikolah', 'Kerch', 'M', 1974, 2019, '848625'),
('123951', 'Zenia', 'Zelenia', 'F', 1985, 2019, '444444'),
('732000', 'Gerold', 'Genovich', 'M', 1985, 2019, '222222')

INSERT INTO FreightFlight (FlightNumb, MaxLoadCapacity)
VALUES
('357753', 52.5),
('963852', 55.5),
('987321', 20),
('741852', 10.4)

INSERT INTO CharterFlight (FlightNumb, Customer)
VALUES
('848625', 'Zelezniak'),
('951159', 'Murahovski'),
('222222', 'Horovich')

INSERT INTO PassengersFlight (FlightNumb, MaxNumbPasseng)
VALUES
('111111', 100),
('333333', 200),
('444444', 400),
('555555', 500),
('101010', 10),
('888888', 88)

INSERT INTO PassengersFlight (FlightNumb, MaxNumbPasseng)
VALUES 
('410365', 100),
('850255', 400),
('879213', 88)

INSERT INTO Passenger1 (PassportNumber, FirstName, LastName, Sex, BirthDate, PassportNumbPartner)
VALUES
('166611', 'Julia', 'Slipchuk', 'F', '2000-07-10', NULL),
('747485', 'Eugen', 'Slipchuk', 'M', '2001-02-13', NULL),
('852564', 'Oleksandr', 'Slipchuk', 'M', '1972-11-14', '556677'),
('101213', 'Anatolii', 'Slipchuk', 'M', '1973-02-26', '114477'),
('852555', 'Anastasia', 'Zurova', 'F', '1988-05-05', NULL),
('879600', 'Camila', 'Nerava', 'F', '2000-10-08', NULL),
('663344', 'Ludmila', 'Koron', 'F', '1995-06-14', '852030'),
('720520', 'Petro', 'Lubikov', 'M', '1996-01-03', NULL),
('010203', 'Julia', 'Xerofinova', 'F', '1995-08-08', '040506'),
('108090', 'Kulia', 'Vereska', 'M', '2010-10-19', NULL),
('856777', 'Georgii', 'Korovai', 'M', '1974-12-12', NULL),
('884320', 'Anna', 'Liplota', 'F', '2006-06-29', NULL),
('845746', 'Dmitro', 'Fresta', 'M', '2009-10-30', NULL),
('523100', 'Oleksandra', 'Kolomiets', 'F', '2010-03-26', NULL),
('7463590', 'Oksana', 'Lerovska', 'F', '1999-09-08', NULL)

INSERT INTO IntermediateTable (FlightNumb, PassportNumb)
VALUES
('111111', '166611'),
('111111', '747485'),
('111111', '852564'),
('111111', '101213'),
('333333', '852555'),
('333333', '879600'),
('333333', '663344'),
('333333', '720520'),
('555555', '010203'),
('555555', '108090'),
('555555', '856777'),
('555555', '884320'),
('101010', '845746'),
('101010', '523100'),
('101010', '7463590'),
('888888', '010203'),
('888888', '663344'),
('888888', '747485'),
('888888', '101213'),
('888888', '166611')

INSERT INTO Passenger2 (PassportNumber, FirstName, LastName, Sex, BirthYear, PassportNumbPartner)
VALUES 
('556677', 'Lilia', 'Slipchuk', 'F', 1975, '852564'),
('114477', 'Inna', 'Slipchuk', 'F', 1978, '101213'),
('852030', 'Georgii', 'Koron', 'M', 1991, '663344'),
('040506', 'Andrii', 'Xerofinova', 'M', 1991, '010203')

SELECT * FROM Passenger1 WHERE PassportNumber = '166611'