FactoryGirl.define do
  factory :user do
    first_name { generate :string }
    middle_name { generate :string }
    last_name { generate :string }
    city { generate :string }
    school { generate :string }
    group { generate :string }
    mobile_phone { generate :string }
    email
    portfolio { generate :string }
  end
end
