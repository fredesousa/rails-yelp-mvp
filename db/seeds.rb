# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

  Chez_Panisse = {name: 'Chez Panisse', address: '1517 Shattuck Ave, Berkeley, CA', phone_number:'510-548-5525', category: 'french'}
  Le_Bernardin = {name: 'Le Bernardin', address: '155 W 51st St, New York, NY', phone_number: '212-554-1515', category: 'italian'}
  Noma = {name: "Noma", address: "Refshalevej 96, 1432 Copenhagen, Denmark", phone_number: "+45 32 96 32 97", category: "japanese"}
  El_Celler_de_Can_Roca = {name: "El Celler de Can Roca", address: "Carrer de Can Sunyer, 48, 17007 Girona, Spain", phone_number: "+34 972 22 21 57", category: "belgian"}
  Osteria_Francescana = {name: "Osteria Francescana", address: "Via Stella, 22, 41121 Modena MO, Italy", phone_number: "+39 059 223912", category: "chinese"}

[Chez_Panisse, Le_Bernardin, Noma, El_Celler_de_Can_Roca, Osteria_Francescana].each do |attributes|
  Restaurant.create!(attributes)
end
