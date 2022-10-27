#INSTRUCCIONES PARA EJECUTAR MI PROYECTO
###Configuracion BD
La Base de Datos que se esta manejando MySQL.
  1. Generar una BD con el nombre "v210700E".
  2. Ejecutar el archivo usuarios.sql
  3. Ejecutar el archivo informacion_usuarios.sql

###Configuración Backend
Se utilizó la versión 6.0 de .NET por lo que es necesario utilizar la versión más reciente de Visual Studio. De igual manera revisar si los paquetes de MySql.Data(8.0.31) y Dapper(2.0.123) estan instalados.
  1. El archivo compreso de examen_backend_Vladimir.zip contiene toda la solución.

###Configuracion Frontend
Se necesita tener un servidor de aplicaciones (XAMPP).
  1. El archivo compreso de examen_frontend_Vladimir.zip se necesita descomprimir dentro del directorio correspondiente para que el servidor de aplicaciones lo tome (xampp/htdocs).
  2. Se necesita conexión a Internet por las importaciones de librerías utilizadas en el mismo.

###Configuración algoritmos
Se utilizó la versión 6.0 de .NET por lo que es necesario utilizar la versión más reciente de Visual Studio.
 1. El archivo compreso de examen_algoritmos_Vladimir.zip contiene la solución para los problemas.
 2. Se realizaron ambos casos, y se puede seleccionar cual se quiere visualizar primero.

#RESPUESTAS DE LA SECCIÓN
##Patrones de Diseño

Problema 1: Un cliente requiere utilizar sendgrid para envíos de email, pero otro cliente requiere enviarlos por mandril. Se quiere evitar el uso de IF, y realizar un diseño en donde podamos utilizar más servicios en caso de que un cliente requiera alguno en específico ¿Qué patrón de diseño utilizarías y por qué?
Opción 1: Strategy
Opción 2: Factory Method
Opción 3: Adapter

Utilizaría Factory Method

Ya que al crear una fábrica de este tipo me serviría para crear varias implementaciones de este, pero tener también al mismo tiempo la flexibilidad de agregarle su propia lógica ya que los diferentes servicios de correo varían en su proceso desde la autenticación hasta el envío del mensaje.

******

Problema 2: Explica en tus propias palabras la diferencia entre Factory Method y Abstract Factory. Y proporciona un caso de uso.

Pues básicamente yo pudiera destacar dos diferencias importantes entre estos, la primera es que el Factory Method sirve básicamente para la creación de un solo producto y el abstract Factory, para la creación de una familia de productos relacionados entre sí, posteriormente la otra diferencia es que generalmente Factory Method se utiliza para diseños más sencillos (pequeños) y el abstract factory para diseños más complejos (o especializados)

El caso de uso podría ser para los empleados de una empresa:

Por ejemplo en el Factory Method se podría crear la fábrica para generar un objeto para cada empleado de la empresa, pero también sabemos que dependiendo del perfil del empleador se necesita tener cierta información aparte de sus datos generales y se podría de alguna manera tener variación entre los objetos.

En el Abstract Factory, se podría crear la fábrica para no solo tener la información del empleado y sus especificaciones, si no crear diferentes familias que podrían ser los diferentes departamentos o áreas con las que se cuentan en dicha empresa, además se podría establecer la relación entre los diferentes departamentos dentro de la empresa, eso último creo que sería el mayor provecho que se le podría sacar al utilizar este patrón de diseño.
