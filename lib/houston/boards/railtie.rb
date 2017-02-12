require "houston/boards/team_ext"

module Houston
  module Boards
    class Railtie < ::Rails::Railtie

      # The block you pass to this method will run for every request
      # in development mode, but only once in production.
      config.to_prepare do
        ::Team.send(:include, Houston::Boards::TeamExt)
      end

    end
  end
end
