FactoryBot.define do
  factory :user do
    username { Faker::Movies::HarryPotter.character }
    password { Faker::Book.genre }
  end
end
