#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :plants, inverse_of: :user, foreign_key: 'user_id'
end
