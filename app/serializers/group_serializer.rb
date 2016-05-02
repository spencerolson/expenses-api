class GroupSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :members
end
