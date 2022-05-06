# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

user = User.create! email: 'giridharan@gmail.com', password: 'rails123',
                    password_confirmation: 'rails123'

user.products.create!({
                        name: 'IWatch',
                        description: 'The Apple Watch Series 3 is a sleek accessory that iss a must-have if you are all about staying fit. The watch features an enhanced Heart Rate app, and a built-in altimeter. Also carry and listen to your favourite songs on your wrist. Equipped with Siri, this smartwatch makes being active and staying connected enjoyable.',
                        image: open_asset('iwatch.jpg'),
                        price: 16_900
                      })
user.products.create!({
                        name: 'IPhone',
                        description: 'The iPhone is a smartphone made by Apple that combines a computer, iPod, digital camera and cellular phone into one device with a touchscreen interface.',
                        image: open_asset('iphone.jpg'),
                        price: 44999
                      })
user.products.create!({
                        name: 'Macbook Pro',
                        description: 'Apple MacBook Pro is a macOS laptop with a 13.30-inch display that has a resolution of 2560x1600 pixels. It is powered by a Core i5 processor and it comes with 12GB of RAM. The Apple MacBook Pro packs 512GB of SSD storage.',
                        image: open_asset('macbook-pro.jpg'),
                        price: 127990
                      })
