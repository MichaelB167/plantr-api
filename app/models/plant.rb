# Plant model
class Plant < ActiveRecord::Base
  belongs_to :user, inverse_of: :plants
end
