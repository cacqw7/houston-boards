require "houston/boards/engine"
require "houston/boards/configuration"
require "acts_as_list"

module Houston
  module Boards
    extend self

    def config(&block)
      @configuration ||= Boards::Configuration.new
      @configuration.instance_eval(&block) if block_given?
      @configuration
    end

  end


  # Extension Points
  # ===========================================================================
  #
  # Read more about extending Houston at:
  # https://github.com/houston/houston-core/wiki/Modules


  # Register events that will be raised by this module
  #
  #    register_events {{
  #      "boards:create" => params("boards").desc("Boards was created"),
  #      "boards:update" => params("boards").desc("Boards was updated")
  #    }}

  add_navigation_renderer :boards do
    name "Boards"
    path { Houston::Boards::Engine.routes.url_helpers.all_boards_path }
  end

  # Add a link to feature that can be turned on for projects
  #

end
