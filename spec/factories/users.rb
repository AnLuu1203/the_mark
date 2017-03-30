FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "user#{n}@tone.com" }
    password 'password123'
    password_confirmation 'password123'
  end

  trait :admin do
    role_type 'Admin'
  end

  trait :customer do
    role_type 'Customer'
  end

end
