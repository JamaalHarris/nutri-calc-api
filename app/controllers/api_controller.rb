class ApiController < ApplicationController
  def index
    quantity = params[:quantity]
    item = params[:item]
    food_info = "#{quantity}%20#{item}"

    if params[:measurement]
      measurement = params[:measurement]
      food_info = "#{quantity}%20#{measurement}%20#{item}"
    end

    response = HTTP.get("https://api.edamam.com/api/nutrition-data?app_id=#{Rails.application.credentials.edamam[:app_id]}&app_key=#{Rails.application.credentials.edamam[:app_key]}&nutrition-type=cooking&ingr=#{food_info}")
    data = JSON.parse(response.body)
    render json: data
  end
end
