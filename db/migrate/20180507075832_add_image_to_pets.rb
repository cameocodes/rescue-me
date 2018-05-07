class AddImageToPets < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :image_data, :text
  end
end
