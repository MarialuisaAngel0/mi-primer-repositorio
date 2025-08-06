# Comando para ejecutar Docker con PostgreSQL.
Descargar e iniciar PostgreSQL en Docker
Abre una terminal y ejecuta:

docker run --name postgres-db -e POSTGRES_PASSWORD=yourpassword -p 5432:5432 -d postgres
Asegúrate que el contenedor esté activo:

docker ps


# pasos para configurar DataGrip.

Aquí tienes una guía rápida con los **pasos para configurar DataGrip**, el entorno de desarrollo de bases de datos de JetBrains:


# **Descargar e instalar DataGrip**

* Ve al sitio oficial: [https://www.jetbrains.com/datagrip/](https://www.jetbrains.com/datagrip/)
* Descarga la versión adecuada para tu sistema operativo (Windows, macOS o Linux).
* Instálalo siguiendo el asistente de instalación.


# **Iniciar DataGrip y configurar licencia**

* Al abrir DataGrip por primera vez, se te pedirá iniciar sesión con una cuenta de JetBrains.
* Puedes usar:

  * Licencia individual o institucional.
  * Versión gratuita de prueba (30 días).


# **Crear una nueva conexión a base de datos**

1. En el panel izquierdo, haz clic en **"+"** > **Data Source** > elige el tipo de base de datos (ej. MySQL, PostgreSQL, SQL Server, SQLite, etc.).
2. Completa los campos de conexión:

   * **Host**: dirección del servidor (ej. `localhost` o IP).
   * **Puerto**: depende del motor (MySQL: 3306, PostgreSQL: 5432, etc.).
   * **Nombre de la base de datos**
   * **Usuario y contraseña**
3. Haz clic en **Test Connection** para verificar que se conecta correctamente.
4. Si no tienes el **driver JDBC** instalado, DataGrip te lo ofrecerá para descargar automáticamente.


# **Explorar y usar la base de datos**

* Una vez conectado, verás la base de datos en el panel izquierdo.
* Puedes:

  * Navegar por tablas, vistas, funciones, procedimientos.
  * Ejecutar consultas SQL desde el editor (botón derecho > New > Query Console).
  * Ver resultados, editar datos en vivo, exportar resultados.


# **Configurar preferencias importantes (opcional)**

* Ve a **File > Settings (o Preferences en macOS)**:

  * **Editor > Code Style**: cambia el estilo de indentación y formato SQL.
  * **Database > General**: activa/desactiva sincronización automática o autocompletado.
  * **Appearance & Behavior**: cambia el tema oscuro/claro o atajos.


# **Guardar conexión y proyecto**

* Puedes guardar la configuración de conexión dentro de un proyecto específico.
* Usa **File > Save All** para guardar tu trabajo y conexiones.


Creación de la base de datos PostgreSQL desde DataGrip.

Abrir Una Query Console y ejecutar 
CREATE DATABASE my_first_database;