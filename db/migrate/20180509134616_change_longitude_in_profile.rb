class ChangeLongitudeInProfile < ActiveRecord::Migration[5.1]
  def change
    rename_column :profiles, :latiitude, :latitude
  end
end
