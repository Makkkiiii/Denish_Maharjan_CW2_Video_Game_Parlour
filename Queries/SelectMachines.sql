--  ! 4TH QUESTION OF THE CW2 !

--  ! DENISH MAHARJAN !
--  ! Softwarica College of IT and E-Commerce  !
--  ! Coursework 2 !
--  ! Submitted to: Dhirendra Bhatta !

--  ? Write a query to select all machines on floor 1 by machine number in descending order. 

SELECT *FROM Arcade_Machines
WHERE Floor = 1
ORDER BY Machine_Number DESC;