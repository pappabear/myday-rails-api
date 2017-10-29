FactoryGirl.define do
    factory :todo do
      title { Faker::Lorem.word }
      complete false 
      due_date { Date.today }
      user_id { User.first.id }
      #association :user, factory: :users
    end
end