use golftävling;
SELECT regn.Vindstyrka FROM regn join regnitävling on regn.Typ=regnitävling.Typ where tävlingsnamn="Big Golf Cup Skövde";