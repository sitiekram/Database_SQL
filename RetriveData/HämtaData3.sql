use golftävling;
select klubba.Material from klubba join spelare on spelare.personNr= klubba.personNr where spelare.Namn="Johan Andersson";