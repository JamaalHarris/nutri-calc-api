class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render :index
  end

  def create
    @favorite = Favorite.create(
      user_id: params[:user_id],
      quantity: params[:quantity],
      favorited_item: params[:favorited_item],
    )
    render :show
  end
end
