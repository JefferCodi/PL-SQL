drop database if exists db_ventas;
create database db_ventas;
use db_ventas;
drop table if exists tb_empres;
create table tb_empres(
	Empr_id int not null primary key auto_increment,
	Empr_nomb varchar(50) not null,
	Empr_emai varchar(50) not null,
	Empr_tele int not null,
	Empr_dire varchar(50) not null,
	Empr_rucc varchar(13) not null
);
drop table if exists tb_catego;
create table tb_catego(
	Cate_id int not null primary key auto_increment,
	Cate_nomb varchar(50) not null,
	Cate_desc varchar(100) not null,
	Cate_cond boolean, 
	created_at timestamp null,
	updated_at timestamp null
);
drop table if exists tb_person;
create table tb_person(
	Pers_id char(5) not null primary key,
	Pers_tipe varchar(20) not null,
	Pers_tido varchar(50) not null,
	Pers_nudo int not null,
	Pers_nomb varchar(50) not null,
	Pers_apel varchar(50) not null,
	Pers_dire varchar(50) not null,
	Pers_tele int null,
	Pers_emai varchar(50) not null,
	Pers_esta varchar(20) not null,
	created_at timestamp null,
	updated_at timestamp null
);
drop table if exists tb_produc;
create table tb_produc(
	Prod_id char(5) not null primary key,
	Prod_nomb varchar(100) not null,
	Prod_desc varchar(150) not null,
	Prod_stoc int not null,
	Prod_imag varchar(50) null,
	Prod_esta varchar(20) null,
	Prod_tota decimal(8,2)null,
	created_at timestamp null,
	updated_at timestamp null,
	Cate_id int not null,
	foreign key(Cate_id) references tb_catego(Cate_id)
);
drop table if exists tb_ingres;
create table tb_ingres(
	Ingr_id char(5) not null primary key,
	Ingr_tota decimal(8,2) not null,
	Ingr_esta varchar(20) not null,
	created_at timestamp null,
	updated_at timestamp null,
	Pers_id char(5) not null,
	Usua_id int(10) UNSIGNED not null,
	foreign key(Pers_id) references tb_person(Pers_id),
	foreign key(Usua_id) references users(id)
);
drop table if exists tb_deting;
create table tb_deting(
	Deti_id int not null primary key auto_increment,
	Deti_nomb varchar(20) not null,
	Deti_cant int not null,
	Deti_prev decimal(8,2) not null,
	Deti_prec decimal(8,2) not null,
	Ingr_id char(5) not null,
	foreign key(Ingr_id) references tb_ingres(Ingr_id),
	Prod_id char(5) not null,
	foreign key(Prod_id) references tb_produc(Prod_id)
);
drop table if exists tb_factur;
create table tb_factur(
	Fact_id char(5) not null primary key,
	Fact_tota decimal(8,2) not null,
	Fact_esta varchar(20) not null,
	created_at timestamp null,
	updated_at timestamp null,
	Pers_id char(5) not null,
	foreign key(Pers_id) references tb_person(Pers_id)
);
drop table if exists tb_detfac;
create table tb_detfac(
	Detf_id int not null primary key auto_increment,
	Detf_nomb varchar(20) not null,
	Detf_cant int not null.
	Detf_prev decimal(8,2) not null,
	Detf_esta varchar(20) not null,
	Fact_id char(5) not null,
	foreign key(Fact_id) references tb_factur(Fact_id),
	Prod_id char(5) not null,
	foreign key(Prod_id) references tb_produc(Prod_id)
);
drop table if exists tb_kardex;
create table tb_kardex(
	Kard_id int not null primary key auto_increment,
	Kard_nomb varchar(50) not null,
	Kard_cant int not null,
	Kard_prec decimal(8,2) not null,
	Kard_prev decimal(8,2) not null,
	Kard_tota decimal(8,2) not null,
	Kard_stoc int not null,
	Kard_sato decimal(8,2) not null,
	Kard_fech timestamp null,
	Prod_id char(5) not null,
	foreign key(Prod_id) references tb_produc(Prod_id)
);
DELIMITER \\
CREATE TRIGGER tr_kardexFactura AFTER INSERT ON tb_detfac FOR EACH ROW begin
insert tb_kardex set 
Kard_nomb = new.Detf_nomb,
Kard_cant = new.Detf_cant,
Kard_prev = new.Detf_prev,
Kard_fech = (select created_at from tb_factur where Fact_id = new.Fact_id),
Kard_stoc = ((select Prod_stoc from tb_produc where Prod_id = new.Prod_id)-new.Detf_cant),
Kard_sato = ((select Prod_tota from tb_produc where Prod_id = new.Prod_id)-(new.Detf_cant*new.Detf_prev)),
Prod_id = new.Prod_id;

update tb_produc set Prod_stoc = Prod_stoc - new.Detf_cant
where tb_produc.Prod_id = new.Prod_id;

update tb_produc set Prod_tota = Prod_tota - (select Fact_tota from tb_factur where Fact_id= new.Fact_id)
where tb_produc.Prod_id = new.Prod_id;
end
\\ DELIMITER ;

DELIMITER ??
CREATE TRIGGER tr_kardexPedido AFTER INSERT ON tb_deting FOR EACH ROW begin
insert tb_kardex set 
Kard_nomb = new.Deti_nomb,
Kard_cant = new.Deti_cant,
Kard_prev = new.Deti_prev,
Kard_prec = new.Deti_prec,
Kard_fech = (select created_at from tb_ingres where Ingr_id = new.Ingr_id),
Kard_stoc = ((select Prod_stoc from tb_produc where Prod_id = new.Prod_id)+new.Deti_cant),
Kard_sato = ((select Prod_tota from tb_produc where Prod_id = new.Prod_id)+(new.Deti_cant*new.Deti_prev)),
Prod_id = new.Prod_id;

update tb_produc set Prod_stoc = Prod_stoc + new.Deti_cant
where tb_produc.Prod_id = new.Prod_id;

update  tb_produc set Prod_tota = Prod_tota + (new.Deti_cant*new.Deti_prev)
where tb_produc.Prod_id = new.Prod_id;

end
??
DELIMITER ;