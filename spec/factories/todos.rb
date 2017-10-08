FactoryGirl.define do
    factory :todo do
      title { Faker::Lorem.word }
      due_date { Date.today }
      owner { Faker::Lorem.email }
      complete { false }
    end
  end