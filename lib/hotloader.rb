require "hotloader/version"
module Hotloader
  class Engine < ::Rails::Engine
    isolate_namespace Hotloader

    initializer "refresh", before: :load_config_initializers do |app|
      Rails.application.routes.append do
        mount ActionCable.server => '/cable'
      end

      Rails.application.configure do 
          ActionCable.server.config.logger = Logger.new(nil)
      end
      # app.paths.add "config/cable", with: "config/refesh.yml"

      listener = Listen.to("app") do 
        ActionCable.server.broadcast "refresh_channel", {title: "refresh"}
      end
      listener.start
    end    
  end
end


