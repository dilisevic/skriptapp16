drop database if exists skriptapp16;
create database skriptapp16;

use skriptapp16;

create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100) not null,
instrument int not null
);

create table instrument(
sifra int not null primary key auto_increment,
naziv varchar(50)
) ;

create table bend(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
instrument int not null
);

create table pjesma(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
tekst int not null,
bend int not null,
tonalitet char (10) not null
);

create table tekst(
sifra int not null primary key auto_increment,
pjesma int not null
);

alter table korisnik add foreign key(instrument) references instrument(sifra);
alter table bend add foreign key(instrument) references instrument(sifra);
alter table pjesma add foreign key(bend) references bend(sifra);
alter table tekst add foreign key(pjesma) references pjesma(sifra);