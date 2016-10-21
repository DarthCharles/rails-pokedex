# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('db', 'seeds', 'pokemon.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  pokemon = Pokemon.new
  pokemon.nat	 = row['nat']
  pokemon.name	 = row['name']
  pokemon.hp	 = row['hp']
  pokemon.atk	 = row['atk']
  pokemon.def	 = row['def']
  pokemon.spA	 = row['spA']
  pokemon.spD	 = row['spD']
  pokemon.typeI	 = row['typeI']
  pokemon.typeII	 = row['typeII']
  pokemon.abilityI	 = row['abilityI']
  pokemon.abilityII	 = row['abilityII']
  pokemon.hiddenAbility	 = row['hiddenAbility']
  pokemon.mass	 = row['mass']
  pokemon.color = row['color']
  pokemon.img_url = row['img_url']
  pokemon.save
  puts "#{pokemon.name} saved"
end
