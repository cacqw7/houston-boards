module Houston::Boards
  class BoardsController < ::ApplicationController
    def index
      @title = "Boards"
      @teams = current_user.teams
      authorize! :read, :teams
    end
  end
end
