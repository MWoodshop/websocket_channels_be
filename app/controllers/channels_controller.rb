class ChannelsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @channel = Channel.create!(name: SecureRandom.hex)
    render json: { channel_id: @channel.id, channel_name: @channel.name }
  end
end
