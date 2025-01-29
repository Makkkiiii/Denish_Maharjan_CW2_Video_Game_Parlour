--  ! 1ST QUESTION OF THE CW2 !

--  ! DENISH MAHARJAN !
--  ! Softwarica College of IT and E-Commerce  !
--  ! Coursework 2 !
--  ! Submitted to: Dhirendra Bhatta !

--  ? Create all normalised tables in SQL.

use cw2Web;

CREATE TABLE Session_Types (
    Session_Type VARCHAR(20) PRIMARY KEY,
    Price DECIMAL(10, 2)
);

CREATE TABLE Sessions (
    Session_Number INT PRIMARY KEY,
    Session_Day VARCHAR(20),
    Session_Start_Time VARCHAR(20),
    Session_End_Time VARCHAR(20),
    Session_Type VARCHAR(20),
    Floor INT,
    FOREIGN KEY (Session_Type) REFERENCES Session_Types(Session_Type)
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Staff_Name VARCHAR(50)
);

CREATE TABLE Session_Staff (
    Session_Staff_ID INT PRIMARY KEY,
    Session_Number INT,
    Staff_ID INT,
    Role VARCHAR(50),
    FOREIGN KEY (Session_Number) REFERENCES Sessions(Session_Number),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID)
);

CREATE TABLE Membership_Types (
    Member_Type VARCHAR(20) PRIMARY KEY,
    Membership_Fee DECIMAL(10, 2)
);

CREATE TABLE Addresses (
    Address_ID INT PRIMARY KEY,
    Address VARCHAR(100)
);

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Surname VARCHAR(50),
    Address_ID INT,
    Member_Type VARCHAR(20),
    Join_Date DATE,
    Date_of_Birth DATE,
    FOREIGN KEY (Address_ID) REFERENCES Addresses(Address_ID),
    FOREIGN KEY (Member_Type) REFERENCES Membership_Types(Member_Type)
);

CREATE TABLE Bookings (
    Booking_ID INT PRIMARY KEY,
    Session_Number INT,
    Customer_ID INT,
    Date DATE,
    Fee DECIMAL(10, 2),
    FOREIGN KEY (Session_Number) REFERENCES Sessions(Session_Number),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY,
    Booking_ID INT,
    Prepaid VARCHAR(20),
    FOREIGN KEY (Booking_ID) REFERENCES Bookings(Booking_ID)
);

CREATE TABLE Arcade_Machines (
    Machine_Number INT PRIMARY KEY,
    Game VARCHAR(50),
    Year INT,
    Floor INT
);

CREATE TABLE Consoles (
    Console_ID INT PRIMARY KEY,
    Console_Name VARCHAR(50),
    Console_Quantity INT
);

CREATE TABLE Games (
    Game_ID INT PRIMARY KEY,
    Game_Name VARCHAR(50),
    PEGI VARCHAR(10),
    Console_ID INT,
    FOREIGN KEY (Console_ID) REFERENCES Consoles(Console_ID)
);

CREATE TABLE Session_Consoles (
    Session_Console_ID INT PRIMARY KEY,
    Session_Number INT,
    Console_ID INT,
    Qty INT,
    FOREIGN KEY (Session_Number) REFERENCES Sessions(Session_Number),
    FOREIGN KEY (Console_ID) REFERENCES Consoles(Console_ID)
);