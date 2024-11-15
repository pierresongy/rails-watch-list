# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

puts "Seeding movies..."

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

20.times do
  Movie.create(title: "#{Faker::Movie.title}", overview:"#{Faker::Lorem.paragraph(sentence_count: 5)}")
end

30.times do
  Movie.create(title: "#{Faker::Movie.title}", overview:"#{Faker::Movie.title} raconte l'histoire de #{Faker::Name.name}, un #{Faker::Job.title} qui se retrouve pris dans une situation inattendue. Avec l'aide de #{Faker::Name.name}, un(e) #{Faker::Job.field} de renom, ils doivent surmonter des obstacles pour atteindre leur objectif. Dans un contexte de #{Faker::Nation.nationality} et de #{Faker::Demographic.marital_status} #{Faker::Job.position}, ils découvrent des secrets enfouis depuis longtemps. Le suspense monte à mesure que les enjeux deviennent de plus en plus élevés, jusqu'à un dénouement captivant. Une aventure où se mêlent #{Faker::Emotion.adjective} et #{Faker::Emotion.adjective}, un voyage inoubliable.")
end

puts "You just successfullt created #{Movie.count} movies!"
puts "Finished!"
