require "active_support/concern"

module Houston
  module Boards
    module TeamExt
      extend ActiveSupport::Concern

      included do
        has_many :lists, class_name: "Houston::Boards::List"
        has_many :cards, class_name: "Houston::Boards::Card"
      end
    end
  end
end
