require "csv"

# I was playing a little bit with the database and validations so for clean I will delete all of them for start with the 676
# Full stack notes, blocks I use the times
Product.destroy_all
# This one I add in the second part. 
Category.destroy_all

# Appendix A - Loading Data from a CSV in your seed script.
csv_file = Rails.root.join('db/products.csv')
csv_data = File.read(csv_file)
products = CSV.parse(csv_data, headers: true)

products.each do |product|
# https://github.com/ruby/csv/blob/main/lib/csv.rb
category_name = product['category']
category = Category.find_or_create_by(name: category_name)


category.products.create!(
    title: product['name'],
    description: product['description'],
    price: product['price'],
    stock_quantity: product['stock quantity'])
end
puts "The seed is working, yippie. "

# documentation for faker ruby. 
# https://www.rubydoc.info/gems/faker/Faker/Number
# https://rubydoc.info/github/faker-ruby/faker/Faker%2FLorem.paragraphs
# https://dev.to/jaredm/how-to-use-faker-my-favorite-ruby-gem-3bjj
# https://www.rubydoc.info/github/faker-ruby/faker/Faker/Commerce
# 676.times do = is a loop,will repeat 676 for create the fake information.
=begin

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
=end
# Done !