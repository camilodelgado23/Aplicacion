create database almacen;
use almacen; 

create table usuarios (
  nombre varchar(50),
  email varchar(50),
  usuario varchar(20),
  password varchar(20),
  primary key (usuario)
);

create table productos (
  id int auto_increment,
  nombre varchar(50),
  precio decimal(10,2),
  inventario int,
  primary key(id)
);

create table ordenes (
  id int auto_increment,
  nombreCliente varchar(50),
  emailCliente varchar(50),
  totalCuenta decimal(10,2),
  fecha datetime default current_timestamp,
  primary key(id)
);

INSERT INTO usuarios 
  (nombre, email, usuario, password)
VALUES
  ('camilo', 'camilo@gmail', 'admin', '1234');
  ('Juan', 'j@gmail', 'User1', '1234');
  ('Jose', 'jo@gmail', 'User2', '1234');


INSERT INTO productos (nombre, precio, inventario) VALUES
  ('Laptop HP', 799.99, 50),
  ('Smartphone Samsung', 499.99, 100),
  ('Televisor LG', 899.99, 30),
  ('Tablet Apple', 349.99, 40),
  ('Cámara Canon', 299.99, 20);


INSERT INTO ordenes (nombreCliente, emailCliente, totalCuenta) VALUES
  ('María López', 'maria.lopez@example.com', 150.50),
  ('Juan Pérez', 'juan.perez@example.com', 300.75),
  ('Laura Smith', 'laura.smith@example.com', 75.25),
  ('Carlos Rodríguez', 'carlos.rodriguez@example.com', 450.00),
  ('Ana García', 'ana.garcia@example.com', 200.30);
