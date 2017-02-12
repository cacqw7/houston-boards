Houston::Boards::Engine.routes.draw do
  scope "boards" do
    get "", to: "boards#index", as: :all_boards
  end

  get "teams/:id/board", to: "team_board#index", as: :team_board
end
