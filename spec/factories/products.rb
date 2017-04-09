FactoryGirl.define do
  factory :product do

    name 'abc'
    description 'adsds'
    price 10.0

    trait :invalid do
      name ''
      description ''
    end

  end
end
