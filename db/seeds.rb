# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(
    name: "Francisca",
    lastname: "Apellido1",
    lastname2: "Apellido2",
    gender: true,
    country: "CL",
    city: "Santiago",
    approbated:true,
    email: "francisca@mail.com",
    password: "123456",
    password_confirmation: "123456",
    id: 1
)
User.create(
    name: "Persona2",
    lastname: "Primerapellido",
    lastname2: "Segundoapellido",
    gender: true,
    country: "CL",
    city: "Santiago",
    approbated:true,
    email: "persona2@mail.com",
    password: "123456",
    password_confirmation: "123456",
    id: 2
)
User.create(
    name: "Persona3",
    lastname: "Primerapellido",
    lastname2: "Segundoapellido",
    gender: true,
    country: "CL",
    city: "Santiago",
    approbated:true,
    email: "persona3@mail.com",
    password: "123456",
    password_confirmation: "123456",
    id: 3
)
User.create(
    name: "Persona4",
    lastname: "Primerapellido",
    lastname2: "Segundoapellido",
    gender: true,
    country: "CL",
    city: "Santiago",
    approbated:true,
    email: "persona4@mail.com",
    password: "123456",
    password_confirmation: "123456",
    id: 4
)


Service.create(
    name: 'Peluquería a domicilio', 
    category: 'Belleza',
    description: 'Voy a tu casa a cortarte el pelo', 
    home: true,
    user_id: 1
)
Service.create(
    name: 'Reparo computadores', 
    category: 'Reparaciones',
    description: 'Reparo computadores a domicilio, de lunes a viernes', 
    home: true,
    user_id: 2
)
Service.create(
    name: 'Cocina a domicilio', 
    category: 'Alimentos',
    description: 'Preparo ricos platos en la comodidad de tu hogar!!',
    home: true,
    user_id: 3
)
Service.create(
    name: 'Cuido a tu gato', 
    category: 'Mascotas',
    description: 'Aunque los gatos se cuidan solos, puedo ir a cuidarlo mientras no estés',
    home: true,
    user_id: 4
)
AdminUser.create!(email: 'admin_prueba@mail.com', password: 'contraseña.admin', password_confirmation: 'contraseña.admin')