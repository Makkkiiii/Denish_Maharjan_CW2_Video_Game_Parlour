--  ! 2ND QUESTION OF THE CW2 !

--  ! DENISH MAHARJAN !
--  ! Softwarica College of IT and E-Commerce  !
--  ! Coursework 2 !
--  ! Submitted to: Dhirendra Bhatta !

--  ? Enter all data on customers, member types, machines, floors, staffs, games, consoles, and sessions 
--  ? from the examples provided in the problem statement.

--  * TABLE Session_Types
INSERT INTO Session_Types (Session_Type, Price) VALUES
('FREE', 1500),
('SPECIAL', 1000);
	
-- * TABLE Sessions
INSERT INTO Sessions (Session_Number, Session_Day, Session_Start_Time, Session_End_Time, Session_Type, Floor) VALUES
(1, 'SUNDAY', '9:00 AM', '9:00 PM', 'FREE', 1),
(2, 'SUNDAY', '9:00 AM', '9:00 PM', 'FREE', 2),
(3, 'SATURDAY', '9:00 AM', '9:00 PM', 'FREE', 1),
(4, 'FRIDAY', '6:00 PM', '10:00 PM', 'SPECIAL', 2);
SELECT * FROM SESSIONS;

-- * TABLE Staff
INSERT INTO Staff (Staff_ID, Staff_Name) VALUES
(1, 'SAGAR ARYAL'),
(2, 'BIKESH KHAGDI'),
(3, 'SAROJ SAPKOTA'),
(4, 'JONATHAN SHRESTHA'),
(5, 'ROHAN CHAUDHARY'),
(6, 'RAJEEV KARMACHARYA');

-- * TABLE Session_Staff
INSERT INTO Session_Staff (Session_Staff_ID, Session_Number, Staff_ID, Role) VALUES
(1, 1, 1, 'CAFE'),
(2, 1, 2, 'MAINTENANCE'),
(3, 1, 3, 'COUNTER'),
(4, 1, 4, 'COUNTER'),
(5, 2, 5, 'MAINTENANCE'),
(6, 2, 6, 'CAFE');

-- * TABLE Customers
INSERT INTO Customers (Customer_ID, First_Name, Surname, Address_ID, Member_Type, Join_Date, Date_of_Birth) VALUES
(1, 'SAANVI', 'BHATTA', 1, 'STANDARD', '2024-01-01', '2005-03-01'),
(2, 'BILL', 'GATES', 2, 'PREMIUM', '2024-07-06', '2001-10-12'),
(3, 'ELON', 'MUSK', 3, 'PREMIUM', '2024-03-28', '2003-07-20'),
(4, 'KAMALA', 'HARRIS', 4, 'STANDARD', '2023-01-05', '1973-05-01');

-- * TABLE Membership_Types
INSERT INTO Membership_Types (Member_Type, Membership_Fee) VALUES
('STANDARD', 1500),
('PREMIUM', 20000);

-- * TABLE Addresses
INSERT INTO Addresses (Address_ID, Address) VALUES
(1, 'BANESHWOR, KATHMANDU'),
(2, 'MAITIDEVI, KATHMANDU'),
(3, 'PUTALISADAK, KATHMANDU'),
(4, 'KAPAN, KATHMANDU');

-- * TABLE Payments
INSERT INTO `bookings` (`Booking_ID`, `Session_Number`, `Customer_ID`, `Date`, `Fee`) VALUES 
('1', '1', '1', '2024-07-22', NULL), 
('2', '1', '2', '2024-07-22', '1500'),
('3', '1', '3', '2024-07-22', '1000'),
('4', '2', '4', '2024-07-22', '1000');

-- * TABLE Payments
INSERT INTO Payments (Payment_ID, Booking_ID, Prepaid) VALUES
(1, 1, NULL),
(2, 2, 'N'),
(3, 3, 'Y'),
(4, 4, 'N');

-- * TABLE Floors
INSERT INTO Arcade_Machines (Machine_Number, Game, Year, Floor) VALUES
(23, 'COC', 2010, 1),
(123, 'GTA', 2013, 1),
(45, 'SPIDERMAN', 2016, 2),
(1234, 'PUBG', 2004, 1);

-- * TABLE Consoles
INSERT INTO Consoles (Console_ID, Console_Name, Console_Quantity) VALUES
(1, 'XBOX 360', 3),
(2, 'PS3', 2),
(3, 'PS2', 3),
(4, 'NINTENDO 64', 2),
(5, 'NINTENDO SWITCH', 4);

-- * TABLE Games
INSERT INTO Games (Game_ID, Game_Name, PEGI, Console_ID) VALUES
(1, 'ELDEN RING: SHADOW OF THE ERDTREE', 'PG', 1),
(2, 'FINAL FANTASY VII REBIRTH', 'PG', 2),
(3, 'DESTINY 2: THE FINAL SHAPE', 'PG', 3),
(4, 'TEKKEN 8', 'PG', 2),
(5, 'PERSONA 3 RELOAD', 'PG', 4),
(6, 'CAVERN OF DREAMS', 15, 5);

-- * TABLE Session_Consoles
INSERT INTO Session_Consoles (Session_Console_ID, Session_Number, Console_ID, Qty) VALUES
(1, 1, 3, 2),
(2, 2, 2, 2);