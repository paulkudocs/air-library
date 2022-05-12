# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  User.create(name: Faker::Name.name_with_middle,
              email: Faker::Internet.email,
              password_digest: Faker::Internet.password,
              img_url: Faker::Avatar.image,
              bio: Faker::Lorem.sentence,
              favorite_genre: Faker::Book.genre,
              age: Faker::Number.between(from: 18, to: 100),
              latitude: Faker::Address.latitude,
              longitude: Faker::Address.longitude)
end

200.times do
  Book.create(title: Faker::Book.title,
              author: Faker::Book.author,
              genre: Faker::Book.genre,
              description: Faker::Lorem.sentence,
              isbn: Faker::Number.number(digits: 10),
              publisher: Faker::Book.publisher,
              user: User.find(Random.rand(1..50)))
end

200.times do
  Review.create(title: Faker::Hipster.sentence,
                body: Faker::Hipster.paragraph,
                book: Book.find(Random.rand(1..200)),
                user: User.find(Random.rand(1..50)))
end
