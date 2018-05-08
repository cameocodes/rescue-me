class AddLongLatToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :longitude, :decimal
    add_column :profiles, :latiitude, :decimal
  end
end
