--  ! 7TH QUESTION OF THE CW2 !

--  ! DENISH MAHARJAN !
--  ! Softwarica College of IT and E-Commerce  !
--  ! Coursework 2 !
--  ! Submitted to: Dhirendra Bhatta !

--  ? Update the floor for PUBG from floor 1 to floor 2. 

use cw2Web;
UPDATE Arcade_Machines SET Floor = 2
WHERE Game = 'PUBG' AND Floor = 1;

