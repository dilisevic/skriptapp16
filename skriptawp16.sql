drop database if exists edunovawp16;
create database edunovawp16;

use edunovawp16;

create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100) not null
);

create table instrument(
sifra int not null primary key auto_increment,
berda tinyint(1),
bugarija tinyint(1),
korisnik int not null,
pjesma int not null
) ;

create table bend(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
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
bend int not null
);

alter table (instrument) add foreign key (korisnik) references korisnik(sifra);
alter table (instrument) add foreign key (pjesma) references pjesma(sifra);

alter table (pjesma) add foreign key (bend) references bend(sifra);
alter table (pjesma) add foreign key (tekst) references pjesma(sifra);