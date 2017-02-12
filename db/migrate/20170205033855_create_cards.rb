class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards_cards do |t|
      t.belongs_to :list,  null: false, add_index: true
      t.belongs_to :team, null: false, add_index: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
