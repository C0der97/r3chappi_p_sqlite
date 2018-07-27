# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = Administrador.create(nombre:"Pepe", correo:"pepe@domain.com", password:"123456")
a.etiquetas.create(nombre:"e1")
e = Etiqueta.first
u = Usuario.create(nombre:"u1", correo:"c@c.c", password:"123456")
u.etiquetas.push(e)