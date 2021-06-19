FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :room
    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

  end
end