use golftävling;
select spelare.* from spelare join spelare_tävling on spelare.PersonNr=spelare_tävling.PersonNr where tävlingsnamn="Big Golf Cup Skövde";