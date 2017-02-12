class AddPositionToCard < ActiveRecord::Migration[5.0]
  def change
    add_column :boards_cards, :position, :integer
  end
end
