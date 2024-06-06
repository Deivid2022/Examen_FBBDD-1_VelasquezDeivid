create database Olimpicos;
use Olimpicos;

create table sedes(
ID int auto_increment primary key,
Num_complejos int(10),
presupuesto_aprox int(100)
);
create table deportivo(
ID int auto_increment primary key,
localizacion varchar(100),
jefe_organizacion varchar(100),
area_ocupada decimal(10,2),
Id_sede int,
foreign key (Id_sede) references sedes(ID),
Id_evento int,
foreign key (Id_evento) references evento(ID)
);
create table polideportivo(
ID int auto_increment primary key,
localizacion varchar(100),
Num_deportes int(10),
jefe_organizacion varchar(100),
area_ocupada decimal(10,2),
Id_sede int,
foreign key (Id_sede) references sedes(ID),
Id_evento int,
foreign key (Id_evento) references evento(ID)
);
create table evento(
ID int auto_increment primary key,
informacion varchar(300),
fecha date,
duracion decimal(3,2),
Num_comisarios int(10),
Num_participantes int(10)
);
create table comisario(
ID int auto_increment primary key,
nombre varchar(100),
papel_ejecutado varchar(100),
Id_evento int,
foreign key (Id_evento) references evento(ID)
);
create table equipamiento(
ID int auto_increment primary key,
Num_arcos int(10),
Num_pertigas int(10),
Num_barrasParalelas int(10),
Id_evento int,
foreign key (Id_evento) references evento(ID)
);

show tables;

