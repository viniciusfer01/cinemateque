FactoryBot.define do
  factory :room do
    name { "Sala 01" }
    capacity { 100 }
    movie_theater
  end
end
