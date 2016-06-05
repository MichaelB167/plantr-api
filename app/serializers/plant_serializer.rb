# Plant Serializer
class PlantSerializer < ActiveModel::Serializer
  attributes :id, :category, :harvest, :name, :quantity, :planted_on,
             :expected_harvest, :care_notes, :user, :user_id
end
