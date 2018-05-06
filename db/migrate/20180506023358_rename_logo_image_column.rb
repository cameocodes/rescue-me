class RenameLogoImageColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :profiles, :logo_image, :logo_image_data
    add_column :profiles, :profile_image_data, :text
  end
end
