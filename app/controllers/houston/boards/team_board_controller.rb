module Houston::Boards
  class TeamBoardController < ::ApplicationController
    def index
      @board = current_user.teams.find(params[:id])
    end
  end
end
