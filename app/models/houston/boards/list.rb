module Houston::Boards
  class List < ActiveRecord::Base
    self.table_name = "boards_lists"

    belongs_to :team
    acts_as_list scope: :project
  end
end
