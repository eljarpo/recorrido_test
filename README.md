# README

Prueba para Recorrido

## Versiones:

* Ruby: 2.7.0
* Rails: 6.1.4
* Postgresql 11
## Instrucciones:

* Asegurarse de tener las versiones correspondientes
* Clonar repositiorio: `git clone git@github.com:eljarpo/recorrido_test.git`
* instalar dependencias: `bundle install`
* Activar cache para stimulus reflex: `rails dev:cache`
* Crear base de datos: `rails db:create`
* Crear migraciones de BD: `rails db:migrate`
* Generar seeds para BD: `rails db:seed`
* Instalar dependencias webpack: `yarn install`
* Iniciar servidor: `rails s`


## Uso
### Para crear nuevos servicios
* Crear Servicio (En caso que sea necesario)
* Asignar horarios a servicio (pestaña horarios) (En caso que sea necesario)

### Para servicios ya creados

* seleccionar servicio en pagina inicio
* Asignar disponibilidad de empleados
* asignar empleado a horario

## Descripcion

La aplicacion consiste en una pagina principal, donde se ve un menu para Empleados, servicios y horarios (Navegacion) 
Un listado de servicios creados y un input para crear nuevos.Al seleccionar un servicio del listado, se mostrara una tabla con los horarios asignados, en primera instancia como no hay disponibilidad esta estara practicamente en blanco y se debe proceder a asignar la disponibilidad de empleados (Boton azul, asignar disponibilidad), ahi  se debe seleccionar a los empleados disponibles para esa hora y volver a la otra tabla (boton azul, asignar horarios) para elegir quien monitoreara en esa hora.