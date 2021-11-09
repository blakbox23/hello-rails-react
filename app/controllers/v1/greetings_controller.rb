class V1::GreetingsController < ApplicationController
  def
    greeting = Greeting.all.sample
    render json: {
      greeting: greeting.Message
    }.to_json
    
  end
end