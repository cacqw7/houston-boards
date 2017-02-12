class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :boards_lists do |t|
      t.belongs_to :team, null: false, add_index: true
      t.string :name
    end
  end
end
