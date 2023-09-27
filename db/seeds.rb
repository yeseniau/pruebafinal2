# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


#datos dunmy para cargar los veterianrios
10.times do |i| 
    Vet.create(
        nombre: Faker::Name.first_name,
        apellido: Faker::Name.last_name,
        especialidad: Faker::Job.title
        )
end

#datos dunmy para cargar los clientes
10.times do
    Client.create(
      nombre: Faker::Name.first_name,
      apellido: Faker::Name.last_name,
      direccion: Faker::Address.full_address,
      telefono: Faker::PhoneNumber.phone_number,
      correo: Faker::Internet.email
    )
end

#creacion de los servicios
Service.create([
  { nombre: "Consulta" },
  { nombre: "Hospitalización" },
  { nombre: "Cirugía" },
  { nombre: "Baño" },
  { nombre: "Peluquería" },
  { nombre: "Corte de Uñas" }
])