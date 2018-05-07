class ChangeRescueBooleanToInt < ActiveRecord::Migration[5.1]
  def change
    change_column :profiles, :rescue, :integer, :using => 'case when rescue then 1 else 0 end'
  end
end
