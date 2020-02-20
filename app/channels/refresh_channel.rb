class RefreshChannel < ApplicationCable::Channel
  def subscribed
    puts 'channel: loaded'
    stream_from "refresh_channel"
    puts "Hotloaded!"
  end
end
