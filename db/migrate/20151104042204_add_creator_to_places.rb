class AddCreatorToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :creator, index: true
    add_foreign_key :places, :users, column: :creator_id
  end
end
