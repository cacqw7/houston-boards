module Houston::Boards
  class List < ActiveRecord::Base
    self.table_name = "boards_lists"

    belongs_to :team
    has_many :cards
    acts_as_list scope: :team
  end
end
