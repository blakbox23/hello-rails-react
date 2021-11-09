class V1::GreetingsController < ApplicationController
  def index
    greeting = Greeting.all.sample
    render json: {
      greeting: greeting.Message
    }.to_json
  end
end
