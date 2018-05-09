class AddLongLatToPet < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :longitude, :decimal
    add_column :pets, :latitude, :decimal
  end
end
