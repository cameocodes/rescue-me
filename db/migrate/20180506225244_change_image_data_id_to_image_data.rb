class ChangeImageDataIdToImageData < ActiveRecord::Migration[5.1]
  def change
    rename_column :profiles, :image_data_id, :image_data
  end
end
