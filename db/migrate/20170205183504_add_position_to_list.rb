class AddPositionToList < ActiveRecord::Migration[5.0]
  def change
    add_column :boards_lists, :position, :integer
  end
end
