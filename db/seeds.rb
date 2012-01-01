# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'EMPTY THE MONGODB DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'umit', :email => 'spam@viscus.net', :password => '3115100', :password_confirmation => '3115100'
puts 'New user created: ' << user.name


#main Attributes

mage = CharacterClassType.create!(:name => "Mage", :description => "Magery", :stamina_modifier => 0.3, :strength_modifier => 0.1, :intellect_modifier => 0.5, :agility_modifier => 0.2, :spirit_modifier => 0.4, :armor_modifier => 0.1, :crit_chance_modifier => 0.3)
warrior = CharacterClassType.create!(:name => "Warrior", :description => "Brute Force", :stamina_modifier => 0.5, :strength_modifier => 0.5, :intellect_modifier => 0.1, :agility_modifier => 0.2, :spirit_modifier => 0.3, :armor_modifier => 0.4, :crit_chance_modifier => 0.1)

rogue = CharacterClassType.create!(:name => "Rogue", :description => "Sneakiness", :stamina_modifier => 0.3, :strength_modifier => 0.3, :intellect_modifier => 0.2, :agility_modifier => 0.4, :spirit_modifier => 0.2, :armor_modifier => 0.3, :crit_chance_modifier => 0.4)

puts "Basic Character Class Types created captain!"



ItemCategory.create!(:name => "Weapon")
ItemCategory.create!(:name => "Armor")
ItemCategory.create!(:name => "Food")
ItemCategory.create!(:name => "Fish")
ItemCategory.create!(:name => "Potion")
ItemCategory.create!(:name => "Corpse")
puts "A bunch of Item Categories created captain!"