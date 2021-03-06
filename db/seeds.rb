# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean


Document.create(name: "Cedula de Ciudadania", initials: "CC")
Document.create(name: "Tarjeta de Identidad", initials: "TI")
Document.create(name: "Cedula de Extranjeria", initials: "CE")
Document.create(name: "Pasaporte", initials: "PSP")
Document.create(name: "Documento nacional de identificacion", initials: "DNI")

Document.all.each do |document|

		10.times do |i|
		Document.create(name: "Documento #{i}")

	end
end

Rh.create(name: "A+")
Rh.create(name: "A-")
Rh.create(name: "B+")
Rh.create(name: "B-")
Rh.create(name: "O+")
Rh.create(name: "O-")
Rh.create(name: "AB+")
Rh.create(name: "AB-")

Rh.all.each do |rh|

		10.times do |i|
		Rh.create(name: "Rh #{i}")

	end
end

Program.create(name: "Actividad Fisica", description: "Conjunto de practicas para una salud integral")
Program.create(name: "Acuicultura", description: "Conjunto de actividades para el cultivo de especies acuáticas vegetales y animales")
Program.create(name: "Agente de servicios de Contact Center", description: "Conocimientos para la atencion integral a un usuario")
Program.create(name: "Agricultura de precision", description: "Concepto agronómico de gestión de parcelas agrícolas")
Program.create(name: "Agrobiotecnologia", description: "Tecnología basada en la biología, especialmente usada en agricultura, ciencias forestales y medicina.")
Program.create(name: "Agroindustrial alimentaria", description: "Producción, industrialización y comercialización de productos agrarios")
Program.create(name: "Agroindustrial panelera", description: "Producción, industrialización y comercialización de panela")
Program.create(name: "Agua y saneamiento", description: "Técnicas y estrategias pertinentes para el cuidado de los elementos hídricos en nuestro país")
Program.create(name: "Analisis de muestras quimicas", description: "Obtencion de informacion acerca de la composicion y concentracion en sustancias")
Program.create(name: "Analisis quimico de carbones y minerales", description: "Habilidades en la toma y preparación de muestras de minerales y carbones")
Program.create(name: "Analisis y desarrollo de sistemas de informacion", description: "Desarrollar sofrware que cumplan los requerimientos espesificos del cliente")
Program.create(name: "Animacion 3d", description: "Referencia a un tipo de animación que simula las tres dimensiones")
Program.create(name: "Apoyo administrativo en salud", description: "Manejo y prestación de servicios dentro del esquema de Aseguramiento en Salud")
Program.create(name: "Apoyo logistico en eventos y servicios empresariales", description: "Competencias necesarias para servir de apoyo en la logística de eventos y servicios empresariales")
Program.create(name: "Armado de piezas de joyeria", description: "Desarrollar las técnicas necesarias tanto para diseñar como para armar piezas hechas a mano con hilo y chapa en metales preciosos")
Program.create(name: "Aseguramiento metrologico industrial", description: "Sólida formación en elementos de las Ciencias Exactas y Naturales")
Program.create(name: "Asesoramiento comercial y operaciones de entidades financieras", description: "Dar asesoría comercial y financiera que conduzca a la satisfacción de las expectativas y necesidades reales del cliente")
Program.create(name: "Asistencia administrativa", description: "Recopilan, verifican, registran y tramitan documentos y formularios como: solicitudes, licencias, permisos, contratos e inscripciones")
Program.create(name: "Asistencia en organizacion de archivos", description: "Desarrollar destrezas en el manejo de las herramientas del orden de la documentación de una empresa o institución")
Program.create(name: "Asistencia integral a personas mayores", description: "Realizar actividades orientadas al mantenimiento y conservación de la salud según situación particular del asistido")
Program.create(name: "Asistencia integral a la primera infancia", description: "Desarrollar acciones que permitan la apropiación del Marco de Competencias para la Primera Infancia")
Program.create(name: "Automatizacion industrial", description: "Uso de sistemas o elementos computarizados y electromecánicos para controlar maquinarias y/o procesos industriales sustituyendo a operadores humanos")

Program.all.each do |program|

		2.times do |i|
		Program.create(name: "Programa #{i}")

	end
end

Category.create(name: "Preguntas Abiertas")
Category.create(name: "Preguntas Reflexivas")
Category.create(name: "Preguntas Directivas")
Category.create(name: "Preguntas De Opcion multiple")
Category.create(name: "Preguntas Cerradas")

Category.all.each do |category|

		10.times do |i|
		Category.create(name: "Categoria #{i}")

	end
end

Rol.create(name: "Funcionarios", acronym: "FCN")
Rol.create(name: "Contratistas", acronym: "CNT")
Rol.create(name: "Aprendices", acronym: "APD")
Rol.create(name: "Visitantes", acronym: "VST")

Rol.all.each do |rol|

		10.times do |i|
		Rol.create(name: "Rol #{i}")

	end
end

TypeUser.create(name: "Administrador", acronym: "ADM", description: "Acceso total a la aplicacion Crear,Mostrar,Actualizar,Eliminar")
TypeUser.create(name: "Guarda", acronym: "GRD", description: "Acceso de escritura Crear,Mostrar")
TypeUser.create(name: "Usuario", acronym: "USR", description: "Acceso con menos privilejios")

