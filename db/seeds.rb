# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'clients_seed.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Client.new
#   t.clientname = row['clientname']
#   t.accountsize = row['accountsize']
#   t.mgmt_fee = row['mgmt_fee']
#   t.risktolerance = row['risktolerance']
#   t.save
#   puts "#{t.clientname} saved"
# end
# puts "There are now #{Client.count} rows in the Client table"
#
#
# csv_text2 = File.read(Rails.root.join('lib', 'seeds', 'users_seed.csv'))
# csv = CSV.parse(csv_text2, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = User.new
#   t.firstname = row['firstname']
#   t.lastname = row['lastname']
#   t.email = row['email']
#   t.password = row['password']
#   t.save
#   puts "#{t.firstname} #{t.lastname} saved"
# end
# puts "There are now #{User.count} rows in the User table"


# csv_text3 = File.read(Rails.root.join('lib', 'seeds', 'funds_seed.csv'))
# csv = CSV.parse(csv_text3, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Fund.new
#   t.name = row['name']
#   t.risktolerance = row['risktolerance']
#   t.proxyflag = row['proxyflag']
#   t.save
#   puts "#{t.name} saved"
# end
# puts "There are now #{Fund.count} rows in the Fund table"
#
# csv_text4 = File.read(Rails.root.join('lib', 'seeds', 'allocations_seed.csv'))
# csv = CSV.parse(csv_text4, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Allocation.new
#   t.client_id = row['client_id']
#   t.fund_id = row['fund_id']
#   t.percentage = row['percentage']
#   t.save
#   puts "#{t.client_id} #{t.fund_id} saved"
# end
# puts "There are now #{Allocation.count} rows in the Allocation table"
#
#
# csv_text5 = File.read(Rails.root.join('lib', 'seeds', 'historicalperformances_seed.csv'))
# csv = CSV.parse(csv_text5, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Historicalperformance.new
#   t.fund_id = row['fund_id']
#   t.month = row['month']
#   t.performance = row['performance']
#   t.save
#   puts "#{t.fund_id} #{t.month} saved"
# end
# puts "There are now #{Historicalperformance.count} rows in the Historical Performance table"
