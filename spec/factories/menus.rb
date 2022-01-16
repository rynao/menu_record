FactoryBot.define do
  factory :menu do
    title      {Faker::Lorem.word}
    recipe_url {Faker::Internet.url}
    memo       {Faker::Lorem.paragraph}

    association :user

    after(:build) do |menu|
      menu.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end