--  ! 3RD QUESTION OF THE CW2 !

--  ! DENISH MAHARJAN !
--  ! Softwarica College of IT and E-Commerce  !
--  ! Coursework 2 !
--  ! Submitted to: Dhirendra Bhatta !

-- ? Write a query to select all the customers booked on session 1 who have not paid yet. 

use cw2Web;
SELECT Customers.Customer_ID, Customers.First_Name, Customers.Surname
FROM Customers
JOIN Bookings ON Customers.Customer_ID = Bookings.Customer_ID
JOIN Payments ON Bookings.Booking_ID = Payments.Booking_ID
WHERE Bookings.Session_Number = 1 AND Payments.Prepaid = 'N';