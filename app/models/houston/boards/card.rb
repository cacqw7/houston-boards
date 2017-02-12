module Houston::Boards
  class Card < ActiveRecord::Base
    self.table_name = "boards_cards"

    belongs_to :team
    belongs_to :list,  class_name: "Houston::Boards::List"
    acts_as_list
  end
end
