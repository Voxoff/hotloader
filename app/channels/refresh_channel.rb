class RefreshChannel < ApplicationCable::Channel
  def subscribed
    stream_from "refresh_channel"
    puts "Hotloaded!" 
  end
end
