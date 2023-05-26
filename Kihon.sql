drop database if exists Kihon;

create database Kihon;

use Kihon;

/* Tipos de Usuario
	0 - Cliente
	1 - Asistente
    2 - Gerente de Soporte
    3 - Gerente de Mantenimiento
    4 - Ingeniero de Soporte
    5 - Ingeniero de Mantenimiento
    6 - Editor */
    
create table usuarios(
nom_usu varchar(50) primary key not null,
pass_usu varchar(50),
tipo_usu int
);

/*--Módulo de Soporte--*/
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
foreign key (trabajador) references usuarios(nom_usu) on delete cascade on update cascade
);

create table primer_encargado(
id_reporte int not null,
primerEncargado varchar(50),
foreign key (id_reporte) references reportes(id_reporte) on delete cascade on update cascade,
foreign key (primerEncargado) references usuarios(nom_usu) on delete cascade on update cascade
);

create table escritor(
id_reporte int auto_increment not null,
trabajador varchar(50),
foreign key (id_reporte) references reportes(id_reporte) on delete cascade on update cascade,
foreign key (trabajador) references usuarios(nom_usu) on delete cascade on update cascade
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

/*Termina Módulo de Soporte*/

/*Empieza Kihon*/
create table carreras(
id_carrera varchar(60) primary key not null,
UNAM boolean,
IPN boolean,
area varchar(6)
);

create table personalidad_usu(
usuario varchar(20) primary key not null,
mbti varchar(4) not null,
foreign key (usuario) references usuarios(nom_usu) on delete cascade on update cascade
);

create table carrera_mbti(
id_carrera varchar(60), 
mbti varchar(4),
foreign key (id_carrera) references carreras(id_carrera) on delete cascade on update cascade
);

create table test_voc(
id_res int auto_increment primary key not null,
ICFM float,
CSA float,
CMB float,
HA float,
usuario varchar(20),
foreign key (usuario) references usuarios(nom_usu) on delete cascade on update cascade
);

create table tipos_perso(
id_perso int primary key auto_increment not null,
nombre_perso varchar (50),
categoría int,
	/* Categorías de personalidades:
			1. Analistas
            2. Diplomáticos
            3. Centinelas
            4. Exploradores
    */
abstract varchar (200),
descripcion_perso varchar (1000),
resumen_perso varchar (1000),  /*cuadrito del color*/
frase_perso varchar (1000),
famosos_perso varchar (1000),
link_perso varchar (1000)
);


create table carreras_info(
id_carrera_info int primary key auto_increment not null,
nombre_car varchar (100),
area_car int,
institucion_car int (100),
escuela_car varchar (100),
objetivo_car varchar (2000), /*o descripción en la UNAM*/
link_car varchar (500)
);

/*
	Área de la carrera:
		1. Ingeniería y Ciencias Físico Matemáticas
        2. Ciencias Médico Biológicas
        3. Ciencias Sociales y Administrativas
        4. Humanidades y de las Artes
        
	Institución de la carrera:
		1. Instituto Politécnico Nacional -IPN
        2. Universidad Nacional Autónoma de México -UNAM
*/

/* Metas académicas*/
create table respuestas_habiMet(
id_respuestas int primary key auto_increment not null,
nom_usu varchar(50),
p1 varchar(1),
p2 varchar(1),
p3 varchar(1),
p4 varchar(1),
p5 varchar(1),
p6 varchar(1),
p7 varchar(1),
p8 varchar(1),
p9 varchar(1),
p10 varchar(1),
p11 varchar(1),
p12 varchar(1),
p13 varchar(1),
p14 varchar(1),
p15 varchar(1),
p16 varchar(1),
p17 varchar(1),
p18 varchar(1),
p19 varchar(1),
p20 varchar(1),
p21 varchar(1),
p22 varchar(1),
p23 varchar(1),
p24 varchar(1),
p25 varchar(1),
p26 varchar(1),
p27 varchar(1),
p28 varchar(1),
p29 varchar(1),
p30 varchar(1),
metas_rango varchar(1),
foreign key (nom_usu) references usuarios(nom_usu) on delete cascade on update cascade
);

create table metasRango(
id_rango varchar(1) primary key not null,
meta1 varchar(1000),
meta2 varchar(1000),
meta3 varchar(1000),
meta4 varchar(1000),
meta5 varchar(1000),
meta6 varchar(1000),
meta7 varchar(1000),
meta8 varchar(1000),
meta9 varchar(1000),
meta10 varchar(1000)
);

create table descripcionMetas(
id_metaEdit int primary key auto_increment not null,
descrip_metaEdit1 varchar(1500),
estatus_metaEdit1 varchar(30),
descrip_metaEdit2 varchar(1500),
estatus_metaEdit2 varchar(30),
descrip_metaEdit3 varchar(1500),
estatus_metaEdit3 varchar(30),
descrip_metaEdit4 varchar(1500),
estatus_metaEdit4 varchar(30),
descrip_metaEdit5 varchar(1500),
estatus_metaEdit5 varchar(30),
descrip_metaEdit6 varchar(1500),
estatus_metaEdit6 varchar(30),
descrip_metaEdit7 varchar(1500),
estatus_metaEdit7 varchar(30),
descrip_metaEdit8 varchar(1500),
estatus_metaEdit8 varchar(30),
descrip_metaEdit9 varchar(1500),
estatus_metaEdit9 varchar(30),
descrip_metaEdit10 varchar(1500),
estatus_metaEdit10 varchar(30),
nom_usu varchar(50),
foreign key (nom_usu) references usuarios(nom_usu) on delete cascade on update cascade
);
/*Termina metas académicas*/


select * from usuarios;
select * from respuestas_habiMet;
select * from metasRango;
select * from descripcionMetas;

select * from usuarios;
select * from reportes;
select * from escritor;
select * from editor;
select * from trabajador_reporte;
select * from primer_encargado;
select * from escritor;
select * from cerrado_FAQ;
select * from carreras;
select * from carreras_info;
select * from carrera_mbti;
select * from personalidad_usu;
select * from test_voc;

SELECT * FROM carrera_mbti INNER JOIN personalidad_usu ON personalidad_usu.mbti = carrera_mbti.mbti WHERE personalidad_usu.usuario = "pedrito";
insert into personalidad_usu values("pedrito", "ISTJ");