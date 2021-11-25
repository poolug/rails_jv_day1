# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Wines
    # Name String

# Strains
    # name
    
# Wines_Strains
    # wine_id
    # Strain_id  .intransitiva que son 2 modelos y 3 tablas
    # porcentage .transitiva que son 3 modelos y 3 tablas

Wine.all.destroy_all

5.times do |i|
  Wine.create!(name: "Vino #{i+1}")
  "Vino #{i+1}"
end

Strain.all.destroy_all

10.times do |i|
  Strain.create!(name: "Cepa #{i+1}")
end

User.all.destroy_all

#Crea usuario catador (taster)
User.create!(email: "catador@mail.com", password: '123456', password_confirmation: '123456', taster: true)

#Crea 2 usuarios que sólo ven los vinos
2.times do |i|
  User.create!(email: "user#{i+1}@mail.com", password: "123456", password_confirmation: "123456", taster: false)
end

Oenologist.all.destroy_all

#Crea 3 onólogos
Oenologist.create!(name: 'Ramiro', nationality: 'Mexico', age: 40)
Oenologist.create!(name: 'Levandosky', nationality: 'Polish', age: 30)
Oenologist.create!(name: 'Cairo', nationality: 'Egyptian', age: 40)