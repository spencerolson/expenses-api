class MemberSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id, :owes, :owed
end
