# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customers = CustomerEngine::Customer.create!([
  { name: "Alex Mereuta", date_of_birth: "1995-10-10", place_of_birth: "Chisinau"},
  { name: "John Smith", date_of_birth: "1995-01-01", place_of_birth: "Copenhagen"}
])

customers.each do |customer|
  PaymentEngine::Payment.create!(customer_id: customer.id, amount: (rand * 100).round(2), currency: ["EUR", "USD", "CAD"].sample)
end
