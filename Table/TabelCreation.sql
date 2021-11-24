drop database GolfTävling;
create database GolfTävling;
use GolfTävling;

create table Spelare (
PersonNr varchar(15) ,
Namn varchar(20) NOT NULL DEFAULT '',
Ålder INT NOT NULL DEFAULT '0',
primary key(PersonNr)
)engine=innodb;

create table Jacka(
Initialer varchar(10),
Storlek varchar(7) NOT NULL DEFAULT '0',
Material varchar(20),
PersonNr varchar(15),
primary key(Initialer,PersonNr),
foreign key(PersonNr) references Spelare(PersonNr) ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;

create table Tävling(
Tävlingsnamn varchar(20),
Datum  date NOT NULL ,
primary key (Tävlingsnamn)
)engine=innodb;

create table Konstruktion(
SerialNr varchar(20),
Hårdhet varchar(15) NOT NULL DEFAULT '0',
primary key(SerialNr)
)engine=innodb;

create table Klubba(
Nr varchar(15),
Material varchar(20) NOT NULL DEFAULT '',
PersonNr varchar(15),
SerialNr varchar(20),
primary key(Nr,PersonNr),
foreign key(PersonNr) references Spelare(PersonNr) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(SerialNr) references Konstruktion(SerialNr) ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;

create table Regn(
Typ varchar(15),
Vindstyrka varchar(10) NOT NULL DEFAULT '0m/s',
primary key(Typ)
)engine=innodb;

create table Spelare_Tävling(
PersonNr varchar(15),
Tävlingsnamn varchar(20),
primary key(PersonNr,Tävlingsnamn),
foreign key(PersonNr) references Spelare(PersonNr) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(Tävlingsnamn) references Tävling(Tävlingsnamn) ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;

create table RegnITävling(
Tävlingsnamn varchar(20),
Typ varchar(15),
Tidpunkt time NOT NULL,
primary key(Tävlingsnamn,Typ),
foreign key(Tävlingsnamn) references Tävling(Tävlingsnamn) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(Typ) references Regn(Typ) ON DELETE CASCADE ON UPDATE CASCADE
)engine=innodb;
