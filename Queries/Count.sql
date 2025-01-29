--  ! 5TH QUESTION OF THE CW2 !

--  ! DENISH MAHARJAN !
--  ! Softwarica College of IT and E-Commerce  !
--  ! Coursework 2 !
--  ! Submitted to: Dhirendra Bhatta !

--  ? Write a query that counts all the console games for the PS3. 

SELECT COUNT(*) AS PS3_Game_Count
FROM Games
JOIN Consoles ON Games.Console_ID = Consoles.Console_ID
WHERE Consoles.Console_Name = 'PS3';