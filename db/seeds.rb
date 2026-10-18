# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# I was playing a little bit with the database and validations so for clean I will delete all of them for start with the 676
# Full stack notes, blocks I use the times
Product.destroy_all

# documentation for faker ruby. 
# https://www.rubydoc.info/gems/faker/Faker/Number
# https://rubydoc.info/github/faker-ruby/faker/Faker%2FLorem.paragraphs
# https://dev.to/jaredm/how-to-use-faker-my-favorite-ruby-gem-3bjj
# https://www.rubydoc.info/github/faker-ruby/faker/Faker/Commerce
# 676.times do = is a loop,will repeat 676 for create the fake information.
676.times do Product.create!(
    # I use unique for don't have double products. 
    title: Faker::Commerce.unique.product_name,
    # Just a paragrapgh using lorem. 
    description: Faker::Lorem.paragraphs(number: 2),
    # A range to generate the random number within 0.0
    price: Faker::Commerce.price(range: 1.0..100.0),
    #  random number between 1 - 100
    stock_quantity: Faker::Number.between(from: 1, to: 100)
    )
end

puts "You already created #{Product.count} successfully"

# Done !