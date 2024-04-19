--create database Juncao_aula1;
--go

--create table Cargo_12 (Cd_cargo char(3) primary key,
--					cargo varchar(50) not null);

--insert into Cargo_12 (Cd_cargo, Cargo)
--values ('C01', 'Presidente'),
--		 ('C02', 'Diretor'   ),
--		 ('C03', 'Gerente'   );

--CREATE TABLE Empregado_12 (Matricula char(3) primary key,
--						   Nome varchar(50) not null,
--						   Cd_cargo char(3) not null
--						   References Cargo_12(Cd_cargo));


--insert into Empregado_12 (Matricula, Nome, Cd_cargo)
--values ('E01', 'Pedro', 'C01'),
--	     ('E02', 'Paulo', 'C02');
		

--create table Empregado_13 (Matricula char(3) primary key,
--						   Nome varchar(50) not null,
--						   Cd_cargo char(3) not null
--						   References Cargo_12(Cd_cargo));

--insert into Empregado_13 (Matricula, Nome, Cd_cargo)
--values     ('E02', 'Paulo',     'C02'),
--	         ('E03', 'Don Diego', 'C01'),
--		     ('E04', 'Zorro',     'C02');

--select * from Cargo_12
--select * from Empregado_12, Cargo_12 WHERE Empregado_12.Cd_Cargo = Cargo_12.Cd_Cargo;
--Select * from Empregado_12 UNION SELECT * FROM Empregado_13
--select * from Empregado_12 UNION ALL SELECT * FROM Empregado_13
--Select * from Empregado_12 INTERSECT SELECT * FROM Empregado_13
--Select * from Empregado_12 EXCEPT SELECT * FROM Empregado_13

--CREATE TABLE marcas ( marca VARCHAR(50), nome VARCHAR(50) )

--INSERT INTO marcas (marca, nome) 
--VALUES ( 'VW', 'Volkswagem' ), ( ' Ford ', 'Ford' ), ('GM' , ' General Motors' ) , ('Fiat' , 'Fiat'), ('Renault' , 'Renault' ), ( 'MB' , 'Mercedes - Benz ' )

--CREATE TABLE carros ( modelo VARCHAR (100),
--marca VARCHAR (50),
--ano INTEGER,
--cor VARCHAR (20));

--INSERT INTO carros
--( modelo, marca, ano, cor )
--VALUES
--( 'Fox' ,'VW' ,2005 ,'preto' ),
--( 'Ecosport','Ford' ,2009 ,'verde' ),
--( 'KA' ,'Ford' ,2008 ,'prata' ),
--( 'Punto' ,'Fiat' ,2008 ,'branco'),
--( 'Uno' ,'Fiat' ,2007 ,'preto' ),
--( 'Stilo' ,'Fiat' ,2004 ,'prata' ),
--( 'Uno' ,'Fiat' ,2009 ,'branco'),
--( '207' ,'Peugeot' ,2010 ,'prata' ),
--( '300 C' ,'Chrysler',2008 ,'verde' );
--SELECT marcas.nome, carros.modelo FROM marcas INNER JOIN carros ON carros.marca = marcas.marca
--SELECT m.nome, c.modelo FROM marcas AS m LEFT JOIN carros AS c ON c.marca = m.marca
--SELECT m.nome, c.modelo FROM marcas AS m RIGHT JOIN carros AS c ON c.marca =  m.marca
--SELECT m.nome, c.modelo FROM marcas AS m FULL JOIN carros AS c ON c.marca = m.marca
--SELECT m.nome, c.modelo FROM marcas AS m CROSS JOIN carros AS c

--CREATE TABLE Cliente ( Cd_Cliente INT IDENTITY(1001,1) PRIMARY KEY NOT NULL,
--						Nm_Cliente VARCHAR(50) NOT NULL )
--CREATE TABLE Pedido  ( Nr_Pedido INT IDENTITY PRIMARY KEY NOT NULL,
--					   Dr_Pedido DATE NOT NULL,
--					   Cd_Cliente INTEGER REFERENCES Cliente(Cd_Cliente))
--
--CREATE TABLE Produto ( Cd_Produto INT IDENTITY PRIMARY KEY NOT NULL,
--					   Ds_Produto VARCHAR (50) NOT NULL, 
--					   Preco DECIMAL (5,2) NOT NULL)
--CREATE TABLE Pedidoproduto ( Nr_Pedido INT REFERENCES Pedido(Nr_Pedido),
--							 Cd_Produto INT REFERENCES Produto(Cd_Produto),
--							 Quantidade INT NOT NULL,
--							 PRECO DECIMAL (5,2) NOT NULL,
							 --PRIMARY KEY( Nr_Pedido, Cd_Produto))
--INSERT INTO cliente
--( Nm_Cliente )
--VALUES
--( 'PEDRO' ),
--( 'CARLOS' ),
--( 'MARIA' );

--INSERT INTO pedido
--( Dr_Pedido, Cd_Cliente )
--VALUES
--( '02/11/2010',1001 ),
--( '05/11/2010',1001 ),
--( '07/11/2010',1001 ),
--( '08/11/2010',1002 );

--INSERT INTO produto
--( Ds_Produto, Preco)
--VALUES
--( 'MOUSE' ,180 ),
--( 'TECLADO',120 ),
--( 'MONITOR',550 );

--SELECT Cliente.Cd_Cliente, Cliente.Nm_Cliente, Pedido.Nr_Pedido,Pedido.Dr_Pedido FROM Cliente JOIN Pedido on Cliente.Cd_Cliente = Pedido.Cd_Cliente
--SELECT Cliente.Cd_Cliente, Cliente.Nm_Cliente, Pedido.Nr_Pedido, Pedido.Dr_Pedido FROM Cliente, Pedido WHERE Cliente.Cd_Cliente = Pedido.Cd_Cliente

/////////////--SELECT Cliente.Cd_Cliente, Cliente.Nm_Cliente, Pedido.Nr_Pedido, Pedido.Dr_Pedido FROM Pedido	JOIN Cliente ON cliente.Cd_cliente = Pedido.Cd_Cliente JOIN Pedidoproduto ////////////



