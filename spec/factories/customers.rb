FactoryGirl.define do

  factory :customer do

    first_name 'first name'
    last_name 'last name'
    phone '1231231231'
    address 'abcdefghiklm'

    after(:build) do |customer|
      customer.user = build(:user, role: customer)
    end

    after(:create) do |customer|
      customer.user.save!
    end

  end

end
