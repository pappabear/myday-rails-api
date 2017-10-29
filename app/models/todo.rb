class Todo < ApplicationRecord

    # model association
    belongs_to :user

    validates_presence_of :title, :user_id  #, :complete
end
