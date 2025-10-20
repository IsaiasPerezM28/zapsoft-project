-- Crear base de datos
CREATE DATABASE IF NOT EXISTS zapsoft_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE zapsoft_db;

-- Tabla usuarios (para login)
CREATE TABLE IF NOT EXISTS usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL   -- más adelante puedes guardar hash en vez de texto plano
);

-- Insertar usuario por defecto (admin:1234) -- EN DESARROLLO, contraseña en texto
INSERT INTO usuarios (usuario, password)
VALUES ('admin', '1234')
ON DUPLICATE KEY UPDATE usuario=usuario;

-- Tabla tipos_productos
CREATE TABLE IF NOT EXISTS tipos_productos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla productos
CREATE TABLE IF NOT EXISTS productos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  descripcion TEXT,
  precio DECIMAL(10,2) DEFAULT 0.00,
  stock INT DEFAULT 0,
  tipo_id INT,
  imagen VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (tipo_id) REFERENCES tipos_productos(id) ON DELETE SET NULL
);
