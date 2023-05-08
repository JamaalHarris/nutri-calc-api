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

  def show
    @favorite = Favorite.find_by(id: params[:id])
    render :show
  end
end
