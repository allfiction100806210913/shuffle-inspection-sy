FactoryBot.define do
  factory :library do
    card_type              {'spade'}
    numbers                 {'13'}
    after(:build) do |library|
      library.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end