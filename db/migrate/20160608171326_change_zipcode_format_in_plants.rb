# migration to change zipcode to string
class ChangeZipcodeFormatInPlants < ActiveRecord::Migration
  def up
    change_column :plants, :zipcode, :string
  end

  def down
    change_column :plants, :zipcode, :integer
  end
end
