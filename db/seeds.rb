 require 'faker'
 
 # Create Wikis
 100.times do
   Wiki.create!(
    title: Faker::Lorem.sentence,
     body: Faker::Lorem.paragraph
   )
 end
 
 puts "Seed finished"
 puts "#{Wiki.count} wikis created"

  # Create an admin user
 admin = User.new(
   name:     'Admin User',
   email:    'admin@awesomeness.com',
   password: 'project1',
   role:     'admin'
 )
 admin.skip_confirmation!
 admin.save!
 
 # Create premium
  premium = User.new(
   name:     'Premium User',
   email:    'premium@good.com',
   password: 'gooduser2',
   role:     'Premium'
 )
 premium.skip_confirmation!
 premium.save!
 
 # Create standard
 standard = User.new(
   name:     'Standard User',
   email:    'standard@basic.com',
   password: 'basicuser3'
 )
 standard.skip_confirmation!
 standard.save!