--  ! 6th QUESTION OF THE CW2 !

--  ! DENISH MAHARJAN !
--  ! Softwarica College of IT and E-Commerce  !
--  ! Coursework 2 !
--  ! Submitted to: Dhirendra Bhatta !

--  ? Write a query that selects all staff working on session 1 on the maintenance.

SELECT Staff.Staff_ID, Staff.Staff_Name
FROM Staff
JOIN Session_Staff ON Staff.Staff_ID = Session_Staff.Staff_ID
WHERE Session_Staff.Session_Number = 1 AND Session_Staff.Role = 'Maintenance';

