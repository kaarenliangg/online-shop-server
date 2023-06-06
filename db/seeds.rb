# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :fullname => 'Dom', :email => 'dom@shop.co', :password => 'chicken', :address => '60 Reservoir Street, Surry Hills NSW 2010, Australia', :admin => 'true', :contact_number => '0402053235'
puts "#{User.count} users created."

Product.destroy_all
p1 = Product.create :product_code => '', :product_name => '', :product_category => '', :animal_category => '', :product_description => '', :image => '/images/', :cost_price => '', retail_price => ''
puts "#{Product.count} users created."
