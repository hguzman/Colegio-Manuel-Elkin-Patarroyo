# Implementación de aplicativo web para el control de notas del C.M.E.P

---
## Revisiones:

|Fecha|Versión|Descripción|Autores|
|------|------|-----------|-------|
|26-08-19|0|Levantamiento de requerimientos|Mateo Balza, Maikol Menco, Jose Gonzalez, Jaime Alvarez|
|23-09-19|0|Presentación del proyecto|Mateo Balza, Maikol Menco, Jose Gonzales, Jaime Alvarez|

----

## Especificacíon de requerimientos:

### 1. Introducción:
Este proyecto surge con la finalidad, de brindar a la institución educativa C.M.E.P un aplicativo web que le permita al personal de la institución llevar un mejor control de las notas, registro de las reuniones y sobretodo mejorar la comunicación con los acudientes e involucrarlos más en los procesos educativos de sus acudidos.

#### 1.1 Propósito:
El principal objetivo con este documento es describir lo que acordamos con el cliente con el fin de desarrollar el software a la medida de los requerimientos del cliente y optimizar los procesos educativos de la institución.

#### 1.2 Alcance:
Será un aplicativo web que le ayudará al personal de la institución, llevar un mejor control de la asistencia, notas y comentarios diarios del comportamiento de los alumnos, esto permitirá poder identificar casos de alumnos en deserción escolar o bajo rendimiento académico y disminuir las cifras de años perdidos en lo estudiantes, este aplicativo apoyará las siguienetes area.

* Registro de Notas.
* Control de asistencia.
* Boletines virtuales.
* Fecha y eventos importantes.

####  Definiciones, Acrónimos, y Abreviaturas:

* Aplicativo web: En la ingeniería de software se denomina aplicación web a aquellas herramientas que los usuarios pueden utilizar accediendo a un servidor web a través de internet o de una intranet mediante un navegador.

* Base de datos: Una base de datos es un conjunto de datos pertenecientes a un mismo contexto y almacenados sistemáticamente para su posterior uso. En este sentido; una biblioteca puede considerarse una base de datos compuesta en su mayoría por documentos y textos impresos en papel e indexados para su consulta.

* Responsive: El diseño web adaptable, es una filosofía de diseño y desarrollo cuyo objetivo es adaptar la apariencia de las páginas web al dispositivo que se esté utilizando para visitarlas.

* Backup: Una copia de seguridad, respaldo, copy backup, copia de respaldo, copia de reserva en ciencias de la información e informática es una copia de los datos originales.

* Roles: Función que una persona desempeña en un lugar o en una situación.

* Requerimiento Funcional: Un requisito funcional define una función del sistema de software o sus componentes. Una función es descrita como un conjunto de entradas, comportamientos y salidas.

* Requerimiento no funcional: Un requisito no funcional o atributo de calidad es, en la ingeniería de sistemas y la ingeniería de software, un requisito que sabe bien y especifica criterios que pueden usarse para juzgar la operación de un sistema en lugar de sus comportamientos específicos, ya que éstos corresponden a los requisitos funcionales.

#### 1.4 Referncias:

* [Requerimientos (F) y (NF)](https://sites.google.com/site/metodologiareq/capitulo-ii/tecnicas-para-identificar-requisitos-funcionales-y-no-funcionales)

* [Base de datos](http://www.maestrosdelweb.com/que-son-las-bases-de-datos/)

* [Aplicación web](https://www.neosoft.es/blog/que-es-una-aplicacion-web/)

* [Registro](https://es.wikipedia.org/wiki/Registro_(base_de_datos))

#### 1.5 Apreciación Global:
En la sección anterior le presentamos la introducción de la función del aplicativo web, en la sección 2 hablaremos de las perspectiva del proyecto, funciones y caracteristicas y de los usuarios que haran uso del software, en la sección 3 se presentara una explicación detallada de los requerimientos que se implementarán en el desarollo de la aplicación web.

----
### 2. Descripción general:

#### **2.1 Perspectivas del Producto:**
Con este aplicación web se busca optimizar los procesos educativos en la institución educativa,este software acabará con los actuales problemas de la institución que son en el registro de las notas y los anuncios de eventos importantes que invlolucran a los acudientes

#### **2.2 Funciones del producto:**

### Este software cumplirá con las siguientes funciones:

1. Registro de la notas.
2. Anuncio de eventos importantes.
3. Generar boletines virtuales.
4. Comunicación acudiente-institución.

#### **2.3 Características de Usuario:**
Los futuros usuarios de software son principalmente personas que estan vinculadas en la institución(Personal administrativo, docentes, acudientes ETC.), que se encargaran de interactuar con el software mediante el sistema de roles.

#### **2.4 Restricciones:**
Principalmente temas relacionados con el presupuesto,tiempo y recursos(Humanos o de equipos de trabajo).

#### **2.5 Atención y Dependencias:**

Este sistema permitirá organizar los procesos en la institución, enfocandose en la parte de registro de las notas y la citación a los acudientes a reuniones que involucren a sus acudidos, tambien con este software se apoyará a los docentes a tener más control de la asistencia y la parte desciplinaria de los alumnos.

---
### 3. Requerimientos específicos:

#### 3.1 Requerimientos funcionales:
1.
* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-001|Form Registro|14-09-2019|Alto|
|Entrada|Fuente|Salida|Destino|
|Datos del usuario|Base de datos|Interfaz de registro|Base de datos|
|Restricciones||||
|Depende el rol tendra acceso a ciertas rutas de la pagina

|Descripción:|**El usuario deberá sumistrar los datos necesarios para hacer el registro en el aplicativo**|
|------------|------------------------------------|
|**Proceso:**|**El usuario deberá ingresar los datos que se le soliciten y aceptar los terminos y condiciones del aplicativo**|
|**Efecto Colateral**|**Qué el usuario ya se encuentre registrado o sumistre sus datos correctamente.**

2.

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-002|Login|22-10-2019|Alto|
|**Entrada**|**Fuente**|**Salida**|**Destino**|
|**Datos del usuario**|Base de datos|Modulo login|Base de datos|
|**Restricciones**||||
|**Solo podrá tener acceso a ciertos modulos segun su rol**

|Descripción:|Él usuario debera suministrar el usuario que se creó en el modulo de registro|
|------------|------------------------------------|
|**Proceso:**|**Él usuario deberá suministrar su usuario y contraseña propio**|
|**Efecto Colateral**|**Él usuario olvide su contraseña o se encuentre bloquedo.**

3.

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-003|Creación de roles|11-09-2019|Alto|
|**Entrada**|**Fuente**|**Salida**|**Destino**|
|**Datos del usuario**|Base de datos|lista de roles|Base de datos|
|**Restricciones**||||
|**Solo podrá tener acceso a ciertos modulos segun su rol**

|Descripción:|Él usuario debera suministrar el usuario que se creó en el modulo de registro|
|------------|------------------------------------|
|**Proceso:**|**Él usuario deberá suministrar su usuario y contraseña propio segun su rol**|
|**Efecto Colateral**|**Él usuario olvide su contraseña o se equivoque de rol.**

4.
* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-004|Sección de información|11-09-2019|Alto|
|**Entrada**|**Fuente**|**Salida**|**Destino**|
|**Información y eventos de la institución**|Base de datos|Sección de información|Base de datos|
|**Restricciones**||||
|**Solo podrá ser administrado por el rector**

|Descripción:|**Él rector hará los anuncios de fechas importantes**|
|------------|------------------------------------|
|**Proceso:**|**Él rector debera respetar todos los horarios establecidos internamente**|**Él rector se equivoque al momento de organizar algun evento.**

5.

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-005|sección de comentarios|12-11-2019|Alto|
|**Entrada**|**Fuente**|**Salida**|**Destino**|
|**Descrpción detellada del comentario**|Rol docente|Comentario puntual de algun estudiante|Base de datos|
|**Restricciones**||||
|**Ninguna**

|Descripción:|Él Docente deberá hacer una explicación detallada de lo sucedido con el estudiante|
|------------|------------------------------------|
|**Proceso:**|**Él docente explicará detalladamente los acontecimientos el alumno**|
|**Efecto Colateral**|**Él docente se equivoque de alumno**

6.

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-006|Registro de sedes|15-10-2019|Alto|
|**Entrada**|**Fuente**|**Salida**|**Destino**|
|**Datos de las sedes**|Base de datos|Módulo de sedes|Base de datos|
|**Restricciones**||||
|**El administrador de cada sede delegará los permisos**

|Descripción:|Él administrador deberá especificar la sede a la cual pertenece|
|------------|------------------------------------|
|**Proceso:**|**Él usuario deberá suministrar su usuario y contraseña propio y sede a la que pertenece**|
|**Efecto Colateral**|**Él usuario olvide su contraseña, se encuentre bloquedo o pertenezca a una o más sedes.**

#### 3.2 Requerimientos no funcionales:

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-001|Usabilidad|15-10-2019|Alto|
|**Descripción:**||||
|**Todos los roles podrán interactuar de forma continua.**

8.

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-002|Adaptabilidad|15-10-2019|Alto|
|**Descripción:**||||
|**El software será responsive es decir se adaptará a cualquier tamaño de pantalla.**

9.

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-003|Soporte|15-10-2019|Alto|
|**Descripción:**||||
|**Se le brindará su respectivo soporte de actualizaciones.**

10.

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-004|Fiabilidad|15-10-2019|Alto|
|**Descripción:**||||
|**El software contará con backup para la información.**

11.

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-005|Disponibilidad|15-10-2019|Alto|
|**Descripción:**||||
|**El software esta en la capacidad de satisfacer las necesidades de la institución.**

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-006|interoperatividad|15-10-2019|Alto|
|**Descripción:**||||
|**El software contará con todos los manuales de uso y se le brindará capacitación al personal de la institución.**

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-007|Comprobabilidad:|15-10-2019|Alto|
|**Descripción:**||||
|**Se ha comprobado que software como estos han mejorado los procesos educativos en las instituciones en un 90%.**



#### 3.3 Requerimientos interfaz de usuario:

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-001|Registro|15-10-2019|Alto|
|**Descripción:**||||
|**Él usuario deberá especificar su rol y luego llenar los respectivos datos para llenar el registro.**

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-002|Logín|15-10-2019|Alto|
|**Descripción:**||||
|**Él usuario deberá colocar su usuario y contraseña y podrá acceder a la información según su rol.**

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-003|Usuario administrador|15-10-2019|Alto|
|**Descripción:**||||
|**Tendra control de total del sitio.**

* Implementación de aplicativo web para el control de notas del C.M.E.P

* Plantilla SRS–Especificación de Requerimientos

|Código|Nombre|Fecha|Grado necesidad|
|------|------|-----|---------------|
|RF-004|Interfaz de eventos|15-10-2019|Alto|
|**Descripción:**||||
|**Él administrador deberá organizar el cronograma de actividades de la institución.**

### 4. Hardware,Software y servicios necesarios para el desarrollo del software.

#### 4.1 Hardware:

|Ref|Componente|cantidad|Descripción|
|---|----------|--------|-----------|
|01|Portatil|5|Preferiblemente Ram 4 o más, intel o amd 5. 1 tera Disco|
|02|Mouse|5|Óptico inalambrico o cableado|

#### 4.2 Software:

|Ref|Componente|cantidad|Descripción|
|---|----------|--------|-----------|
|01|Registro|1|Los usuarios suministraran la información necesaria para acceder al software.|
|02|Login|1|Se accederá al software segun su rol.|
|03|Base de datos|1|Se guardara toda la información de los usuarios.|
|04|Módulo de eventos|1|Se darán a conocer todos los eventos(Culturales y académicos de la institución.)|
