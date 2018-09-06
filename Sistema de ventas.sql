/*
->->->->->->->->->-><-<-<-<-<-<-<-<-<-<-
^    autor: Jefferson Lindao           ^
^    email: jefferlindao@gmail.com     ^
->->->->->->->->->-><-<-<-<-<-<-<-<-<-<-
*/

drop database if exists db_ventas2018;
create database db_ventas2018;
use db_ventas2018;
drop table if exists tb_usuari;
create table tb_usuari(
	Usua_id char(5) not null primary key,
	Usua_nomb varchar(50) not null,
	Usua_pate varchar(50) null,
	Usua_user varchar(50) not null,
	Usua_emai varchar(50) not null,
	Usua_pass varchar(50) not null
);
insert into tb_usuari values('U0001','Jefferson', 'Lindao', 'JefferLindao', 'jefferlindao@gmail.com','jefflindao');
drop table if exists tb_produc;
create table tb_produc(
	Prod_id char(5) not null primary key,
	Prod_desc varchar(50) not null,
	Prod_prec decimal(8,2) not null,
	Prod_stoc int not null,
	Prod_fech date
);
drop table if exists tb_distri;
create table tb_distri(
	Dist_id char(3) not null primary key,
	Dist_desc varchar(50) not null
);
drop table if exists tb_client;
create table tb_client(
	Clie_id char(5) not null primary key,
	Clie_nomb varchar(30) not null,
	Clie_pate varchar(30) not null,
	Clie_mete varchar(30) not null,
	Clie_dire varchar(40) null,
	Clie_emai varchar(50) null,
	Clie_fono char(15) null,
	Dist_id char(3) not null,
	foreign key(Dist_id) references tb_distri(Dist_id)
);
drop table if exists tb_boleta;
create table tb_boleta(
	Bole_nume int primary key auto_increment,
	Bole_fech date not null,
	Clie_id char(5),
	foreign key(Clie_id) references tb_client(Clie_id)
);
alter table tb_boleta auto_increment 1;
drop table if exists tb_detbol;
create table tb_detbol(
	Bole_nume int not null,
	Prod_id char(5) not null,
	Delb_cant int not null,
	foreign key(Bole_nume) references tb_boleta(Bole_nume),
	foreign key(Prod_id) references tb_produc(Prod_id)
);
insert into tb_distri value ('L01','CERCADO'),('L02','ANCON'),('L03','ATE'),('L04','BARRANCO'),('L05','BREÑA'),('L06','CARABAYLLO'),('L07','COMAS'),('L08','CHACLACAYO'),('L09','CHORIILLOS'),('L10','EL AGUSTINO'),('L11','JEUS MARIA'),('L12','LA MOLINA'),('L13','LA VICTORIA'),('L14','LINCE'),('L15','LURIGANCO'),('L16','LURIN'),('L17','MAGDALENA'),('L18','MIRAFLORES'),('L19','PACHACAMAC'),('L20','PUCUSANA');
insert into tb_produc value ('P0001','PYE DE MANZANA',20,500,'2015/05/14'),('P0002','TORTA DE CHOCOLATE',45,100,'2015/07/04'),('P0003','TOTA TRES LECHES',30,40,'2015/06/24'),('P0004','MOUSE DE MANZANA',35,700,'2015/09/06'),('P0005','ARROZ CON LECHE - ENVASE ESPECIAL',13.00,40,'2015/11/04'),('P0006','MANZAMORRA MORADA',1.50,70,'2015/12/04'),('P0007','YOGURT GARABE',3,100,'2015/05/04'),('P0008','PAN CON POLLO',2.00,500,'2015/06/05'),('P0009','BROWNIE',3,300,'2015/05/04'),('P0010','BESO DE MOZA',1,400,'2015/06/03'),('P0011','PYE DE LIMON',1.70,100,'2015/05/02'),('P0012','TORTA DE NARANGA',16,10,'2015/04/07'),('P0013','TORTA DE FRESA',41,100,'2015/05/07'),('P0014','ALFOJORES',0.30,400,'2015/04/06'),('P0015','CHOCOTEJAS',2,100,'2015/04/14'),('P0016','SUSPIRO A LA LIMEÑA',3.50,100,'2015/06/12');
insert into tb_client value	('C0001','CARLOS','LOPEZ','HURTADO','Calle el Pino 678','clopez@hotmail.com','4677352','L01'),('C0002','FRIDA','QUIROZ','DUARTE','Jr. Los Reyes 475','fquiroz@hotmail.com','4693852','L06'),('C0003','ALEJANDRO','TRAUCO','MANRIQUE','Jr. Huascar 956','atrauco@gmail.com','4670422','L04'),('C0004','CARLA','BLANCO','RUIZ','Av. Areequipa 451','cblanco@hotmail.com','6377352','L03'),('C0005','CORINA','MENDOZA','PEREZ','Av. Ingenieros 111','cmendoza@hotmail.com','2548965','L09'),('C0006','JORGE','RODAS','DIONICIO','Jr. Las Liras 456','jrodas@gmail.com','4789658','L03'),('C0007','ORLANDO','CUEVAS','CABANILLAS','Calle La Encantada 425','ocuevas@peru.com','5698532','L11'),('C0008','ANTUANE','RODRIGUEZ','ALARCON','Av, Dorado 347','arodriguez@hotmail.com','4589732','L05'),('C0009','MANUEL','SUAREZ','FERNANDEZ','Jr. Los Robles 854','msuarez@gmail.com','4576738','L19'),('C0010','JUAN','GUTIERREZ','DIAZ','Calle Girasoles 456','jgutierrez@hotmail.com','4897421','L14'),('C0011','CARLOS','COLAN','BARDALES','Av. Los Héroes 895','ccolan@peru.com','3698574','L19'),('C0012','MARTIN','CARRILLO','SALAS','Calle Los Huertos 844','mcarrillo@gmail.com','8965952','L08'),('C0013','JOSE','LAZARTE','LUJAN','Jr. Agapito 452','jlazarte@gmail.com','1258965','L17'),('C0014','VIDAL','ZORRILLA','RODRIGUEZ','Av. Héroes del Cenepa 635','vzorrilla@hotmail.com','1547894','L20'),('C0015','GUILLERMO','RAMOS','FLORES','Jr. Las Almendras 211','gramos@gmail.com','4587964','L03');
insert into tb_boleta (Bole_fech,Clie_id) value ('2015/01/10','C0011'),('2015/01/20','C0002'),('2015/01/20','C0001'),('2015/01/23','C0005'),('2015/02/10','C0001'),('2015/02/20','C0002'),('2015/03/05','C0006'),('2015/03/24','C0006'),('2015/04/20','C0005'),('2015/04/20','C0011'),('2015/05/10','C0006'),('2015/06/20','C0006'),('2015/07/20','C0001'),('2015/07/26','C0006'),('2015/07/20','C0006'),('2015/07/20','C0005'),('2015/08/10','C0002'),('2015/09/05','C0012'),('2015/10/20','C0006'),('2015/11/27','C0014'),('2015/11/25','C0002'),('2015/11/20','C0001');
insert into tb_detbol value (1,'P0005',10),(1,'P0001',20),(2,'P0002',20),(2,'P0005',10),(2,'P0003',15),(3,'P0005',19),(4,'P0001',19),(4,'P0005',15),(4,'P0003',11),(5,'P0002',15),(5,'P0005',10),(6,'P0003',19),(7,'P0002',11),(8,'P0001',10),(9,'P0005',11),(10,'P0015',12),(11,'P0002',11),(11,'P0005',15),(12,'P0003',19),(12,'P0015',15),(13,'P0005',11),(13,'P0002',12),(14,'P0005',19),(15,'P0003',12),(16,'P0015',15),(17,'P0001',21),(18,'P0005',21),(18,'P0004',12),(19,'P0004',15),(20,'P0015',30),(21,'P0005',30),(22,'P0001',30);
drop procedure if exists sp_busca_cliente;
create procedure sp_busca_cliente(cod char(5)) select * from tb_client where Clie_id=cod;
drop procedure if exists sp_actualiza_cliente;
create procedure sp_actualiza_cliente(cod char(5),nom varchar(30),pat varchar(30),mat varchar(30),dir varchar(40),tel char(15),cor varchar(50),dis char(3))
	update tb_client set Clie_nomb=nom, Clie_pate=pat, Clie_mete=mat, Clie_dire=dir, Clie_fono=tel, Clie_emai=cor, Dist_id=dis where Clie_id=cod;
drop procedure if exists sp_elimina_cliente;
create procedure sp_elimina_cliente(cod char(5)) delete from tb_client where Clie_id=cod;