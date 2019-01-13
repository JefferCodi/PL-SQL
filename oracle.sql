/*
->->->->->->->->->-><-<-<-<-<-<-<-<-<-<-
^    autor: Jefferson Lindao           ^
^    email: jefferlindao@gmail.com     ^
->->->->->->->->->-><-<-<-<-<-<-<-<-<-<-
*/

create table tb_usuari(
	Usua_id NCHAR(5) not null primary key,
	Usua_nomb VARCHAR2(50) not null,
	Usua_pate varchar(50) null,
	Usua_user varchar(50) not null,
	Usua_emai varchar(50) not null,
	Usua_pass varchar(50) not null
);
insert into tb_usuari values('U0001','Jefferson', 'Lindao', 'JefferLindao', 'jefferlindao@gmail.com','jefflindao');
create table tb_produc(
	Prod_id char(5) not null primary key,
	Prod_desc varchar(50) not null,
	Prod_prec decimal(8,2) not null,
	Prod_stoc int not null,
	Prod_fech date
);
create table tb_distri(
	Dist_id char(3) not null primary key,
	Dist_desc varchar(50) not null
);
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

create table tb_boleta(
	Bole_nume int primary key,
	Bole_fech date not null,
	Clie_id char(5),
	foreign key(Clie_id) references tb_client(Clie_id)
);
create sequence boleta_auto_increment start with 1 increment by 1;
create table tb_detbol(
	Bole_nume int not null,
	Prod_id char(5) not null,
	Delb_cant int not null,
	foreign key(Bole_nume) references tb_boleta(Bole_nume),
	foreign key(Prod_id) references tb_produc(Prod_id)
);
insert into tb_distri values ('L01','CERCADO');
insert into tb_distri values ('L02','ANCON');
insert into tb_distri values ('L03','ATE');
insert into tb_distri values ('L04','BARRANCO');
insert into tb_distri values ('L05','BREÑA');
insert into tb_distri values ('L06','CARABAYLLO');
insert into tb_distri values ('L07','COMAS');
insert into tb_distri values ('L08','CHACLACAYO');
insert into tb_distri values ('L09','CHORIILLOS');
insert into tb_distri values ('L10','EL AGUSTINO');
insert into tb_distri values ('L11','JEUS MARIA');
insert into tb_distri values ('L12','LA MOLINA');
insert into tb_distri values ('L13','LA VICTORIA');
insert into tb_distri values ('L14','LINCE');
insert into tb_distri values ('L15','LURIGANCO');
insert into tb_distri values ('L16','LURIN');
insert into tb_distri values ('L17','MAGDALENA');
insert into tb_distri values ('L18','MIRAFLORES');
insert into tb_distri values ('L19','PACHACAMAC');
insert into tb_distri values ('L20','PUCUSANA');
insert into tb_produc values ('P0001','PYE DE MANZANA',20,500,'14/05/2015');
insert into tb_produc values ('P0002','TORTA DE CHOCOLATE',45,100,'04/07/2015');
insert into tb_produc values ('P0003','TOTA TRES LECHES',30,40,'24/06/2015');
insert into tb_produc values ('P0004','MOUSE DE MANZANA',35,700,'06/09/2015');
insert into tb_produc values ('P0005','ARROZ CON LECHE - ENVASE ESPECIAL',13.00,40,'04/11/2015');
insert into tb_produc values ('P0006','MANZAMORRA MORADA',1.50,70,'04/12/2015');
insert into tb_produc values ('P0007','YOGURT GARABE',3,100,'04/05/2015');
insert into tb_produc values ('P0008','PAN CON POLLO',2.00,500,'05/06/2015');
insert into tb_produc values ('P0009','BROWNIE',3,300,'04/05/2015');
insert into tb_produc values ('P0010','BESO DE MOZA',1,400,'03/06/2015');
insert into tb_produc values ('P0011','PYE DE LIMON',1.70,100,'02/06/2015');
insert into tb_produc values ('P0012','TORTA DE NARANGA',16,10,'07/04/2015');
insert into tb_produc values ('P0013','TORTA DE FRESA',41,100,'07/05/2015');
insert into tb_produc values ('P0014','ALFOJORES',0.30,400,'06/04/2015');
insert into tb_produc values ('P0015','CHOCOTEJAS',2,100,'14/04/2015');
insert into tb_produc values ('P0016','SUSPIRO A LA LIMEÑA',3.50,100,'12/06/2015');
insert into tb_client values ('C0001','CARLOS','LOPEZ','HURTADO','Calle el Pino 678','clopez@hotmail.com','4677352','L01');
insert into tb_client values ('C0002','FRIDA','QUIROZ','DUARTE','Jr. Los Reyes 475','fquiroz@hotmail.com','4693852','L06');
insert into tb_client values ('C0003','ALEJANDRO','TRAUCO','MANRIQUE','Jr. Huascar 956','atrauco@gmail.com','4670422','L04');
insert into tb_client values ('C0004','CARLA','BLANCO','RUIZ','Av. Areequipa 451','cblanco@hotmail.com','6377352','L03');
insert into tb_client values ('C0005','CORINA','MENDOZA','PEREZ','Av. Ingenieros 111','cmendoza@hotmail.com','2548965','L09');
insert into tb_client values ('C0006','JORGE','RODAS','DIONICIO','Jr. Las Liras 456','jrodas@gmail.com','4789658','L03');
insert into tb_client values ('C0007','ORLANDO','CUEVAS','CABANILLAS','Calle La Encantada 425','ocuevas@peru.com','5698532','L11');
insert into tb_client values ('C0008','ANTUANE','RODRIGUEZ','ALARCON','Av, Dorado 347','arodriguez@hotmail.com','4589732','L05');
insert into tb_client values ('C0009','MANUEL','SUAREZ','FERNANDEZ','Jr. Los Robles 854','msuarez@gmail.com','4576738','L19');
insert into tb_client values ('C0010','JUAN','GUTIERREZ','DIAZ','Calle Girasoles 456','jgutierrez@hotmail.com','4897421','L14');
insert into tb_client values ('C0011','CARLOS','COLAN','BARDALES','Av. Los Héroes 895','ccolan@peru.com','3698574','L19');
insert into tb_client values ('C0012','MARTIN','CARRILLO','SALAS','Calle Los Huertos 844','mcarrillo@gmail.com','8965952','L08');
insert into tb_client values ('C0013','JOSE','LAZARTE','LUJAN','Jr. Agapito 452','jlazarte@gmail.com','1258965','L17');
insert into tb_client values ('C0014','VIDAL','ZORRILLA','RODRIGUEZ','Av. Héroes del Cenepa 635','vzorrilla@hotmail.com','1547894','L20');
insert into tb_client values ('C0015','GUILLERMO','RAMOS','FLORES','Jr. Las Almendras 211','gramos@gmail.com','4587964','L03');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'10/01/2015','C0011');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/01/2015','C0002');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/01/2015','C0001');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'23/01/2015','C0005');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'10/02/2015','C0001');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/02/2015','C0002');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'05/03/2015','C0006');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'24/03/2015','C0006');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/04/2015','C0005');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/04/2015','C0011');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'10/05/2015','C0006');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/06/2015','C0006');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/07/2015','C0001');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'26/07/2015','C0006');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/07/2015','C0006');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/07/2015','C0005');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'10/08/2015','C0002');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'05/09/2015','C0012');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/10/2015','C0006');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'27/11/2015','C0014');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'25/11/2015','C0002');
insert into tb_boleta (Bole_nume, Bole_fech,Clie_id) values (boleta_auto_increment.nextval,'20/11/2015','C0001');
insert into tb_detbol values (1,'P0005',10);
insert into tb_detbol values (1,'P0001',20);
insert into tb_detbol values (2,'P0002',20);
insert into tb_detbol values (2,'P0005',10);
insert into tb_detbol values (2,'P0003',15);
insert into tb_detbol values (3,'P0005',19);
insert into tb_detbol values (4,'P0001',19);
insert into tb_detbol values (4,'P0005',15);
insert into tb_detbol values (4,'P0003',11);
insert into tb_detbol values (5,'P0002',15);
insert into tb_detbol values (5,'P0005',10);
insert into tb_detbol values (6,'P0003',19);
insert into tb_detbol values (7,'P0002',11);
insert into tb_detbol values (8,'P0001',10);
insert into tb_detbol values (9,'P0005',11);
insert into tb_detbol values (10,'P0015',12);
insert into tb_detbol values (11,'P0002',11);
insert into tb_detbol values (11,'P0005',15);
insert into tb_detbol values (12,'P0003',19);
insert into tb_detbol values (12,'P0015',15);
insert into tb_detbol values (13,'P0005',11);
insert into tb_detbol values (13,'P0002',12);
insert into tb_detbol values (14,'P0005',19);
insert into tb_detbol values (15,'P0003',12);
insert into tb_detbol values (16,'P0015',15);
insert into tb_detbol values (17,'P0001',21);
insert into tb_detbol values (18,'P0005',21);
insert into tb_detbol values (18,'P0004',12);
insert into tb_detbol values (19,'P0004',15);
insert into tb_detbol values (20,'P0015',30);
insert into tb_detbol values (21,'P0005',30);
insert into tb_detbol values (22,'P0001',30);

set serveroutput on format wrapped;
DECLARE
	MiVariableCaracter VARCHAR2(20);
	MiVariableNumero NUMBER(10,2):=50;
	MiVariableFecha DATE;
BEGIN
 --NUEVO CODIGO
	MiVariableCaracter:='CARLOS';
	dbms_output.put_line('Hola'||MiVariableCaracter);
	dbms_output.put_line('MiVariableNumero = '|| to_char(MiVariableNumero));
	MiVariableFecha:=sysdate + 7;
	dbms_output.put_line('Hoy es '||to_char(sysdate,'dd/mm/yyyy'))||
						', dentro de una semana sera'||
						to_char(MiVariableFecha,'dd/mm/yyyy');
	DECLARE
END;


/*
LOOP -> NOSOTRO DEFINIMOS CUANDO SE VA A SALIR DEL BUCLE
FOR
WHILE
*/

DECLARE
	numeroActual NUMBER(2):=5;
	numeroResultado NUMBER(2);
BEGIN
	for i in 1..10 LOOP
	numeroResultado:=numeroActual * i;
	dbms_output.put_line(to_char(numeroActual)||' X '||to_char(i)||' = 'to_char(numeroResultado));
	ENDLOOP
END;



DECLARE
nombreEmpleado empleado.name%type;
apellidoEmpleado empleado.last_name%type;
salarioEmpleado empleado.salary%type;

BEGIN
	LOOP
		i:=i +1; 
		select name, last_name, salary
		into nombreEmpleado,apellidoEmpleado,salarioEmpleado
		from empleado;

		dbms_output.put_line('El empleado '||nombreEmpleado||' '||
							apellidoEmpleado||' gana $'||
							to_char(salarioEmpleado));
		if i=5 then
			exit;
		endif;

	ENDLOOP
END;


CREATE FUNCTION fn_ObtenerPrecioPromedio
	(codigoProducto IN NUMBER)
RETURN NUMBER
AS 
	precioPromedio number(18, 6);
BEGIN
	SELECT AVG(campo)
	INTO precioPromedio
	FROM tabla
	WHERE campo_id = codigoProducto;
	RETURN precioPromedio;
END;


/*procedimiento almacenado*/
CREATE PROCEDURE pr_ActualizarPrecios
AS
BEGIN 
	UPDATE PRODUCTS
	SET UNITPRECI = fn_ObtenerPrecioPromedio(PRODUCT_ID);
END;

/*procedimiento almacenado CON PARAMETROS DE SALIDA*/
CREATE PROCEDURE pr_ActualizarPrecios
(estado OUT VARCHAR2)
AS
BEGIN 
	UPDATE PRODUCTS
	SET UNITPRECE = fn_ObtenerPrecioPromedio(PRODUCT_ID);
	estado:= 'los precio se actualizaron exitosamente';
EXCEPTION
 WHEN OTHERS then
 estado:= 'el procedimiento fallo: '|| sqlerrm;
END;

/*TRIGGER*/
CREATE TABLE auditaemple(col VARCHAR2(200));

CREATE OR REPLACE TRIGGER auditoria_borrado_emple
BEFORE DELETE
ON emple
FOR EACH ROW
BEGIN
	INSERT INTO auditaemple
		VALUES('BORRADO EMPLEADO' || '*' || :old.emple_nombre ||
			'*' || old.apellido || '*Dpto.' || :old.depa_nombre);
END;

