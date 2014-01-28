FactoryGirl.define do
  factory :public_work do
    annotation { generate :string }
    header { generate :string }
    header_coordinates { generate :string }
    nomination
    title { generate :string }
    user
    text { generate :string }
    video_link { generate :url }
  end
end
