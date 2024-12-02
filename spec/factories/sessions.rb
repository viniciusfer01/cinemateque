FactoryBot.define do
  factory :session do
    movie { nil }
    movie_theater { nil }
    room { nil }
    day { 1 }
    time { "MyString" }
  end
end
