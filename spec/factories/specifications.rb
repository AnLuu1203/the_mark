FactoryGirl.define do
  factory :specification do

    cpu 'bla bla'
    ram '2GB'
    screen 'asdd'
    operating_system 'iOS'
    front_camera '16Mpx'
    back_camera '8Mpx'

    association :product

  end
end
