require 'hotloader/version'
module Hotloader
  class Engine < ::Rails::Engine
    isolate_namespace Hotloader
    if Rails.env.development?
      initializer 'refresh', before: :load_config_initializers do |app|
        Rails.application.routes.append do
          mount ActionCable.server => '/cable'
        end

        Rails.application.configure do
          ActionCable.server.config.logger = Logger.new(nil)
        end

        Hotloader.load_files.each do |file|
          require_relative File.join('../', file)
        end

        app.config.assets.precompile << 'hotloader.js'

        listener = Listen.to('app') do
          ActionCable.server.broadcast 'refresh_channel', { title: "refresh" }
        end
        listener.start
      end
    end
  end
  def self.load_files
    [
      'app/channels/refresh_channel.rb'
    ]
  end
end
