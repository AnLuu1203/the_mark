FactoryGirl.define do

  factory :'products/phone', class: Products::Phone do

    name 'iPhone 6S - 32GB'
    description 'bla bla bla'
    price 100

    trait :invalid do
      name ''
      description ''
    end

  end

end
