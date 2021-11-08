class V1::GreetingsController < ApplicationController
  def
    messages = Message.all
    render json: messages
  end
end