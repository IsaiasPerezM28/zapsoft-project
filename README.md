Sistema de Gestión de Productos - ZapSoft
Este proyecto es una aplicación web para la gestión de productos y tipos de productos en una tienda virtual. El sistema permite a los administradores gestionar productos mediante un panel de administración, realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) y controlar el inventario.

Tecnologías Utilizadas
PHP (con MySQL)
HTML, CSS, JavaScript para el frontend
Bootstrap para el diseño de la interfaz
Requisitos del Proyecto
Página de Login: Autenticación de usuario y contraseña (simulada o real).
Dashboard de Administrador: Interfaz para gestionar productos y tipos de productos.
CRUD funcional: Crear, visualizar, editar y eliminar registros de productos y tipos de productos.
Instalación
Clona el repositorio:

git clone https://github.com/tuusuario/taller_calidad_software_nombre.git
Accede al directorio del proyecto:

cd taller_calidad_software_nombre
Configura la base de datos:

Crea una base de datos MySQL llamada zapsoft.
Importa las tablas necesarias desde el archivo SQL en el proyecto.
Configura tu archivo de conexión a la base de datos en el archivo conexion.php:

$conexion = new mysqli('localhost', 'usuario', 'contraseña', 'zapsoft');
Uso
Accede a la página de login para autenticarte como administrador.
Después de iniciar sesión, serás redirigido al dashboard, donde podrás gestionar los productos y tipos de productos.
Los productos y tipos de productos se gestionan mediante operaciones CRUD (Crear, Leer, Actualizar, Eliminar).
Entregables
Carpeta del proyecto web completo (código fuente).
Link del repositorio GitHub público.
Capturas de:
Login
Dashboard
CRUD
Documento PDF con:
Descripción del desarrollo.
Conclusiones personales.
