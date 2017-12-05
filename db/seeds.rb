Movie.destroy_all
Review.destroy_all

release = Random.new


Movie.create!(name: Faker::LeagueOfLegends.masteries, release: release.rand(1960..2017), description: 'USA')
50.times do
  movies = Movie.create!(name: Faker::LeagueOfLegends.masteries, release: release.rand(1960..2017), description: Faker::Address.country)

  4.times do
    movies.reviews.create!(author: Faker::LeagueOfLegends.champion, content_body: Faker::Lorem.sentences(5).join(" "), rating: Faker::Number.between(1,5))
  end
end

puts "Seeded #{Movie.count} reviews"
puts "Seeded #{Review.count} reviews"
