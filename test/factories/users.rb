FactoryGirl.define do
  factory :user do
    first_name { generate :string }
    middle_name { generate :string }
    last_name { generate :string }
    city { generate :string }
    school { generate :string }
    group { generate :string }
    mobile_phone { generate :phone }
    email
    portfolio { generate :file }
    municipality { User.enumerized_attributes[:municipality].values.first }
    password
  end
end
