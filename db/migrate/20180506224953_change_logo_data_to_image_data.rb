class ChangeLogoDataToImageData < ActiveRecord::Migration[5.1]
  def change
    rename_column :profiles, :logo_image_data, :image_data_id
    remove_column :profiles, :profile_image_data
  end
end
