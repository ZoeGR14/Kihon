drop database if exists Kihon;

create database Kihon;

use Kihon;


create table personal(
trabajador varchar(50) primary key not null,
pass_tra varchar(50),
tipo_tra int
);

/* Tipos de Usuario
	0 - Cliente
	1 - Asistente
    2 - Gerente de Soporte
    3 - Gerente de Mantenimiento
    4 - Ingeniero de Soporte
    5 - Ingeniero de Mantenimiento
    6 - Editor */
    
create table reportes(
id_reporte int primary key auto_increment not null,
descripcion varchar(110),
estatus varchar(25),
encargado varchar(50),
fecha_hora timestamp default current_timestamp,
solucion varchar(400)
);


create table trabajador_reporte(
id_reporte int auto_increment not null,
trabajador varchar(50),
foreign key (id_reporte) references reportes(id_reporte) on delete cascade on update cascade,
foreign key (trabajador) references personal(trabajador) on delete cascade on update cascade
);

create table primer_encargado(
id_reporte int not null,
primerEncargado varchar(50),
foreign key (id_reporte) references reportes(id_reporte) on delete cascade on update cascade,
foreign key (primerEncargado) references personal(trabajador) on delete cascade on update cascade
);

create table escritor(
id_reporte int auto_increment not null,
trabajador varchar(50),
foreign key (id_reporte) references reportes(id_reporte) on delete cascade on update cascade,
foreign key (trabajador) references personal(trabajador) on delete cascade on update cascade
);

create table editor(
id_FAQ int primary key auto_increment not null,
fecha_horaFAQ timestamp default current_timestamp,
preguntaFAQ varchar(100),
respuestaFAQ varchar(500),
tipoFAQ varchar(1)
);

/*  Tipo A = El editor ingresó manualmente la FAQ
	Tipo B = La pregunta viene de los reportes cerrados */

create table cerrado_FAQ(
id_reporte int auto_increment not null,
estado int,
foreign key (id_reporte) references reportes(id_reporte) on delete cascade on update cascade
);
create table carreras(
id_carrera varchar(60) primary key not null,
UNAM boolean,
IPN boolean,
area varchar(6)
);

create table personalidad(
mbti varchar(4) primary key not null
);
create table carrera_mbti(
id_carrera varchar(60), 
mbti varchar(4),
foreign key (id_carrera) references carreras(id_carrera) on delete cascade on update cascade,
foreign key (mbti) references personalidad(mbti) on delete cascade on update cascade
);

select * from personal;
select * from reportes;
select * from escritor;
select * from editor;
select * from trabajador_reporte;
select * from primer_encargado;
select * from escritor;
select * from cerrado_FAQ;
select * from carreras;
select * from carrera_mbti;
select * from personalidad;