class ThingsController < ApplicationController
  def index
    render json: { things: [
      {
        name: 'some-thing',
        guid: '1'
      }
    ] }.to_json
  end
end
