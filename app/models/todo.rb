class Todo < ApplicationRecord
    validates_presence_of :title, :owner  #, :complete
end
