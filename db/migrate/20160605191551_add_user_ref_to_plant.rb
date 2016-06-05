# Add user ref to plants
class AddUserRefToPlant < ActiveRecord::Migration
  def change
    add_reference :plants, :user, index: true, foreign_key: true
  end
end
