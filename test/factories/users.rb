FactoryGirl.define do
  factory :user do
    district
    first_name { generate :string }
    middle_name { generate :string }
    last_name { generate :string }
    city { generate :string }
    school { generate :string }
    group { generate :string }
    mobile_phone { generate :phone }
    email
    portfolio { generate :file }
    password
  end
end
