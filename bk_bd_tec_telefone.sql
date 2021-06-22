create database dbtstecjerry;
show databases;
use dbtstecjerry;

create table tbusuarios (
iduser int primary key auto_increment,
usuario varchar(50) not null,
login varchar(15) not null unique,
senha varchar(15) not null,
perfil varchar(20) not null
);

describe tbusuarios;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
cep varchar(9),
logradouro varchar(100) not null,
numero varchar(12) not null,
complemento varchar(20),
bairro varchar(50) not null,
cidade varchar(50) not null,
uf char(2),
rg varchar(15) unique,
cpf varchar(15) not null unique,
fonecli varchar(15) not null,
fonecli2 varchar(15),
emailcli varchar(100),
obs varchar(250)
);

create table tbos(
	os int primary key auto_increment,
    dataOS timestamp default current_timestamp,
    tipoOS varchar(15) not null,
    situacao varchar(20) not null,
    tecnico varchar(30) not null,
    modelo varchar(50) not null,
    marca varchar(50) not null,
    imei1 varchar(20) not null,
    imai2 varchar(20),
    senha varchar(50),
    acessorios varchar(250),
    defeitoCli varchar(250) not null,
    diagnostico varchar(250),
    valor decimal(10,2),
    sinal decimal(10,2),
    dataPrevista date,
    dataRetirada date,
    formaPag varchar(20),
    garantiaDate date,
    idcli int not null,
    foreign key(idcli) references tbclientes(idcli)
    );
    
    describe tbos;
