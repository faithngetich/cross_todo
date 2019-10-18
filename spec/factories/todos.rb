FactoryBot.define do
  factory :todo do
    name { Faker::Movies::Billions.character }
    list_id { nil }
  end
end
