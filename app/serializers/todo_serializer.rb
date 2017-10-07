class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :owner, :complete
end