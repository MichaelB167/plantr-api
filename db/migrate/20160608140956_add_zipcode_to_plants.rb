# Create migration to add zipcodes
class AddZipcodeToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :zipcode, :integer
  end
end
