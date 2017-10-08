FactoryGirl.define do
    factory :todo do
      title { Faker::Lorem.word }
      complete { false }
      due_date { Date.today }
      owner { Faker::Internet.email }
    end
  end