FactoryGirl.define do
  factory :nomination do
    describe { generate :string }
    title { generate :string }
  end
end
