#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :plants
end
