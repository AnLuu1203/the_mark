FactoryGirl.define do

  factory :admin do

    first_name 'first name'
    last_name 'last name'

    after(:build) do |admin|
      admin.user = build(:user, role: admin)
    end

    after(:create) do |admin|
      admin.user.save!
    end

  end

end
