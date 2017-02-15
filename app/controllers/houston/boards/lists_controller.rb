module Houston::Boards
  class ListsController < ::ApplicationController
    def index
      @title = "Boards"
      @teams = current_user.teams
      authorize! :read, :teams
    end
  end
end
