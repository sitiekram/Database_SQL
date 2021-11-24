use golftävling;
SET SQL_SAFE_UPDATES=0;
delete J from jacka J left join spelare S on J.PersonNr=S.PersonNr where s.namn="Johan Andersson";
SET SQL_SAFE_UPDATES=1;