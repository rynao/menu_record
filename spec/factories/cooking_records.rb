FactoryBot.define do
  factory :cooking_record do
    start_time      {Faker::Date}

    association :user
    association :menu
  end
end